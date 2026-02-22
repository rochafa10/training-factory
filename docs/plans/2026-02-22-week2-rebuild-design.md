# Week 2 Rebuild Design: Hands-On VS Code + Agents

**Date:** 2026-02-22
**Status:** Approved
**Goal:** Regenerate Week 2 with improved visuals (new pipeline) and expanded VS Code hands-on content

---

## What Stays

- 240-min agenda structure from syllabus (81% hands-on)
- 7 learning objectives (advanced prompts, agents, VS Code, Copilot, MCP, debugging)
- Topic flow: Advanced Prompts -> Agents Concept -> VS Code Setup -> Copilot Modes -> Agent Mode -> MCP Skills -> Build a Tool -> Debug an Agent
- Exercise-heavy approach: brief concept (5 min) then jump to exercise

## What Changes

### 1. Content.md Expansion

Add detailed step-by-step sections for:
- **VS Code installation** (Windows): download, install, first launch
- **Copilot extension**: install from marketplace, sign in with GitHub account
- **Policy reminder slide**: NO Tesla Data in Copilot (with visual callout)
- **Agent Mode walkthrough**: exact prompts AGMs type, what they see at each step
- **MCP skill installation**: Playwright as first skill, before/after comparison
- **Exercise instructions**: exact text to type, expected output, what to look for

### 2. Slide Deck Rebuild

**Baseline:** Regenerate existing 57 slides from slides-old with new visual pipeline
**Additions:** New slides for VS Code hands-on detail (likely ~70+ total)

Slide types needed:
- **Title/divider slides** -> Canva MCP (Tesla Brand Kit)
- **Concept diagrams** (agents vs prompts, MCP architecture, plan-execute-iterate loop) -> nano-banana
- **Data charts** (time savings, adoption metrics, skill progression) -> AntV Chart
- **Content/exercise slides** (step-by-step instructions, exercise prompts) -> HTML + Playwright
- **Screenshot slides** (VS Code UI, Copilot interface) -> Playwright captures

### 3. New Diagrams Needed

| Diagram | Type | Tool |
|---------|------|------|
| Prompts vs Agents comparison | Infographic | nano-banana |
| Plan-Execute-Iterate loop | Process flow | nano-banana |
| MCP architecture (agent + skills) | Architecture | nano-banana |
| Copilot 3 modes (Chat/Edit/Agent) | Comparison | nano-banana |
| Before/after MCP skill | Side-by-side | nano-banana |
| Time savings by exercise | Bar chart | AntV |
| Skill progression Week 1 -> Week 2 | Radar chart | AntV |

### 4. Visual Pipeline Assignment

| Output Type | Tool | Notes |
|-------------|------|-------|
| All diagrams | Gemini nano-banana | Single API call, accurate labels |
| Data charts | AntV Chart MCP | Dark theme, Tesla palette |
| Content slides | HTML template + Playwright | Exact text, 960x540 |
| Title/divider slides | Canva MCP | Tesla Brand Kit |
| VS Code screenshots | Playwright capture | Live UI screenshots |

## Execution Order

1. **Update content.md** - Add VS Code hands-on detail, exercise instructions
2. **Agent 04** - Design new diagrams (Excalidraw structure + contracts)
3. **Agent 05** - Render diagrams (nano-banana) + charts (AntV)
4. **Agent 06** - Create slide plan for ~70+ slides
5. **Agent 07** - Render all slides (HTML + Canva + embed diagrams/charts)
6. **Agent 08** - Update exercises with step-by-step VS Code instructions
7. **Agent 10** - Quality review

## Success Criteria

- All slides render at 960x540 with Tesla dark theme
- VS Code setup has step-by-step slides a non-technical AGM can follow
- Every exercise has a clear "DO THIS" instruction slide
- Diagrams use nano-banana (no code gen), charts use AntV
- ~70+ slides covering the full 240-min session
- 81%+ hands-on ratio maintained
