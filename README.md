# Training Content Factory

A multi-agent system for creating AI training content. Designed for Claude Code.

## Quick Start

```bash
# 1. Navigate to project folder
cd training-factory

# 2. Start Claude Code
claude

# 3. Create the course
> create syllabus
> create week 1
> create week 2
> create week 3
> create week 4
```

---

## Agent Pipeline

```
Curriculum Architect → Research Agent → Content Writer
                                              ↓
                           ┌──────────────────┼──────────────────┐
                           ↓                  ↓                  ↓
                    Slide Designer    Exercise Designer   Prompt Librarian
                     (HTML only)        (Markdown)         (Markdown)
                           ↓                  ↓                  ↓
                           └──────────────────┴──────────────────┘
                                              ↓
                                     Quality Reviewer
```

---

## Agents

| # | Agent | What It Does | Output Format |
|---|-------|--------------|---------------|
| 01 | Curriculum Architect | Course structure & objectives | Markdown |
| 02 | **Research Agent** | Gathers info for content | Markdown |
| 03 | Content Writer | Detailed session content | Markdown |
| 04 | Slide Designer | Visual presentation slides | **HTML** |
| 05 | Exercise Designer | Hands-on practice activities | Markdown |
| 06 | Prompt Librarian | Reusable prompt templates | Markdown |
| 07 | Quality Reviewer | Reviews for accuracy & policy | Markdown |

---

## Output Structure

```
outputs/
├── syllabus.md              ← Course overview
├── week-1/
│   ├── research.md          ← Background research
│   ├── content.md           ← Session content + speaker notes
│   ├── slides/              ← HTML slides (960x540px)
│   │   ├── slide01.html
│   │   └── ...
│   ├── exercises.md         ← Hands-on labs
│   └── prompts.md           ← Reusable prompts
├── week-2/
├── week-3/
└── week-4/
```

---

## Commands

| Say This | What Happens |
|----------|--------------|
| `create syllabus` | Generate course structure |
| `research week 1` | Run Research Agent for Week 1 |
| `create content for week 1` | Run Content Writer (needs research first!) |
| `create slides for week 1` | Run Slide Designer (HTML output) |
| `create week 1` | Run ALL agents for Week 1 |
| `review week 1` | Run Quality Reviewer |
| `create full course` | Everything for all 4 weeks |

---

## Key Points

1. **Research Agent runs FIRST** for each week - feeds the Content Writer
2. **Only slides are HTML** - everything else is Markdown
3. **Content Writer uses Research** - doesn't make up facts
4. **Edit `inputs/requirements.md`** to customize your course

---

## Customizing

Edit `inputs/requirements.md` before running to change:
- Target audience
- Tools covered
- Learning objectives
- Session timing
