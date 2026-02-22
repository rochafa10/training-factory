# Week 2 Rebuild Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Regenerate Week 2 with hands-on VS Code/Copilot/Agent/MCP content and improved visuals via the tested nano-banana + AntV + HTML+Playwright pipeline.

**Architecture:** Update content.md to match the current syllabus (which already has VS Code, agents, MCP), then run the full agent pipeline: Agent 04 (diagrams) -> Agent 05 (render) -> Agent 06 (slide plan) -> Agent 07 (slide render) -> Agent 08 (exercises) -> Agent 10 (review). Use the Change Impact Map: content changed -> re-run 04 -> 05 -> 06 -> 07, 08 -> 10.

**Key Context:** The old 57 slides are entirely about advanced prompting. The current syllabus has VS Code + agents + MCP. The slides need to be rebuilt from scratch to match the syllabus.

---

## Task 1: Update content.md with VS Code hands-on detail

**Files:**
- Modify: `outputs/week-2/content.md`
- Reference: `outputs/syllabus.md` (lines 192-270 for Week 2 agenda)
- Reference: `outputs/week-2/research.md` (for agentic AI research)

**What to do:**
1. Read the full current `content.md` to understand existing sections
2. Restructure to match the 14-section syllabus agenda (currently content may not align)
3. Add new sections with hands-on detail for:
   - **Section 5: What Is an AI Agent?** (Chat vs Agent comparison, plan-execute-iterate loop)
   - **Section 6: VS Code + Copilot Setup** (step-by-step: download VS Code, install Copilot extension, GitHub sign-in, verify working, policy reminder)
   - **Section 7: Copilot Modes** (Chat = ask questions, Edit = targeted file changes, Agent = autonomous multi-step)
   - **Section 8: First Agent Mode Task** (exact prompt to type, what to expect, how to approve steps)
   - **Section 9: MCP Tools** (what is MCP, like installing apps, types of skills)
   - **Section 10: Install First MCP Skill** (Playwright MCP install steps, before/after demo)
   - **Section 11: Reading Agent Plans & Git Basics** (what a diff looks like, accept/reject)
   - **Section 12: Agent Builds a Real Tool** (agent creates HTML dashboard, multi-step workflow)
   - **Section 13: Debug & Redirect an Agent** (vague instruction, watch failure, redirect technique)
4. Keep Sections 1-4 (homework review, advanced prompts, exercises 1-2) but compress — they get 45 min total
5. Each exercise section should include: exact prompt text, expected output, what to look for, common pitfalls

**Verify:** Content covers all 14 agenda sections. Every exercise has a "TYPE THIS" instruction.

**Commit:** `git commit -m "Expand Week 2 content with VS Code, Copilot, agents, and MCP hands-on detail"`

---

## Task 2: Run Agent 04 — Design new diagrams

**Files:**
- Read: `agents/04-diagram-architect.md`
- Read: `outputs/week-2/content.md` (updated from Task 1)
- Create: `outputs/week-2/diagrams/diagram-contracts.json`
- Create: `outputs/week-2/diagrams/*.excalidraw` (canonical structures)

**What to do:**
1. Read Agent 04 prompt file
2. Identify diagrams needed from the updated content (at minimum):
   - `prompts-vs-agents` — side-by-side comparison (one-shot vs plan-execute-iterate)
   - `plan-execute-iterate` — cyclical flow diagram
   - `mcp-architecture` — agent + skills + tools architecture
   - `copilot-three-modes` — Chat / Edit / Agent comparison
   - `agent-with-without-mcp` — before/after skill install
   - `agent-workflow` — full workflow: user -> agent -> plan -> execute -> review
3. Create Excalidraw structures for each using Excalidraw MCP `create_view`
4. Lock all structures into `diagram-contracts.json`

**Verify:** Each diagram has a contract entry. All labels locked. No structural ambiguity.

**Commit:** `git commit -m "Add Week 2 diagram structures for agents, MCP, and Copilot"`

---

## Task 3: Run Agent 05 — Render diagrams + charts

**Files:**
- Read: `agents/05-diagram-renderer.md`
- Read: `outputs/week-2/diagrams/diagram-contracts.json`
- Create: `outputs/week-2/images/*--slide-embed.png` (nano-banana renders)
- Create: `outputs/week-2/images/*--chart.png` (AntV charts)
- Create: `outputs/week-2/images/render-log.md`

**What to do:**
1. Read Agent 05 prompt file
2. For each diagram in contracts, render via nano-banana:
   - Style: slide-embed (primary — 880x420, dark Tesla theme)
   - Use curl API with `nano-banana-pro-preview`
   - Validate labels against contract
3. Generate AntV charts:
   - `time-savings--chart.png` — bar chart of time savings by task category
   - `skill-progression--chart.png` — radar chart of Week 1 vs Week 2 skills
   - Use `theme: "dark"`, Tesla palette, 880x420
   - Download hosted URLs
4. Log all renders in `render-log.md`

**Verify:** All diagram PNGs exist. All chart PNGs downloaded. Labels match contracts.

**Commit:** `git commit -m "Render Week 2 diagrams (nano-banana) and charts (AntV)"`

---

## Task 4: Run Agent 06 — Create slide plan

**Files:**
- Read: `agents/06-slide-planner.md` (if exists, otherwise use CLAUDE.md instructions)
- Read: `outputs/week-2/content.md` (updated)
- Read: `outputs/syllabus.md` (Week 2 agenda)
- Create: `outputs/week-2/slides/slide-plan.md`

**What to do:**
1. Create a slide plan that maps 1:1 to the 14-section agenda
2. Each section gets:
   - A divider slide (Canva)
   - 2-5 content slides depending on section depth
   - Exercise slides with clear "DO THIS" format
3. Target ~70-80 slides total:
   - Sections 1-4 (prompts): ~15 slides (compressed from old 57)
   - Section 5 (agents concept): ~5 slides
   - Section 6 (VS Code setup): ~8 slides (step-by-step screenshots)
   - Section 7 (Copilot modes): ~4 slides
   - Section 8 (Agent Mode exercise): ~5 slides
   - Section 9 (MCP concept): ~5 slides
   - Section 10 (MCP exercise): ~5 slides
   - Section 11 (git basics): ~4 slides
   - Section 12 (build tool exercise): ~5 slides
   - Section 13 (debug exercise): ~5 slides
   - Section 14 (takeaways + homework): ~5 slides
   - Title + agenda + breaks: ~5 slides
4. Each slide entry specifies: type (title/content/exercise/chart/diagram/screenshot), content source, diagram reference if applicable

**Verify:** Slide plan covers all 14 sections. Total time adds to 240 min. Every exercise has instruction slides.

**Commit:** `git commit -m "Create Week 2 slide plan (~75 slides, VS Code hands-on focus)"`

---

## Task 5: Run Agent 07 — Render all slides

**Files:**
- Read: `agents/07-slide-renderer.md`
- Read: `outputs/week-2/slides/slide-plan.md`
- Create: `outputs/week-2/slides/slide01.html` through `slideNN.html`

**What to do:**
1. Read Agent 07 prompt file for HTML templates
2. For each slide in the plan:
   - **Title/divider slides** -> Canva MCP with Tesla Brand Kit (`kAHCAMOlP3I`)
   - **Content slides** -> HTML template at 960x540, Tesla dark theme
   - **Exercise slides** -> HTML with clear "DO THIS" callout box
   - **Diagram slides** -> Embed `<img>` from Agent 05 outputs
   - **Chart slides** -> Embed `<img>` from AntV outputs
3. Validate each slide with Playwright (serve over HTTP, screenshot, check dimensions)
4. This is the longest task — may need to be broken into batches

**Verify:** All slides render at 960x540. No broken images. Tesla theme consistent. Playwright validation passes.

**Commit:** `git commit -m "Render Week 2 slides (~75 HTML files, Tesla dark theme)"`

---

## Task 6: Run Agent 08 — Update exercises

**Files:**
- Read: `agents/08-exercise-designer.md` (if exists)
- Read: `outputs/week-2/content.md`
- Modify: `outputs/week-2/exercises.md`

**What to do:**
1. Update exercises to include step-by-step VS Code instructions
2. Each exercise needs:
   - Exact text/prompt to type
   - Expected outcome
   - "If you see this, do that" troubleshooting
   - Time limit
3. Exercises 1-2: Keep (advanced prompts in Bottle Rocket)
4. Exercises 3-7: New/expanded (VS Code setup, Agent Mode, MCP, build tool, debug)

**Verify:** 7 exercises total. Each has exact instructions. Time estimates sum correctly.

**Commit:** `git commit -m "Update Week 2 exercises with VS Code hands-on instructions"`

---

## Task 7: Run Agent 10 — Quality review

**Files:**
- Read: `agents/10-quality-reviewer.md`
- Read: All Week 2 outputs
- Create: `outputs/week-2/review.md`

**What to do:**
1. Run quality review against Gate 5 and Gate 6 criteria
2. Check: slide count matches plan, all images render, exercises complete, policy compliance
3. Spot-check 5-10 slides with Playwright for visual quality
4. Verify no Tesla data leaks into Copilot exercise instructions

**Verify:** Review passes. Any issues identified and fixed.

**Commit:** `git commit -m "Complete Week 2 quality review"`

---

## Execution Notes

- Tasks 1-3 are sequential (content -> diagrams -> render)
- Tasks 4-5 are sequential (plan -> render slides)
- Task 6 can run in parallel with Tasks 4-5
- Task 7 must wait for all others
- Each task is a natural-language agent run, not code — follow the agent prompt files
- Use `update week 2` workflow from CLAUDE.md since we're editing existing content
