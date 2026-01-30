# AI Training Content Factory

## Project Overview

Create AI training courses for Tesla operations leaders using a multi-agent system.

**Key Rule:** All outputs are Markdown EXCEPT slides which are HTML.

---

## Agent Pipeline

```
┌─────────────────────────────────────────────────────────────────────────┐
│                           WORKFLOW                                       │
├─────────────────────────────────────────────────────────────────────────┤
│                                                                          │
│   Agent 01              GATE 1              Agent 02                     │
│   Curriculum       ───▶ Post-Syllabus  ───▶ Research                    │
│   Architect             Checkpoint          Agent                        │
│   (syllabus.md)                             (research.md)                │
│                                                  │                       │
│                                             GATE 2                       │
│                                             Post-Research                │
│                                                  │                       │
│                                                  ▼                       │
│                                            Agent 03                      │
│                                            Content Writer                │
│                                            (content.md)                  │
│                                                  │                       │
│                                             GATE 3                       │
│                                             Post-Content                 │
│                                                  │                       │
│                                                  ▼                       │
│                                           Agent 03.5                     │
│                                           Diagram Architect              │
│                                           (diagrams/*.excalidraw)        │
│                                                  │                       │
│                                                  ▼                       │
│                                           Agent 03.6                     │
│                                           Diagram Renderer               │
│                                           (images/*.png)                 │
│                                                  │                       │
│                                            GATE 3.5                      │
│                                            Post-Diagrams                 │
│                                                  │                       │
│                         ┌────────────────────────┼────────────────────┐  │
│                         ▼                        ▼                    ▼  │
│                    Agent 04               Agent 05               Agent 06│
│                    Slide Designer         Exercise Designer      Prompt  │
│                    (slides/*.html)        (exercises.md)         Librarian
│                    ⚡ HTML ONLY                                   (prompts.md)
│                         │                        │                    │  │
│                         └────────────────────────┴────────────────────┘  │
│                                                  │                       │
│                                             GATE 4                       │
│                                             Post-Parallel                │
│                                                  │                       │
│                                                  ▼                       │
│                                            Agent 07                      │
│                                            Quality Reviewer              │
│                                            (review.md)                   │
│                                                  │                       │
│                                             GATE 5                       │
│                                             Final Review                 │
│                                                  │                       │
│                                                  ▼                       │
│                                            ✅ RELEASE                    │
│                                                                          │
└─────────────────────────────────────────────────────────────────────────┘
```

---

## Agents Reference

| # | Agent | Input | Output | Format | Claude Tools |
|---|-------|-------|--------|--------|--------------|
| 01 | Curriculum Architect | requirements.md | syllabus.md | Markdown | WebSearch, perplexity_research, Memory |
| 02 | Research Agent | syllabus (week topic) | research.md | Markdown | WebSearch, perplexity_research, perplexity_search |
| 03 | Content Writer | research.md + syllabus | content.md | Markdown | Memory MCP |
| 03.5 | Diagram Architect | content.md | diagrams/*.excalidraw | **Excalidraw JSON** | Memory MCP |
| 03.6 | Diagram Renderer | *.excalidraw + contracts | images/*.png | **PNG** | Gemini (perplexity_reason), Memory |
| 04 | Slide Designer | content.md + images/ | slides/*.html | **HTML** | Playwright |
| 05 | Exercise Designer | content.md + research.md | exercises.md | Markdown | perplexity_reason, Memory |
| 06 | Prompt Librarian | content.md | prompts.md | Markdown | perplexity_reason, Memory |
| 07 | Quality Reviewer | all week files | review.md | Markdown | Playwright, WebSearch, perplexity_search, Memory |

---

## Quality Gates

Quality gates are checkpoints between agents. See `agents/quality-gates.md` for full details.

| Gate | Location | Purpose | Blocking? |
|------|----------|---------|-----------|
| Gate 1 | After Agent 01 | Validate syllabus structure, timing | Yes |
| Gate 2 | After Agent 02 | Verify research sources, facts | Yes |
| Gate 3 | After Agent 03 | Check research citations, speaker notes | Yes |
| Gate 3.5 | After Agents 03.5-03.6 | Validate diagram structure and renders | Yes |
| Gate 4 | After Agents 04-06 | Validate slides, exercises, prompts | Yes |
| Gate 5 | After Agent 07 | Final review before release | Yes |

**If a gate fails:** Return to the relevant agent with specific corrections. Maximum 3 retries.

---

## Workflow Commands

### `create syllabus`
1. Read `inputs/requirements.md`
2. Read `agents/01-curriculum-architect.md`
3. Generate `outputs/syllabus.md`
4. **Check Gate 1** (see quality-gates.md)

### `create week N` (full week with parallel execution)

**Phase 1: Sequential (Research → Content)**
1. Check Gate 1 passed (syllabus exists)
2. Read `agents/02-research-agent.md` → Generate `outputs/week-N/research.md`
3. **Check Gate 2**
4. Read `agents/03-content-writer.md` → Generate `outputs/week-N/content.md`
5. **Check Gate 3**

**Phase 1.5: Visual Layer (Diagrams)**
6. Read `agents/03.5-diagram-architect.md` → Generate `outputs/week-N/diagrams/*.excalidraw`
7. Read `agents/03.6-diagram-renderer.md` → Generate `outputs/week-N/images/*.png`
8. **Check Gate 3.5**

**Phase 2: Parallel Execution**
Run these THREE agents in parallel (single message, multiple tool calls):
- `agents/04-slide-designer.md` → `outputs/week-N/slides/` (can embed images/)
- `agents/05-exercise-designer.md` → `outputs/week-N/exercises.md`
- `agents/06-prompt-librarian.md` → `outputs/week-N/prompts.md`

9. **Check Gate 4** (all three outputs)

**Phase 3: Review**
10. Read `agents/07-quality-reviewer.md` → Generate `outputs/week-N/review.md`
11. **Check Gate 5**

### `research week N`
1. Read `outputs/syllabus.md` for Week N topic
2. Read `agents/02-research-agent.md`
3. Use perplexity_research and WebSearch tools
4. Generate `outputs/week-N/research.md`
5. Verify all facts with perplexity_search

### `create content for week N`
1. Read `outputs/week-N/research.md` (required input!)
2. Read `agents/03-content-writer.md`
3. Query Memory MCP for terminology consistency
4. Generate `outputs/week-N/content.md`

### `create diagrams for week N`
1. Read `outputs/week-N/content.md`
2. Read `agents/03.5-diagram-architect.md`
3. Generate Excalidraw files in `outputs/week-N/diagrams/`
4. Generate `diagram-contracts.json`
5. Read `agents/03.6-diagram-renderer.md`
6. Generate PNG variants in `outputs/week-N/images/`

### `create slides for week N`
1. Read `outputs/week-N/content.md`
2. Read `outputs/week-N/images/` (for diagram embeds)
3. Read `agents/04-slide-designer.md`
4. Generate HTML slides in `outputs/week-N/slides/`
5. Test each slide with Playwright browser_snapshot

### `review week N`
1. Read all files in `outputs/week-N/`
2. Read `agents/07-quality-reviewer.md`
3. Run automated tests (Playwright, perplexity_search, Memory)
4. Generate `outputs/week-N/review.md`

### `create full course`
1. Run `create syllabus`
2. For each week (1-4):
   - Run `create week N`
   - All gates must pass before next week
3. Final cross-week consistency check

---

## Parallel Execution Guide

### What Can Run in Parallel

After diagrams are complete (Gate 3.5 passed):

```
┌─────────────────────────────────────────────────┐
│           PARALLEL EXECUTION PHASE               │
├─────────────────────────────────────────────────┤
│                                                  │
│   Agent 04          Agent 05          Agent 06   │
│   Slides            Exercises         Prompts    │
│   (+ images/)                                    │
│      │                 │                 │       │
│      ▼                 ▼                 ▼       │
│   slides/*.html    exercises.md     prompts.md   │
│                                                  │
│   [All run simultaneously - no dependencies]     │
│                                                  │
└─────────────────────────────────────────────────┘
```

### How to Execute in Parallel

Use a single message with multiple Task tool calls:

```
Task 1: Invoke 04-slide-designer.md → outputs/week-N/slides/
Task 2: Invoke 05-exercise-designer.md → outputs/week-N/exercises.md
Task 3: Invoke 06-prompt-librarian.md → outputs/week-N/prompts.md
```

**Time savings:** ~60% reduction in Phase 2 duration

### What CANNOT Run in Parallel

Sequential dependencies:
- Agent 01 → Agent 02 (needs syllabus)
- Agent 02 → Agent 03 (needs research)
- Agent 03 → Agent 03.5 (needs content for diagram labels)
- Agent 03.5 → Agent 03.6 (needs Excalidraw structure)
- Agents 04/05/06 → Agent 07 (needs all outputs)

### Visual Layer (Sequential)

Agents 03.5 and 03.6 MUST run sequentially:
```
content.md → Agent 03.5 → *.excalidraw → Agent 03.6 → *.png
                 │                            │
                 └── diagram-contracts.json ──┘
                     (locks structure)
```

---

## Output Structure

```
outputs/
├── syllabus.md                 ← Markdown
├── week-1/
│   ├── research.md             ← Markdown (from Agent 02)
│   ├── content.md              ← Markdown (from Agent 03)
│   ├── diagrams/               ← Excalidraw JSON (from Agent 03.5)
│   │   ├── legend.excalidraw
│   │   ├── orchestration.excalidraw
│   │   ├── tool-contracts.excalidraw
│   │   ├── failure-retry.excalidraw
│   │   ├── eval-loop.excalidraw
│   │   └── diagram-contracts.json
│   ├── images/                 ← PNG (from Agent 03.6)
│   │   ├── orchestration--whiteboard.png
│   │   ├── orchestration--minimal.png
│   │   ├── orchestration--thumbnail.png
│   │   └── render-log.md
│   ├── slides/                 ← HTML (from Agent 04)
│   │   ├── slide01.html
│   │   ├── slide02.html
│   │   └── ...
│   ├── exercises.md            ← Markdown (from Agent 05)
│   ├── prompts.md              ← Markdown (from Agent 06)
│   └── review.md               ← Markdown (from Agent 07)
├── week-2/
│   └── [same structure]
├── week-3/
│   └── [same structure]
└── week-4/
    └── [same structure]
```

---

## Slide HTML Specifications

Only Agent 04 (Slide Designer) outputs HTML.

**Slide dimensions:** 960px × 540px (16:9)

**Basic slide template:**
```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Slide NN</title>
  <style>
    * { margin: 0; padding: 0; box-sizing: border-box; }
    body {
      width: 960px;
      height: 540px;
      background: #0a0a0a;
      color: #ffffff;
      font-family: Arial, sans-serif;
      position: relative;
      overflow: hidden;
    }
    .accent-bar {
      position: absolute;
      left: 0; top: 0;
      width: 8px; height: 100%;
      background: #e82127;
    }
  </style>
</head>
<body>
  <div class="accent-bar"></div>
  <!-- Content -->
</body>
</html>
```

**Tesla Colors:**
- Background: `#0a0a0a`
- Cards: `#1a1a1a`, `#2a2a2a`
- Accent (red): `#e82127`
- Text: `#ffffff`, `#a0a0a0`
- Success: `#4ade80`
- Warning: `#facc15`
- Error: `#f87171`

---

## Excalidraw vs Gemini Usage Rules

The visual layer uses two complementary systems. Use the right one for each purpose.

### Use Excalidraw (Canonical) For:
| Use Case | Why |
|----------|-----|
| Complex diagrams | Editable, version-controlled |
| Loops and retries | Precise structure matters |
| Tool contracts | Technical accuracy critical |
| Reference architectures | Learners may need to edit |
| Anything needing future updates | Single source of truth |

### Use Gemini (Rendered) For:
| Use Case | Why |
|----------|-----|
| Section openers | Beautiful, engaging "big picture" |
| Concept reinforcement | Visual variety aids retention |
| Thumbnails / recap slides | Quick recognition |
| Executive-friendly versions | Polished presentation |
| Teaching walk-throughs | Callouts and highlights |

### The Core Principle

```
┌─────────────────────────────────────────────────────┐
│  Excalidraw keeps the LOGIC correct.                │
│  Gemini keeps the TRAINING engaging.                │
│                                                      │
│  Structure (Excalidraw) → Lock → Render (Gemini)    │
│                            ↑                         │
│                    diagram-contracts.json            │
│                    (prevents drift)                  │
└─────────────────────────────────────────────────────┘
```

### Slide Type Selection

| Slide Purpose | Diagram Type | Variant |
|---------------|--------------|---------|
| Reference architecture | Canonical | SVG from Excalidraw |
| Teaching walkthrough | Teaching | `--minimal.png` + callouts |
| Error handling | Failure Mode | `--whiteboard.png` + red overlays |
| Overview/navigation | Thumbnail | `--thumbnail.png` |
| Workshop/exercise | Interactive | `--whiteboard.png` |

---

## API Configuration

### Gemini API (Agent 03.6)

The Diagram Renderer uses Google's Gemini API for styled HTML/SVG generation.

```
Location: .env (DO NOT COMMIT)
Variable: GEMINI_API_KEY
Model: gemini-2.0-flash
Docs: tools/gemini-renderer.md
```

**Rendering Flow:**
```
Excalidraw JSON → Gemini (styled HTML) → Playwright (screenshot) → PNG
```

---

## Context for All Agents

Include this context when running any agent:

```
TARGET AUDIENCE:
- 5 Area General Managers (AGMs) at Tesla distribution centers
- Non-technical background, manage 30-50 associates each
- Sites: Newburgh NY, Greenville SC, Chicago IL, Tampa FL, Scarborough ON

TOOLS BEING TAUGHT:
- Bottle Rocket (go.tesla.com/chat) - Tesla Data OK
- GitHub Copilot - NO Tesla Data

POLICY (CRITICAL):
- ✅ Approved: Bottle Rocket, IT Assist, Employee Assist
- ⚠️ Conditional: GitHub Copilot (no Tesla data)
- ❌ Prohibited: ChatGPT, Claude.ai, meeting transcription, Apple Intelligence

TESLA VALUES:
- Excellence, Ownership, Curiosity, Speed
```

---

## Data Flow Example

**Creating Week 1:**

```
Step 1: Research
  Input:  syllabus.md (Week 1 objectives)
  Agent:  02-research-agent.md
  Tools:  perplexity_research, perplexity_search, WebSearch
  Output: week-1/research.md
  Gate:   Gate 2 (verify sources)

Step 2: Content
  Input:  week-1/research.md + syllabus.md
  Agent:  03-content-writer.md
  Tools:  Memory MCP (consistency)
  Output: week-1/content.md
  Gate:   Gate 3 (verify citations)

Step 3: Visual Layer (Sequential)
  ┌─────────────────────────────────────────────────┐
  │ Step 3a: Diagram Architect (03.5)               │
  │   Input:  content.md                            │
  │   Tools:  Memory MCP (terminology)              │
  │   Output: diagrams/*.excalidraw                 │
  │           diagram-contracts.json                │
  ├─────────────────────────────────────────────────┤
  │ Step 3b: Diagram Renderer (03.6)                │
  │   Input:  *.excalidraw + contracts              │
  │   Tools:  Gemini (perplexity_reason)            │
  │   Output: images/*--whiteboard.png              │
  │           images/*--minimal.png                 │
  │           images/*--thumbnail.png               │
  │           images/render-log.md                  │
  └─────────────────────────────────────────────────┘
  Gate:   Gate 3.5 (verify structure + renders)

Step 4: Parallel Phase
  ┌─────────────────────────────────────────────────┐
  │ Slides (04)    Exercises (05)    Prompts (06)   │
  │ Playwright     perplexity_reason  perplexity_reason
  │ + images/                                       │
  │ slides/*.html  exercises.md       prompts.md    │
  └─────────────────────────────────────────────────┘
  Gate:   Gate 4 (all three pass)

Step 5: Review
  Input:  All week-1 files (including diagrams + images)
  Agent:  07-quality-reviewer.md
  Tools:  Playwright, WebSearch, perplexity_search, Memory
  Output: week-1/review.md
  Gate:   Gate 5 (final approval)
```

---

## Error Handling

If content doesn't meet requirements:
1. Identify which gate failed
2. Return to the relevant agent with specific corrections
3. Re-run only the failing agent (not entire pipeline)
4. Maximum 3 retries before asking user

### Common Failures and Recovery

| Gate | Common Failure | Recovery Action |
|------|----------------|-----------------|
| Gate 1 | Time doesn't sum to 90 min | Re-run Agent 01 with time validation |
| Gate 2 | Unverified statistics | Re-run Agent 02 with perplexity_search |
| Gate 3 | Missing research citations | Re-run Agent 03 with citation requirement |
| Gate 3.5A | Label mismatch with content.md | Re-run Agent 03.5 with Memory MCP check |
| Gate 3.5B | Render adds/removes nodes | Re-run Agent 03.6 with stricter contract |
| Gate 4A | Slide dimensions wrong | Re-run Agent 04, check Playwright |
| Gate 4B | Exercise too difficult | Re-run Agent 05 with difficulty matrix |
| Gate 4C | Prompt missing formula | Re-run Agent 06 with ROLE+CONTEXT+TASK+FORMAT |
| Gate 5 | Policy violation | Identify violating content, fix, re-review |

---

## Progress Reporting

After each step, report:
- ✅ File created: [path]
- 📄 Content summary: [brief description]
- 🚦 Gate status: [PASS/FAIL with details]
- ➡️ Next step: [what's next]
