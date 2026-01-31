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
| `create diagrams for week N` | Run Agents 04 + 05 sequentially → `outputs/week-N/diagrams/` + `outputs/week-N/images/` |
| `create slides for week N` | Run Agent 06 (plan) then Agent 07 (render) → `outputs/week-N/slides/slide-plan.md` + `slides/*.html` |
| `review week N` | Run Agent 10 → `outputs/week-N/review.md` |
| `create full course` | Run `create syllabus` then `create week N` for weeks 1-4 sequentially |

## Architecture

### Agent Pipeline (10 agents, 6 gates)

```
01 Curriculum Architect → [Gate 1] → 02 Research Agent → [Gate 2]
→ 03 Content Writer → [Gate 3] → 04 Diagram Architect → 05 Diagram Renderer
→ [Gate 4] → (06 Slide Planner → 07 Slide Renderer) ‖ 08 Exercises ‖ 09 Prompts (parallel)
→ [Gate 5] → 10 Quality Reviewer → [Gate 6] → RELEASE
```

Each agent has a dedicated prompt file: `agents/NN-agent-name.md`. Read the relevant agent file before executing that step. Agent files contain the complete instructions, input/output specs, and self-check criteria.

### Sequential vs Parallel

**Must be sequential** (each depends on the previous output):
- 01 → 02 → 03 → 04 → 05

**Run in parallel** (use a single message with multiple Task tool calls after Gate 4 passes):
- Agents 06 → 07 (slides, sequential within their track), Agent 08 (exercises), Agent 09 (prompts)

**Must wait for parallel phase:**
- Agent 10 (needs all outputs from 07/08/09)

### Slide Pipeline (Two-Phase)

Slides use a plan-then-render approach (like diagrams use 04 → 05):
- **Agent 06 (Slide Planner):** content.md → `slide-plan.md` (structured markdown defining each slide's type, content, and diagram references)
- **Agent 07 (Slide Renderer):** slide-plan.md → `slides/*.html` (Tesla-themed HTML, Playwright-validated)

This separates content decisions from HTML rendering. The plan can be reviewed before investing in rendering.

### Visual Layer

The diagram system uses two complementary tools:
- **Excalidraw** (Agent 04): Canonical structure — produces `*.excalidraw` JSON + `diagram-contracts.json` that locks node/edge structure
- **Gemini API** (Agent 05): Renders styled PNGs in 3 variants (`--whiteboard`, `--minimal`, `--thumbnail`) constrained by the contracts

The contract file prevents structural drift between the canonical diagram and rendered outputs. Gemini API config is in `.env` (key: `GEMINI_API_KEY`, model: `gemini-2.0-flash`). See `tools/gemini-renderer.md` for the rendering protocol.

### Quality Gates

Six blocking checkpoints between agents. Full validation criteria are in `agents/quality-gates.md`. Key behaviors:
- All gates are blocking — do not proceed until the gate passes
- On failure, re-run only the failing agent with specific corrections
- Maximum 3 retries per gate before asking the user
- After each step, report: file created, content summary, gate status (PASS/FAIL), next step

## Slide Specifications

Slides are the only HTML output. Each slide is a standalone HTML file at 960x540px (16:9).

**Tesla color palette:** background `#0a0a0a`, cards `#1a1a1a`/`#2a2a2a`, accent red `#e82127`, text `#ffffff`/`#a0a0a0`, success `#4ade80`, warning `#facc15`, error `#f87171`

The base template and all slide type HTML templates are in `agents/07-slide-renderer.md`. Use Playwright (`browser_navigate` + `browser_snapshot`) to validate each slide visually.

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
| 04 Diagram Architect | Memory MCP (label verification) |
| 05 Diagram Renderer | Gemini API via perplexity_reason, Playwright (screenshots), Memory MCP |
| 06 Slide Planner | Memory MCP (optional, cross-week consistency) |
| 07 Slide Renderer | Playwright (browser_navigate, browser_snapshot, browser_take_screenshot) |
| 08 Exercise Designer | perplexity_reason (validation), Memory MCP (skill tracking) |
| 09 Prompt Librarian | perplexity_reason (test effectiveness, min 7/10), Memory MCP (deduplication) |
| 10 Quality Reviewer | Playwright, WebSearch, perplexity_search, Memory MCP |

## Error Recovery

| Gate | Common Failure | Fix |
|------|----------------|-----|
| Gate 1 | Time doesn't sum to 90 min | Re-run Agent 01 with time validation |
| Gate 2 | Unverified statistics | Re-run Agent 02 with perplexity_search |
| Gate 3 | Missing research citations | Re-run Agent 03 with citation requirement |
| Gate 4 | Label mismatch or structural drift | Re-run Agent 04 (Memory check) or Agent 05 (stricter contract) |
| Gate 5 | Slide plan gaps / dimensions / exercise difficulty / prompt formula | Re-run the specific failing agent (06, 07, 08, or 09) |
| Gate 6 | Policy violation | Identify violating content, fix, re-review |
