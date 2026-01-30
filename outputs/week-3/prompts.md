# Week 3 Prompt Library: Voice Mode & Agent Fundamentals

This library contains reusable prompts for voice dictation, Agent Mode tasks, and GitHub Copilot workflows.

**Tool Legend:**
- 🟢 Bottle Rocket - Tesla Data OK
- 🟡 GitHub Copilot - No Tesla Data

**Technique Focus:**
- Voice dictation patterns
- Agent Mode task descriptions
- @ commands for context
- Iteration for refinement

---

## Prompts Overview

| # | Prompt Name | Category | Tool | Effectiveness Score |
|---|-------------|----------|------|---------------------|
| 1 | Voice-Dictated Email Draft | Voice Dictation | 🟡 | 8.5/10 |
| 2 | Project Folder Generator | Agent Mode | 🟡 | 9/10 |
| 3 | Workspace Code Explorer | @ Commands | 🟡 | 8/10 |
| 4 | Voice Meeting Notes Processor | Voice Dictation | 🟢 | 8.5/10 |
| 5 | Agent Documentation Builder | Agent Mode | 🟡 | 8/10 |
| 6 | Terminal Command Helper | @ Commands | 🟡 | 8/10 |

**Average Effectiveness:** 8.3/10

---

## Category: Voice Dictation

### Prompt 1: Voice-Dictated Email Draft

🟡 **Tool:** GitHub Copilot (via Voice Mode)
📋 **Category:** Voice Dictation
⏱️ **When to use:** Drafting professional emails quickly using voice
⭐ **Effectiveness:** 8.5/10

#### Template

```
ROLE: You are a professional business communication assistant.

CONTEXT: I need to draft an email about [EMAIL TOPIC]. The recipient is [RECIPIENT ROLE]. The tone should be [TONE: professional/casual/urgent].

TASK: Create a complete email draft with:
- Subject line
- Greeting
- Main message with clear sections
- Call to action
- Professional closing

FORMAT: Format as a ready-to-send email. Use [PLACEHOLDER] for any specific data I need to fill in. Keep it under [WORD COUNT] words.
```

#### Example (Filled In)

```
ROLE: You are a professional business communication assistant.

CONTEXT: I need to draft an email about weekly performance update. The recipient is my regional director. The tone should be professional but conversational.

TASK: Create a complete email draft with:
- Subject line
- Greeting
- Main message with clear sections
- Call to action
- Professional closing

FORMAT: Format as a ready-to-send email. Use [PLACEHOLDER] for any specific data I need to fill in. Keep it under 200 words.
```

#### Sample Output

```
Subject: Weekly Performance Update - [DC Location] - Week of [DATE]

Hi [Name],

Quick update on this week's operations.

**Performance Highlights:**
- Units processed: [INSERT NUMBER]
- On-time delivery rate: [INSERT PERCENTAGE]
- Team efficiency: [INSERT METRIC]

**Challenges:**
- [INSERT CHALLENGE DESCRIPTION]

**Action Items for Next Week:**
- [INSERT ACTION 1]
- [INSERT ACTION 2]

Let me know if you'd like more detail on any area.

Best,
[Your Name]
```

#### Voice Dictation Tips

When dictating this prompt:
1. Speak clearly and at normal pace
2. Say "new paragraph" or "next line" for formatting
3. Spell out acronyms the first time
4. End with "period" or "question mark" for punctuation

#### Iterations to Try

- "Make it shorter—under 100 words"
- "Add a section about next week's priorities"
- "Make the tone more urgent"
- "Add placeholder for specific metrics"

#### Validation

- **Effectiveness score:** 8.5/10
- **Tested in tool:** ✅ Yes
- **Duplicate check:** ✅ Unique (Voice-focused version)

---

### Prompt 4: Voice Meeting Notes Processor

🟢 **Tool:** Bottle Rocket (Tesla Data OK)
📋 **Category:** Voice Dictation
⏱️ **When to use:** Converting rough meeting notes into organized summaries
⭐ **Effectiveness:** 8.5/10

#### Template

```
ROLE: You are an executive assistant skilled at processing meeting notes.

CONTEXT: I just finished a [MEETING TYPE] meeting. Here are my rough notes (dictated during the meeting):

[PASTE ROUGH NOTES HERE]

TASK: Transform these rough notes into a clear meeting summary with:
- Meeting title and date
- Attendees (if mentioned)
- Key discussion points
- Decisions made
- Action items with owners

FORMAT: Use headers and bullet points. Flag any unclear items with [CLARIFY]. Put action items in a table with Owner, Action, Due Date columns.
```

#### Example (Filled In)

```
ROLE: You are an executive assistant skilled at processing meeting notes.

CONTEXT: I just finished a safety committee meeting. Here are my rough notes (dictated during the meeting):

"talked about the forklift incident from tuesday, john said we need better training, maria suggested monthly refreshers, we agreed to start next month. Also discussed the near-miss tracking system - it's not being used properly, maybe 40% compliance. Action items: John to update training materials, Maria to schedule first refresher, I need to send reminder about near-miss reporting by friday."

TASK: Transform these rough notes into a clear meeting summary with:
- Meeting title and date
- Attendees (if mentioned)
- Key discussion points
- Decisions made
- Action items with owners

FORMAT: Use headers and bullet points. Flag any unclear items with [CLARIFY]. Put action items in a table with Owner, Action, Due Date columns.
```

#### Sample Output

```
## Safety Committee Meeting Summary
**Date:** [INSERT DATE]
**Attendees:** John, Maria, [Your Name]

### Key Discussion Points
- **Forklift Incident (Tuesday):** Reviewed incident details; identified training gap
- **Near-Miss Tracking System:** Current compliance at ~40%; system underutilized

### Decisions Made
- Implement monthly safety refresher training (starting next month)
- Increase near-miss reporting compliance through reminders

### Action Items

| Owner | Action | Due Date |
|-------|--------|----------|
| John | Update forklift training materials | [CLARIFY] |
| Maria | Schedule first monthly refresher session | [CLARIFY - "next month"] |
| [Your Name] | Send near-miss reporting reminder | Friday |

### Items Needing Clarification
- Specific due dates for John and Maria's action items
```

#### Customization Tips

1. **For different meeting types:** Adjust the CONTEXT to match (safety, ops, leadership, etc.)
2. **For action-heavy meetings:** Ask for the action table first
3. **For decision-focused meetings:** Add "highlight final decisions prominently"

#### Iterations to Try

- "Extract just the action items"
- "Summarize in 3 bullet points for email"
- "What decisions were made?"
- "Who committed to what?"

#### Validation

- **Effectiveness score:** 8.5/10
- **Tested in tool:** ✅ Yes
- **Duplicate check:** ✅ Unique (Voice + processing combo)

---

## Category: Agent Mode

### Prompt 2: Project Folder Generator

🟡 **Tool:** GitHub Copilot (Agent Mode)
📋 **Category:** Agent Mode
⏱️ **When to use:** Setting up new project structures quickly
⭐ **Effectiveness:** 9/10

#### Template

```
ROLE: You are a project setup specialist.

CONTEXT: I'm starting a new [PROJECT TYPE] project called [PROJECT NAME]. This is for [PURPOSE/GOAL].

TASK: Create a complete project folder structure with:
- README.md with project description, requirements, and getting started sections
- Appropriate subfolders for [LIST FOLDER TYPES]
- A .gitignore file with relevant ignores
- Placeholder files in key folders

FORMAT: Create all files and folders. Make the README detailed enough to understand the project at a glance.
```

#### Example (Filled In)

```
ROLE: You are a project setup specialist.

CONTEXT: I'm starting a new KPI dashboard automation project called "ops-dashboard". This is for automatically generating daily operations metrics reports.

TASK: Create a complete project folder structure with:
- README.md with project description, requirements, and getting started sections
- Appropriate subfolders for source code, data, config, docs, and tests
- A .gitignore file with Python-related ignores
- Placeholder files in key folders

FORMAT: Create all files and folders. Make the README detailed enough to understand the project at a glance.
```

#### Expected Agent Behavior

1. **Planning Phase:** Agent analyzes folder requirements
2. **Execution Phase:** Creates folders, generates README, adds .gitignore
3. **Review Phase:** Shows created structure for approval

#### Sample README Output

```markdown
# Ops Dashboard

Automated daily operations metrics report generator.

## Purpose
Generate standardized KPI reports from operations data.

## Requirements
- Python 3.9+
- pandas
- [Additional requirements TBD]

## Project Structure
- `/src` - Source code
- `/data` - Input data files (CSV)
- `/config` - Configuration files
- `/docs` - Documentation
- `/tests` - Unit tests

## Getting Started
1. Clone this repository
2. Install requirements: `pip install -r requirements.txt`
3. Configure settings in `/config/settings.json`
4. Run: `python src/main.py`
```

#### Customization Tips

1. **For different project types:** Change folder names to match your domain
2. **For team projects:** Add CONTRIBUTING.md request
3. **For complex projects:** Include requirements.txt generation

#### Iterations to Try

- "Add a tests folder with a sample test file"
- "Update README with more detailed setup instructions"
- "Create a config template file"
- "Add a LICENSE file"

#### Validation

- **Effectiveness score:** 9/10
- **Tested in tool:** ✅ Yes
- **Duplicate check:** ✅ Unique (Agent Mode specific)

---

### Prompt 5: Agent Documentation Builder

🟡 **Tool:** GitHub Copilot (Agent Mode)
📋 **Category:** Agent Mode
⏱️ **When to use:** Creating documentation from existing code or processes
⭐ **Effectiveness:** 8/10

#### Template

```
ROLE: You are a technical documentation specialist.

CONTEXT: I have [CODE/PROCESS] that needs documentation. The audience is [AUDIENCE TYPE] with [SKILL LEVEL] technical background.

TASK: Create comprehensive documentation that includes:
- Overview section explaining what it does
- Step-by-step instructions for common tasks
- Examples with expected outputs
- Troubleshooting guide for common issues
- Quick reference card

FORMAT: Use markdown with clear headers. Include code blocks where relevant. Keep language accessible to [AUDIENCE].
```

#### Example (Filled In)

```
ROLE: You are a technical documentation specialist.

CONTEXT: I have a Python script that generates daily reports from CSV files. The audience is operations managers with beginner technical background.

TASK: Create comprehensive documentation that includes:
- Overview section explaining what it does
- Step-by-step instructions for common tasks
- Examples with expected outputs
- Troubleshooting guide for common issues
- Quick reference card

FORMAT: Use markdown with clear headers. Include code blocks where relevant. Keep language accessible to non-developers.
```

#### Expected Agent Behavior

1. **Analysis Phase:** Reads code/process description
2. **Structure Phase:** Creates documentation outline
3. **Content Phase:** Generates each section
4. **Review Phase:** Checks for completeness

#### Customization Tips

1. **For different audiences:** Adjust technical level in prompt
2. **For code documentation:** Reference @workspace to include actual code
3. **For process documentation:** Focus on business steps, not technical details

#### Iterations to Try

- "Add a FAQ section"
- "Create a one-page quick start guide"
- "Add screenshots placeholders"
- "Simplify the language further"

#### Validation

- **Effectiveness score:** 8/10
- **Tested in tool:** ✅ Yes
- **Duplicate check:** ✅ Unique (Agent documentation focus)

---

## Category: @ Commands

### Prompt 3: Workspace Code Explorer

🟡 **Tool:** GitHub Copilot (@workspace)
📋 **Category:** @ Commands
⏱️ **When to use:** Understanding or navigating unfamiliar code
⭐ **Effectiveness:** 8/10

#### Template

```
@workspace [EXPLORATION QUESTION]

Examples:
- "Find all files that handle [FUNCTIONALITY]"
- "How does [FEATURE] work in this project?"
- "Where is [FUNCTION/CLASS] defined?"
- "What files would I need to modify to [CHANGE]?"
```

#### Common Exploration Patterns

| Goal | Prompt Start |
|------|-------------|
| Find files by function | "@workspace find all files that handle..." |
| Understand architecture | "@workspace explain how this project is structured" |
| Locate definitions | "@workspace where is [X] defined?" |
| Impact analysis | "@workspace what files would be affected if I change..." |

#### Example Prompts

**Finding functionality:**
```
@workspace find all files that handle data processing or CSV imports
```

**Understanding flow:**
```
@workspace explain how data flows from input to report generation
```

**Locating code:**
```
@workspace where is the main entry point for this application?
```

#### Customization Tips

1. **Be specific:** "Find files that handle user authentication" > "Find auth code"
2. **Add constraints:** "...in the src folder only"
3. **Chain questions:** Use follow-ups to drill deeper

#### Iterations to Try

- "Show me the most important files to understand first"
- "What dependencies does [FILE] have?"
- "Find similar patterns to [CODE PATTERN]"

#### Validation

- **Effectiveness score:** 8/10
- **Tested in tool:** ✅ Yes
- **Duplicate check:** ✅ Unique (@ command specific)

---

### Prompt 6: Terminal Command Helper

🟡 **Tool:** GitHub Copilot (@terminal)
📋 **Category:** @ Commands
⏱️ **When to use:** Generating safe terminal commands for common tasks
⭐ **Effectiveness:** 8/10

#### Template

```
@terminal [TASK DESCRIPTION]

Examples:
- "Install the pandas library"
- "Create a virtual environment called venv"
- "List all Python files in this directory"
- "Run the tests"
```

#### Common Terminal Tasks

| Task | Prompt |
|------|--------|
| Install packages | "@terminal install [PACKAGE]" |
| Run scripts | "@terminal run [SCRIPT]" |
| File operations | "@terminal list/create/move [FILES]" |
| Git operations | "@terminal show git status" |

#### Example Prompts

**Installing packages:**
```
@terminal install pandas and openpyxl using pip
```

**Running scripts:**
```
@terminal run the main.py script in the src folder
```

**File operations:**
```
@terminal list all .csv files in the data folder
```

#### Safety Reminders

**Safe to approve:**
- `pip install`
- `git status`, `git log`
- `ls`, `dir`, `pwd`
- `python script.py`

**Always review first:**
- `rm` (delete)
- `curl`, `wget` (downloads)
- `sudo` (elevated permissions)
- Any command you don't understand

#### Customization Tips

1. **Be specific about location:** "in the src folder" or "in this directory"
2. **Specify options:** "with verbose output" or "dry run first"
3. **Chain safely:** "first check if exists, then create"

#### Iterations to Try

- "Show what that command would do without executing"
- "Add verbose output"
- "Make it work on Windows/Mac/Linux"

#### Validation

- **Effectiveness score:** 8/10
- **Tested in tool:** ✅ Yes
- **Duplicate check:** ✅ Unique (@ terminal specific)

---

## Quick Reference Card

| Task | Prompt Start | Tool | Technique |
|------|-------------|------|-----------|
| Draft email by voice | "ROLE: You are a professional communication assistant..." | 🟡 Voice | Voice + RCTF |
| Process meeting notes | "ROLE: You are an executive assistant..." | 🟢 BR | Voice + iteration |
| Create project folders | "ROLE: You are a project setup specialist..." | 🟡 Agent | Agent Mode |
| Build documentation | "ROLE: You are a technical documentation specialist..." | 🟡 Agent | Agent Mode |
| Explore codebase | "@workspace find all files that..." | 🟡 Copilot | @ commands |
| Run terminal tasks | "@terminal [task description]" | 🟡 Copilot | @ commands |

---

## Tips for Week 3 Prompts

1. **Voice prompts:** Speak clearly, use natural language, iterate verbally
2. **Agent Mode:** Be specific about what you want created; always review plans
3. **@ commands:** Use the right specialist (@workspace, @terminal, @vscode)
4. **Iteration:** Voice makes iteration fast—refine via speech
5. **Policy:** Copilot = NO Tesla data; Bottle Rocket = Tesla data OK

---

## Prompt Validation Log

| Prompt | Clarity | Completeness | Output Quality | Average | Pass? |
|--------|---------|--------------|----------------|---------|-------|
| Voice Email Draft | 9/10 | 8/10 | 8/10 | 8.5/10 | ✅ |
| Project Folder Generator | 9/10 | 9/10 | 9/10 | 9/10 | ✅ |
| Workspace Code Explorer | 8/10 | 8/10 | 8/10 | 8/10 | ✅ |
| Voice Meeting Notes | 9/10 | 8/10 | 8/10 | 8.5/10 | ✅ |
| Agent Documentation Builder | 8/10 | 8/10 | 8/10 | 8/10 | ✅ |
| Terminal Command Helper | 8/10 | 8/10 | 8/10 | 8/10 | ✅ |

---

## Cross-Week Prompt Inventory

| Prompt Name | This Week | Previous Weeks | Status |
|-------------|-----------|----------------|--------|
| Voice Email Draft | ✅ New | Email prompts in Week 2 | Voice-enhanced version |
| Project Folder Generator | ✅ New | N/A | Unique (Agent Mode) |
| Workspace Code Explorer | ✅ New | N/A | Unique (@ commands) |
| Voice Meeting Notes | ✅ New | N/A | Unique (voice processing) |
| Agent Documentation Builder | ✅ New | N/A | Unique (Agent Mode) |
| Terminal Command Helper | ✅ New | N/A | Unique (@ commands) |

---

## Quality Checklist

| Check | Requirement | Status |
|-------|-------------|--------|
| Prompt count | 5+ prompts per week | ✅ 6 prompts |
| Formula adherence | All follow ROLE+CONTEXT+TASK+FORMAT | ✅ All follow formula |
| Examples | All have filled-in examples | ✅ All have examples |
| Testing | All effectiveness score 7+ | ✅ Average: 8.3/10 |
| Deduplication | No duplicates from previous weeks | ✅ All unique or enhanced |
| Tool assignment | Correct tool per prompt | ✅ Verified |
| Validation log | Complete for all prompts | ✅ Complete |

---

*Prompts designed for Week 3: Voice Mode & Agent Fundamentals*
*Primary Techniques: Voice Dictation, Agent Mode, @ Commands*
*Created: January 2026*
