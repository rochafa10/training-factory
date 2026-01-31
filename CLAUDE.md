# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Multi-agent content factory that generates AI training courses for Tesla operations leaders. Each agent is a prompt file in `agents/` that Claude Code reads and executes. There is no build system, no package manager, and no tests to run — the entire project runs through Claude Code natural-language commands.

**Key rule:** All outputs are Markdown EXCEPT slides, which are HTML.

## Commands

These are natural-language commands typed directly into Claude Code:

| Command | What It Does |
|---------|--------------|
| `create syllabus` | Read `inputs/requirements.md` + `agents/01-curriculum-architect.md` → generate `outputs/syllabus.md` → check Gate 1 |
| `create week N` | Run the full pipeline for week N (research → content → diagrams → slides/exercises/prompts in parallel → review) |
| `research week N` | Run Agent 02 only → `outputs/week-N/research.md` |
| `create content for week N` | Run Agent 03 only (requires research.md to exist) → `outputs/week-N/content.md` |
| `create diagrams for week N` | Run Agents 03.5 + 03.6 sequentially → `outputs/week-N/diagrams/` + `outputs/week-N/images/` |
| `create slides for week N` | Run Agent 04 only → `outputs/week-N/slides/*.html` |
| `review week N` | Run Agent 07 → `outputs/week-N/review.md` |
| `create full course` | Run `create syllabus` then `create week N` for weeks 1-4 sequentially |

## Architecture

### Agent Pipeline

```
01 Curriculum Architect → [Gate 1] → 02 Research Agent → [Gate 2]
→ 03 Content Writer → [Gate 3] → 03.5 Diagram Architect → 03.6 Diagram Renderer
→ [Gate 3.5] → 04 Slides ‖ 05 Exercises ‖ 06 Prompts (parallel) → [Gate 4]
→ 07 Quality Reviewer → [Gate 5] → RELEASE
```

Each agent has a dedicated prompt file: `agents/NN-agent-name.md`. Read the relevant agent file before executing that step. Agent files contain the complete instructions, input/output specs, and self-check criteria.

### Sequential vs Parallel

**Must be sequential** (each depends on the previous output):
- 01 → 02 → 03 → 03.5 → 03.6

**Run in parallel** (use a single message with multiple Task tool calls after Gate 3.5 passes):
- Agent 04 (slides), Agent 05 (exercises), Agent 06 (prompts)

**Must wait for parallel phase:**
- Agent 07 (needs all outputs from 04/05/06)

### Visual Layer

The diagram system uses two complementary tools:
- **Excalidraw** (Agent 03.5): Canonical structure — produces `*.excalidraw` JSON + `diagram-contracts.json` that locks node/edge structure
- **Gemini API** (Agent 03.6): Renders styled PNGs in 3 variants (`--whiteboard`, `--minimal`, `--thumbnail`) constrained by the contracts

The contract file prevents structural drift between the canonical diagram and rendered outputs. Gemini API config is in `.env` (key: `GEMINI_API_KEY`, model: `gemini-2.0-flash`). See `tools/gemini-renderer.md` for the rendering protocol.

### Quality Gates

Five blocking checkpoints between agents. Full validation criteria are in `agents/quality-gates.md`. Key behaviors:
- All gates are blocking — do not proceed until the gate passes
- On failure, re-run only the failing agent with specific corrections
- Maximum 3 retries per gate before asking the user
- After each step, report: file created, content summary, gate status (PASS/FAIL), next step

## Slide Specifications

Slides are the only HTML output. Each slide is a standalone HTML file at 960x540px (16:9).

**Tesla color palette:** background `#0a0a0a`, cards `#1a1a1a`/`#2a2a2a`, accent red `#e82127`, text `#ffffff`/`#a0a0a0`, success `#4ade80`, warning `#facc15`, error `#f87171`

The base template (accent bar + dark background) is in the existing CLAUDE.md history and in `agents/04-slide-designer.md`. Use Playwright (`browser_navigate` + `browser_snapshot`) to validate each slide visually.

## Target Audience Context

Include this context when running any agent:

- **Who:** 5 Area General Managers (AGMs) at Tesla distribution centers, non-technical, managing 30-50 associates each
- **Sites:** Newburgh NY, Greenville SC, Chicago IL, Tampa FL, Scarborough ON
- **Tools taught:** Bottle Rocket (go.tesla.com/chat — Tesla data OK), GitHub Copilot (NO Tesla data)
- **Policy:** Approved: Bottle Rocket, IT Assist, Employee Assist. Conditional: GitHub Copilot (no Tesla data). Prohibited: ChatGPT, Claude.ai, meeting transcription, Apple Intelligence
- **Tesla values:** Excellence, Ownership, Curiosity, Speed

## MCP Tools by Agent

| Agent | Tools |
|-------|-------|
| 01 Curriculum Architect | WebSearch, perplexity_research, Memory MCP |
| 02 Research Agent | perplexity_research (primary), perplexity_search (verification), WebSearch |
| 03 Content Writer | Memory MCP (terminology consistency) |
| 03.5 Diagram Architect | Memory MCP (label verification) |
| 03.6 Diagram Renderer | Gemini API via perplexity_reason, Playwright (screenshots), Memory MCP |
| 04 Slide Designer | Playwright (browser_navigate, browser_snapshot, browser_take_screenshot) |
| 05 Exercise Designer | perplexity_reason (validation), Memory MCP (skill tracking) |
| 06 Prompt Librarian | perplexity_reason (test effectiveness, min 7/10), Memory MCP (deduplication) |
| 07 Quality Reviewer | Playwright, WebSearch, perplexity_search, Memory MCP |

## Error Recovery

| Gate | Common Failure | Fix |
|------|----------------|-----|
| Gate 1 | Time doesn't sum to 90 min | Re-run Agent 01 with time validation |
| Gate 2 | Unverified statistics | Re-run Agent 02 with perplexity_search |
| Gate 3 | Missing research citations | Re-run Agent 03 with citation requirement |
| Gate 3.5 | Label mismatch or structural drift | Re-run 03.5 (Memory check) or 03.6 (stricter contract) |
| Gate 4 | Slide dimensions / exercise difficulty / prompt formula | Re-run the specific failing agent (04, 05, or 06) |
| Gate 5 | Policy violation | Identify violating content, fix, re-review |
