# Step-by-Step: Claude Code Implementation

## Prerequisites

- Node.js 18+ installed
- Claude Code installed (`npm install -g @anthropic-ai/claude-code`)

---

## Step 1: Setup Project

```bash
# Unzip the project
unzip training-factory.zip
cd training-factory

# Verify structure
ls -la
```

You should see:
```
CLAUDE.md          ← Orchestrator (Claude Code reads this automatically)
README.md
agents/            ← 7 agent prompt files
inputs/            ← Your requirements
outputs/           ← Generated content goes here
theme/             ← CSS for slides
```

---

## Step 2: Start Claude Code

```bash
# MUST be inside the project folder!
cd training-factory
claude
```

Claude Code automatically reads `CLAUDE.md` and understands the project.

---

## Step 3: Create the Syllabus

```
> create syllabus
```

**What happens:**
- Claude reads `inputs/requirements.md`
- Claude reads `agents/01-curriculum-architect.md`
- Claude generates `outputs/syllabus.md`

**Review it:**
```bash
cat outputs/syllabus.md
```

---

## Step 4: Create Week 1 (Full Pipeline)

```
> create week 1
```

**What happens (in order):**

1. **Research Agent** → `outputs/week-1/research.md`
2. **Content Writer** → `outputs/week-1/content.md`
3. **Slide Designer** → `outputs/week-1/slides/*.html`
4. **Exercise Designer** → `outputs/week-1/exercises.md`
5. **Prompt Librarian** → `outputs/week-1/prompts.md`

---

## Step 5: Review the Output

```bash
# Check what was created
ls outputs/week-1/

# View slides in browser
open outputs/week-1/slides/slide01.html
```

---

## Step 6: Quality Review

```
> review week 1
```

Creates `outputs/week-1/review.md` with issues and recommendations.

---

## Step 7: Repeat for Weeks 2-4

```
> create week 2
> create week 3
> create week 4
```

---

## Individual Agent Commands

```
> research week 2              # Just research
> create content for week 2    # Just content (needs research first!)
> create slides for week 2     # Just slides (needs content first!)
> create exercises for week 2  # Just exercises
```

---

## Output Format Summary

| File | Format |
|------|--------|
| syllabus.md | Markdown |
| research.md | Markdown |
| content.md | Markdown |
| **slides/*.html** | **HTML** |
| exercises.md | Markdown |
| prompts.md | Markdown |
| review.md | Markdown |

---

## Workflow Diagram

```
requirements.md
      │
      ▼
01 Curriculum Architect ──▶ syllabus.md
      │
      ▼ (per week)
02 Research Agent ──▶ research.md
      │
      ▼
03 Content Writer ──▶ content.md
      │
      ├──────────────┬──────────────┐
      ▼              ▼              ▼
04 Slides      05 Exercises   06 Prompts
(HTML)         (Markdown)     (Markdown)
      │              │              │
      └──────────────┴──────────────┘
                     │
                     ▼
            07 Quality Reviewer ──▶ review.md
```
