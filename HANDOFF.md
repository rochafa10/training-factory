# Session Handoff — January 31, 2026

## What Was Done This Session

### 1. Initial Setup
- Initialized git repo, created private GitHub repo `rochafa10/training-factory`, pushed all files
- Ran `/init` to rewrite CLAUDE.md from 508 lines to concise operational guidance

### 2. Pipeline Redesign (Complete)
- Renumbered all agents sequentially (eliminated 03.5/03.6 decimals)
- Split old Agent 04 (Slide Designer) into:
  - **Agent 06: Slide Planner** — content.md → slide-plan.md (structured markdown)
  - **Agent 07: Slide Renderer** — slide-plan.md → slides/*.html (Playwright-validated)
- New pipeline: 01 → 02 → 03 → 04 → 05 → [Gate 4] → (06→07) ‖ 08 ‖ 09 → [Gate 5] → 10 → [Gate 6]
- Updated all cross-references across 13+ files, verified zero stale refs

### 3. Course Expansion to 4 Hours (Complete)
- Updated `inputs/requirements.md`: 240 min/week, 11 learning goals
- Updated `agents/01-curriculum-architect.md`: removed hardcoded 90-min refs
- Regenerated `outputs/syllabus.md`: 744-line comprehensive syllabus
- Added `update week N` command to CLAUDE.md with change impact map

### 4. New Topics Added to Curriculum
- **Agent Skills (MCP tools)** — Week 3 intro, Week 4 deep dive
- **Project Memory** — instruction files + Memory MCP in Week 4
- **Data Analysis with AI** — CSV/spreadsheet analysis in Week 2
- **Git Basics** — reviewing AI changes in Week 3
- **Security Review** — checking AI-generated code in Week 4
- **Quality Checking AI Outputs** — hallucination detection in Week 1

---

## What Needs to Be Done Next

### IMMEDIATE: Redesign Week 1 as Problem-First

The current Week 1 content (`outputs/week-1/content.md`) is based on the OLD 120-min syllabus.
It needs to be regenerated for the NEW 240-min, problem-first approach.

**Key decisions made:**
- Bottle Rocket = full Claude Desktop equivalent (file upload, artifacts, agents, everything)
- Week 1 should be problem-first, not concept-first
- Hand AGMs an Excel workbook + problem statement, let them solve with Bottle Rocket
- Excel dataset: headcount/labor data + throughput/KPI data (mixed)
- Problem statement: something like a "Dive Deep" analysis for a VP

**Pending inputs needed:**
1. **Tesla AI Policy document** — user will upload on Tesla laptop to avoid data leakage
2. **Excel dataset** — needs to be created with realistic DC operations data:
   - Sheet 1: Labor (headcount by shift, overtime, forecast vs actual, cost per unit)
   - Sheet 2: Throughput (units processed by day/shift, cycle times, error rates, on-time %)
   - 4-6 weeks of data with buried anomalies (overtime spike, throughput drop, underperforming shift)
3. **Problem statement** — e.g., "Site throughput dropped 12% while overtime increased 18%. What happened?"

**Proposed Week 1 flow:**
1. Brief policy orientation (need the actual policy doc first)
2. Hand them Excel + problem statement
3. Let them explore with Bottle Rocket
4. Debrief: what worked, what didn't — teach concepts through experience
5. Second problem, harder — apply what they learned
6. Show Bottle Rocket's agent capabilities for multi-step analysis

### THEN: Regenerate All 4 Weeks

After Week 1 is redesigned, all weeks need fresh content:
```
For each week (1-4):
  1. research week N    → outputs/week-N/research.md
  2. create content     → outputs/week-N/content.md
  3. create diagrams    → outputs/week-N/diagrams/ + images/
  4. create slides      → outputs/week-N/slides/slide-plan.md + slides/*.html
  5. create exercises   → outputs/week-N/exercises.md
  6. create prompts     → outputs/week-N/prompts.md
  7. review week N      → outputs/week-N/review.md
```

### Cleanup

- `COURSE_SYLLABUS.md` (root) is STALE — old 90-min version. Delete it or replace with redirect to `outputs/syllabus.md`
- Existing `outputs/week-*/content.md` files are based on OLD 120-min syllabus — will be overwritten during regeneration
- Existing slides were created before the 06/07 split — no `slide-plan.md` files exist yet

---

## File Status

| File | Status | Notes |
|------|--------|-------|
| `inputs/requirements.md` | UPDATED | 240 min, 11 goals, detailed sections |
| `outputs/syllabus.md` | UPDATED | New 744-line 4-hour syllabus |
| `CLAUDE.md` | UPDATED | Session length, update command |
| `agents/01-curriculum-architect.md` | UPDATED | No more hardcoded 90-min |
| `agents/02-10 + quality-gates.md` | CURRENT | From pipeline redesign |
| `COURSE_SYLLABUS.md` | STALE | Old 90-min version, should delete |
| `outputs/week-*/content.md` | STALE | Based on old 120-min syllabus |
| `outputs/week-*/slides/*.html` | STALE | Pre-split, no slide-plan.md |
| `outputs/week-*/research.md` | STALE | Needs fresh research for new topics |
| `outputs/week-*/exercises.md` | STALE | Based on old content |
| `outputs/week-*/prompts.md` | STALE | Based on old content |

---

## Key Context

- **Repo:** github.com/rochafa10/training-factory (private)
- **Target:** 5 Tesla AGMs, zero AI knowledge → advanced agentic coding
- **Tools:** Bottle Rocket (Tesla data OK, Claude Desktop equivalent) + GitHub Copilot (no Tesla data, has Opus 4.5)
- **Session length:** 4 hours/week × 4 weeks = 16 hours total
- **Approach:** Problem-first learning, not concept-first
