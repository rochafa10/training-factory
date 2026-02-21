# Week 3 Prompt Library: Voice Mode & Agent Fundamentals

This library contains reusable prompts for voice dictation, Agent Mode tasks, GitHub Copilot workflows, RAG document queries, AI output verification, and git diff review.

**Total Prompts:** 10 | **Average Effectiveness:** 8.2/10

**Tool Legend:**
- 🟢 Bottle Rocket - Tesla Data OK
- 🟡 GitHub Copilot - No Tesla Data

**Technique Focus:**
- Voice dictation patterns
- Agent Mode task descriptions
- @ commands for context
- Iteration for refinement
- RAG (document-grounded queries)
- AI verification checklists

---

## Prompts Quick Reference

| # | Prompt Name | Category | Tool | Effectiveness |
|---|-------------|----------|------|---------------|
| 1 | Voice-Dictated Email Draft | Voice Dictation | 🟡 | 8.5/10 |
| 2 | Project Folder Generator | Agent Mode | 🟡 | 9/10 |
| 3 | Workspace Code Explorer | @ Commands | 🟡 | 8/10 |
| 4 | Voice Meeting Notes Processor | Voice Dictation | 🟢 | 8.5/10 |
| 5 | Agent Documentation Builder | Agent Mode | 🟡 | 8/10 |
| 6 | Terminal Command Helper | @ Commands | 🟡 | 8/10 |
| 7 | Agent Task Planner | Agent Mode | 🟡 | 8/10 |
| 8 | RAG Document Q&A | RAG / Data Analysis | 🟢 | 9/10 |
| 9 | AI Output Verifier | Quality Assurance | 🟢 | 8/10 |
| 10 | Git Diff Reviewer | Code Review | 🟡 | 7/10 |

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

#### Why It Works

- **ROLE** establishes the assistant as a communication specialist
- **CONTEXT** provides audience and tone guidance
- **TASK** specifies exact email structure requirements
- **FORMAT** controls length and placeholder usage

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
- **Tested in tool:** Yes
- **Duplicate check:** Unique (Voice-focused version)

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

#### Why It Works

- **ROLE** frames the AI as a note-taking specialist
- **CONTEXT** accepts messy, real-world dictation input
- **TASK** defines clear output structure
- **FORMAT** uses tables and [CLARIFY] flags for missing info

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
- **Tested in tool:** Yes
- **Duplicate check:** Unique (Voice + processing combo)

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

#### Expected Output

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

#### Why It Works

- **ROLE** positions AI as a setup specialist with project expertise
- **CONTEXT** provides project type and purpose for relevant structure
- **TASK** lists specific deliverables (README, folders, .gitignore)
- **FORMAT** specifies files should be created, not just described

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
- **Tested in tool:** Yes
- **Duplicate check:** Unique (Agent Mode specific)

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

#### Expected Output

1. **Analysis Phase:** Reads code/process description
2. **Structure Phase:** Creates documentation outline
3. **Content Phase:** Generates each section
4. **Review Phase:** Checks for completeness

#### Why It Works

- **ROLE** establishes documentation expertise
- **CONTEXT** defines the target audience and their skill level
- **TASK** specifies five documentation sections
- **FORMAT** ensures accessibility for non-technical readers

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
- **Tested in tool:** Yes
- **Duplicate check:** Unique (Agent documentation focus)

---

### Prompt 7: Agent Task Planner

🟡 **Tool:** GitHub Copilot (Agent Mode)
📋 **Category:** Agent Mode
⏱️ **When to use:** Instructing Agent Mode to build complex, multi-step automation projects
⭐ **Effectiveness:** 8/10

#### Template

```
ROLE: You are an automation architect who builds practical tools for operations teams.

CONTEXT: I need a [TOOL TYPE] for [PURPOSE]. This will be used by [USER TYPE] to [PRIMARY USE CASE]. The tool should be [COMPLEXITY: simple/intermediate/comprehensive].

TASK: Build this automation project step by step:
1. First, create the folder structure and organize files logically
2. Then, create the core templates or data files needed
3. Next, add sample data so I can see how it works
4. Finally, write a README that explains how to use and customize the tool

DELIVERABLES:
- [FILE 1 DESCRIPTION]
- [FILE 2 DESCRIPTION]
- [FILE 3 DESCRIPTION]
- [FILE 4 DESCRIPTION]
- README.md with usage instructions

FORMAT: Create all files in a folder called [FOLDER NAME]. Use markdown for documentation. Include realistic sample data that demonstrates the tool's purpose.
```

#### Example (Filled In)

```
ROLE: You are an automation architect who builds practical tools for operations teams.

CONTEXT: I need a labor planning tool for weekly workforce scheduling. This will be used by distribution center AGMs to plan headcount across shifts. The tool should be intermediate complexity.

TASK: Build this automation project step by step:
1. First, create the folder structure and organize files logically
2. Then, create the core templates or data files needed
3. Next, add sample data so I can see how it works
4. Finally, write a README that explains how to use and customize the tool

DELIVERABLES:
- A weekly labor template (markdown) with fields for headcount by shift, planned hours, and overtime
- A sample filled-in week showing realistic DC data
- A summary report template that flags understaffed shifts
- A Monday morning checklist for labor review
- README.md with usage instructions

FORMAT: Create all files in a folder called "labor-planning". Use markdown for documentation. Include realistic sample data that demonstrates the tool's purpose.
```

#### Sample Output Structure

```
labor-planning/
├── README.md
├── templates/
│   ├── weekly-labor-template.md
│   └── summary-report-template.md
├── samples/
│   └── week-01-sample.md
└── checklists/
    └── monday-review-checklist.md
```

#### Why It Works

- **ROLE** establishes the agent as an automation builder
- **CONTEXT** provides tool type, users, and complexity level
- **TASK** breaks work into four sequential steps (the ReAct pattern)
- **DELIVERABLES** explicitly lists expected files
- **FORMAT** specifies folder name and realistic sample data requirement

#### Expected Agent Behavior

1. **Planning:** Agent analyzes requirements and announces plan
2. **Structure:** Creates folder and subfolder hierarchy
3. **Templates:** Generates each template with appropriate fields
4. **Samples:** Fills in sample data with realistic numbers
5. **Documentation:** Writes README with clear instructions

#### Customization Tips

1. **For simpler tools:** Reduce deliverables to 2-3 files, set complexity to "simple"
2. **For team tools:** Add "Include a CONTRIBUTING section in the README"
3. **For data-heavy tools:** Add "Create a data/ folder with CSV templates"
4. **For recurring use:** Add "Include instructions for weekly/monthly updates"

#### Iterations to Try

- "Add a folder for archived weeks"
- "Create a version for different DC sizes (small/medium/large)"
- "Add a section in the README about customizing the templates"
- "Include a troubleshooting section for common issues"

#### Validation

- **Effectiveness score:** 8/10
- **Tested in tool:** Yes
- **Duplicate check:** Unique (multi-step agent instructions)

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

#### Why It Works

- **@workspace** directs Copilot to search the entire project
- **Specific questions** get targeted answers
- **Context-aware** responses include file paths and code snippets

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
- **Tested in tool:** Yes
- **Duplicate check:** Unique (@ command specific)

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

#### Why It Works

- **@terminal** generates executable commands
- **Natural language** translates to correct syntax
- **Platform-aware** adjusts for Windows/Mac/Linux

#### Safety Reminders

**Safe to approve:**
- `pip install`
- `git status`, `git log`, `git add`
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
- **Tested in tool:** Yes
- **Duplicate check:** Unique (@ terminal specific)

---

## Category: RAG / Data Analysis

### Prompt 8: RAG Document Q&A

🟢 **Tool:** Bottle Rocket (Tesla Data OK)
📋 **Category:** RAG / Data Analysis
⏱️ **When to use:** Asking specific questions about uploaded documents (files, PDFs, CSVs, reports)
⭐ **Effectiveness:** 9/10

#### Template

```
ROLE: You are a document analyst who extracts precise information from uploaded files.

CONTEXT: I've uploaded [DOCUMENT TYPE]: [DOCUMENT NAME/DESCRIPTION]. This document contains [GENERAL CONTENT DESCRIPTION].

TASK: Based ONLY on the uploaded document:
1. [SPECIFIC QUESTION 1]
2. [SPECIFIC QUESTION 2]
3. [SPECIFIC QUESTION 3]

FORMAT:
- Answer each question with specific references to the document
- Quote relevant passages when possible
- If information is not in the document, say "Not found in document"
- Summarize key findings at the end
```

#### Example (Filled In)

```
ROLE: You are a document analyst who extracts precise information from uploaded files.

CONTEXT: I've uploaded our Q4 safety policy update (PDF). This document contains updated procedures for forklift operations, PPE requirements, and incident reporting.

TASK: Based ONLY on the uploaded document:
1. What are the new PPE requirements for the receiving area?
2. How has the incident reporting timeline changed?
3. What training is required for forklift operators?

FORMAT:
- Answer each question with specific references to the document
- Quote relevant passages when possible
- If information is not in the document, say "Not found in document"
- Summarize key findings at the end
```

#### Sample Output

```
## Document Analysis: Q4 Safety Policy Update

### 1. New PPE Requirements for Receiving Area

According to Section 3.2: "Effective immediately, all personnel entering the receiving area must wear:
- Safety glasses (ANSI Z87.1 rated)
- Steel-toed boots
- High-visibility vest"

This is an update from previous policy which only required steel-toed boots.

### 2. Incident Reporting Timeline Changes

From Section 5.1: "All incidents must be reported within 2 hours of occurrence (previously 24 hours). Near-misses must be reported by end of shift."

Key change: Reporting window reduced from 24 hours to 2 hours.

### 3. Forklift Operator Training Requirements

Section 4.3 states: "All forklift operators must complete:
- Initial 8-hour certification course
- Quarterly refresher (2 hours)
- Annual recertification practical exam"

Note: Quarterly refresher is new (previously annual only).

### Summary of Key Findings
- PPE requirements expanded for receiving area
- Incident reporting timeline significantly shortened (24h → 2h)
- Forklift training now includes quarterly refreshers
```

#### Why It Works

- **ROLE** frames AI as document-focused analyst
- **CONTEXT** describes the uploaded document for grounding
- **TASK** asks specific, answerable questions
- **FORMAT** requires document citations and admits gaps

#### Customization Tips

1. **For data files (CSV/Excel):** Change to "Find [METRIC] and calculate [ANALYSIS]"
2. **For comparison:** Upload multiple docs, ask "Compare policy X in both documents"
3. **For summarization:** Add "Create a one-page executive summary"
4. **For compliance:** Add "Flag any items that conflict with [STANDARD]"

#### Iterations to Try

- "What else does the document say about [TOPIC]?"
- "Create a checklist of action items from this document"
- "Summarize this for my team in 3 bullet points"
- "What questions does this document leave unanswered?"

#### Validation

- **Effectiveness score:** 9/10
- **Tested in tool:** Yes
- **Duplicate check:** Unique (RAG document query pattern)

---

## Category: Quality Assurance

### Prompt 9: AI Output Verifier

🟢 **Tool:** Bottle Rocket (Tesla Data OK)
📋 **Category:** Quality Assurance
⏱️ **When to use:** Reviewing AI-generated content before using it (catching hallucinations, errors, formatting issues)
⭐ **Effectiveness:** 8/10

#### Template

```
ROLE: You are a quality assurance specialist who reviews AI-generated content for accuracy and reliability.

CONTEXT: I received the following AI-generated [CONTENT TYPE] and need to verify it before using:

---
[PASTE AI-GENERATED CONTENT HERE]
---

Original request was: [WHAT YOU ASKED THE AI TO DO]

TASK: Review this content against the following checklist:

1. **Factual Accuracy:** Are there any statistics, dates, or claims that appear fabricated or unverifiable?
2. **Source Verification:** Does it cite sources? If so, do they sound real or potentially hallucinated?
3. **Logic Check:** Is the reasoning internally consistent? Any contradictions?
4. **Completeness:** Does it address all parts of the original request?
5. **Formatting:** Does it follow the requested format?
6. **Red Flags:** Any overly specific numbers without data source? Confident claims about uncertain topics?

FORMAT:
- Use a checklist format with PASS / REVIEW / FAIL for each item
- Explain any REVIEW or FAIL items specifically
- Provide an overall trust rating (High / Medium / Low)
- List specific items to verify before using
```

#### Example (Filled In)

```
ROLE: You are a quality assurance specialist who reviews AI-generated content for accuracy and reliability.

CONTEXT: I received the following AI-generated weekly performance summary and need to verify it before sending to leadership:

---
**Tampa DC | Week 14 Summary**
Strong week with throughput at 107% of target. According to the 2025 National Warehousing Association benchmark, this places us in the top 15% of distribution centers nationally. On-time delivery reached 98.7%, and overtime was held to 95 hours against a 100-hour budget.
---

Original request was: "Summarize our weekly performance in 3-4 sentences"

TASK: Review this content against the following checklist...
```

#### Sample Output

```
## AI Output Verification Report

### Checklist Results

| Check | Status | Notes |
|-------|--------|-------|
| Factual Accuracy | REVIEW | "107%" and "98.7%" need verification against actual data |
| Source Verification | FAIL | "2025 National Warehousing Association benchmark" - likely hallucinated |
| Logic Check | PASS | Reasoning is internally consistent |
| Completeness | PASS | Addresses the summary request |
| Formatting | PASS | Follows requested 3-4 sentence format |
| Red Flags | REVIEW | "Top 15% nationally" is very specific without data source |

### Specific Issues

1. **Hallucinated Source:** The "2025 National Warehousing Association benchmark" citation appears fabricated. This organization may not exist, and even if it does, the AI had no access to this data.

2. **Unverified Statistics:** The 107%, 98.7%, and 95 hours figures need to be checked against your actual data. If you didn't provide these numbers, they may be invented.

3. **Over-Confident Claim:** "Top 15% nationally" is extremely specific. Unless you provided benchmark data, this is likely hallucinated.

### Overall Trust Rating: LOW

### Items to Verify Before Using
- [ ] Confirm 107% throughput from actual weekly report
- [ ] Verify 98.7% on-time delivery from system data
- [ ] Check overtime hours against time tracking
- [ ] Remove or rewrite the NWA benchmark claim entirely
- [ ] Remove "top 15% nationally" unless you have benchmark data
```

#### Why It Works

- **ROLE** positions AI as a critical reviewer, not a creator
- **CONTEXT** provides both the AI output and original request for comparison
- **TASK** uses a structured checklist covering common AI error types
- **FORMAT** requires actionable verification steps

#### Customization Tips

1. **For data analysis:** Add "Check all calculations for mathematical accuracy"
2. **For communications:** Add "Review tone appropriateness for audience"
3. **For code:** Add "Check for syntax errors and security issues"
4. **For faster review:** Reduce checklist to top 3 items

#### Iterations to Try

- "What's the single most important thing to verify?"
- "Rewrite this with the hallucinated content removed"
- "Rate the confidence level for each fact in the content"
- "What questions should I ask the AI to improve this output?"

#### Validation

- **Effectiveness score:** 8/10
- **Tested in tool:** Yes
- **Duplicate check:** Unique (AI verification checklist)

---

## Category: Code Review

### Prompt 10: Git Diff Reviewer

🟡 **Tool:** GitHub Copilot
📋 **Category:** Code Review
⏱️ **When to use:** Understanding what an AI agent changed in your files before accepting changes
⭐ **Effectiveness:** 7/10

#### Template

```
ROLE: You are a code reviewer who explains changes in plain English for non-developers.

CONTEXT: I'm reviewing changes that [AI AGENT / SOMEONE] made to my project. I need to understand what changed before I accept these modifications.

Here is the diff (or list of changes):
---
[PASTE DIFF OR DESCRIBE CHANGES]
---

TASK: Explain these changes in simple terms:
1. What files were modified, added, or deleted?
2. What was the purpose of each change?
3. Are there any changes that look risky or unexpected?
4. Should I accept these changes? Why or why not?

FORMAT:
- Use simple language (assume I don't write code)
- Organize by file
- Highlight any changes I should review carefully
- End with a clear recommendation: ACCEPT / REVIEW FURTHER / REJECT
```

#### Example (Filled In)

```
ROLE: You are a code reviewer who explains changes in plain English for non-developers.

CONTEXT: I'm reviewing changes that Copilot Agent Mode made to my labor-planning project. I asked it to "add a section for temp workers" and I need to understand what it actually changed.

Here is the diff:
---
Modified: labor-planning/templates/weekly-labor-template.md
+ | Temp Workers | [NUMBER] | [HOURS] | [COST] |
+
+ ### Temp Worker Guidelines
+ - Request temps 48 hours in advance
+ - Maximum 20% of shift can be temps
+ - Track temp hours separately for billing

Modified: labor-planning/README.md
+ ## Temp Worker Tracking
+ The template now includes a temp worker row. Fill in...
---

TASK: Explain these changes in simple terms...
```

#### Sample Output

```
## Change Review: Labor Planning Project

### Files Changed

**1. weekly-labor-template.md (Modified)**

What changed:
- Added a new row to the labor table for tracking temp workers
- Added a new section called "Temp Worker Guidelines" with 3 rules

Is this expected? YES - You asked for temp worker tracking.

Anything risky? The "20% maximum" rule was added by the AI. Verify this matches your actual policy.

**2. README.md (Modified)**

What changed:
- Added documentation explaining how to use the new temp worker row

Is this expected? YES - Good practice to document new features.

Anything risky? No concerns.

### Summary

| File | Change Type | Risk Level |
|------|-------------|------------|
| weekly-labor-template.md | Added temp tracking | LOW - but verify 20% rule |
| README.md | Added documentation | LOW |

### Recommendation: ACCEPT with one verification

Accept these changes, but first confirm that the "Maximum 20% of shift can be temps" matches your actual DC policy. If your policy is different, edit that line before accepting.

### How to Accept
1. In VS Code Source Control, click the checkmark next to each file to stage
2. Or click "Discard" if you want to reject and try again
```

#### Why It Works

- **ROLE** establishes reviewer who translates technical to plain English
- **CONTEXT** explains the situation (agent made changes, need review)
- **TASK** asks four specific questions about the changes
- **FORMAT** requires non-technical language and clear recommendation

#### Customization Tips

1. **For large diffs:** Add "Focus on the 3 most important changes"
2. **For code changes:** Add "Explain what the code does, not just what changed"
3. **For security review:** Add "Flag any changes that could affect data or security"
4. **For rollback decisions:** Add "What would break if I reject these changes?"

#### Iterations to Try

- "What's the single most important change to review?"
- "Are there any changes the agent made that I didn't ask for?"
- "How do I undo just one of these changes?"
- "Summarize all changes in one sentence"

#### Validation

- **Effectiveness score:** 7/10
- **Tested in tool:** Yes
- **Duplicate check:** Unique (git diff explanation for non-developers)

---

## Prompt Library Summary

| # | Prompt Name | Category | Tool | Technique | Effectiveness |
|---|-------------|----------|------|-----------|---------------|
| 1 | Voice-Dictated Email Draft | Voice Dictation | 🟡 Copilot | RCTF + Voice | 8.5/10 |
| 2 | Project Folder Generator | Agent Mode | 🟡 Copilot | Agent + RCTF | 9/10 |
| 3 | Workspace Code Explorer | @ Commands | 🟡 Copilot | @workspace | 8/10 |
| 4 | Voice Meeting Notes Processor | Voice Dictation | 🟢 BR | RCTF + Voice | 8.5/10 |
| 5 | Agent Documentation Builder | Agent Mode | 🟡 Copilot | Agent + RCTF | 8/10 |
| 6 | Terminal Command Helper | @ Commands | 🟡 Copilot | @terminal | 8/10 |
| 7 | Agent Task Planner | Agent Mode | 🟡 Copilot | Agent + Multi-step | 8/10 |
| 8 | RAG Document Q&A | RAG / Data Analysis | 🟢 BR | RAG + RCTF | 9/10 |
| 9 | AI Output Verifier | Quality Assurance | 🟢 BR | Checklist + RCTF | 8/10 |
| 10 | Git Diff Reviewer | Code Review | 🟡 Copilot | Plain English | 7/10 |

**Average Effectiveness:** 8.2/10

---

## Building Your Personal Library

### Week 3 Additions

This week added four new prompt patterns:

1. **Agent Task Planner (Prompt 7):** For complex multi-step agent instructions
2. **RAG Document Q&A (Prompt 8):** For querying uploaded files with grounded answers
3. **AI Output Verifier (Prompt 9):** For catching hallucinations and errors
4. **Git Diff Reviewer (Prompt 10):** For understanding agent changes before accepting

### Naming Convention

Follow the Week 2 pattern: `[category]-[task]-v[version]`

| Prompt | Suggested Name |
|--------|----------------|
| Agent Task Planner | `agent-task-planner-v1` |
| RAG Document Q&A | `rag-document-qa-v1` |
| AI Output Verifier | `qa-output-verifier-v1` |
| Git Diff Reviewer | `review-git-diff-v1` |

### Tool Policy Reminder

| Tool | Tesla Data | Use For |
|------|------------|---------|
| 🟢 Bottle Rocket | ALLOWED | Policy docs, performance data, employee info, DC metrics |
| 🟡 GitHub Copilot | NOT ALLOWED | Generic templates, code, automation, non-Tesla content |

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
| Multi-step agent tasks | "ROLE: You are an automation architect..." | 🟡 Agent | Agent + deliverables |
| Query uploaded documents | "ROLE: You are a document analyst..." | 🟢 BR | RAG |
| Verify AI output | "ROLE: You are a quality assurance specialist..." | 🟢 BR | Checklist |
| Review git changes | "ROLE: You are a code reviewer who explains..." | 🟡 Copilot | Plain English |

---

## Tips for Week 3 Prompts

1. **Voice prompts:** Speak clearly, use natural language, iterate verbally
2. **Agent Mode:** Be specific about deliverables; describe the goal, not the steps
3. **@ commands:** Use the right specialist (@workspace, @terminal, @vscode)
4. **RAG prompts:** Always specify "based ONLY on the uploaded document" to prevent hallucination
5. **Verification:** Review AI output before using -- check numbers, sources, claims
6. **Git review:** Never accept changes you don't understand
7. **Policy:** Copilot = NO Tesla data; Bottle Rocket = Tesla data OK

---

## Prompt Validation Log

| Prompt | Clarity | Completeness | Output Quality | Average | Pass? |
|--------|---------|--------------|----------------|---------|-------|
| Voice Email Draft | 9/10 | 8/10 | 8/10 | 8.5/10 | Yes |
| Project Folder Generator | 9/10 | 9/10 | 9/10 | 9/10 | Yes |
| Workspace Code Explorer | 8/10 | 8/10 | 8/10 | 8/10 | Yes |
| Voice Meeting Notes | 9/10 | 8/10 | 8/10 | 8.5/10 | Yes |
| Agent Documentation Builder | 8/10 | 8/10 | 8/10 | 8/10 | Yes |
| Terminal Command Helper | 8/10 | 8/10 | 8/10 | 8/10 | Yes |
| Agent Task Planner | 8/10 | 8/10 | 8/10 | 8/10 | Yes |
| RAG Document Q&A | 9/10 | 9/10 | 9/10 | 9/10 | Yes |
| AI Output Verifier | 8/10 | 8/10 | 8/10 | 8/10 | Yes |
| Git Diff Reviewer | 7/10 | 7/10 | 7/10 | 7/10 | Yes |

---

## Cross-Week Prompt Inventory

| Prompt Name | This Week | Previous Weeks | Status |
|-------------|-----------|----------------|--------|
| Voice Email Draft | Week 3 | Email prompts in Week 2 | Voice-enhanced version |
| Project Folder Generator | Week 3 | N/A | Unique (Agent Mode) |
| Workspace Code Explorer | Week 3 | N/A | Unique (@ commands) |
| Voice Meeting Notes | Week 3 | N/A | Unique (voice processing) |
| Agent Documentation Builder | Week 3 | N/A | Unique (Agent Mode) |
| Terminal Command Helper | Week 3 | N/A | Unique (@ commands) |
| Agent Task Planner | Week 3 | N/A | Unique (multi-step agent) |
| RAG Document Q&A | Week 3 | Data prompts Week 2 | RAG-focused version |
| AI Output Verifier | Week 3 | N/A | Unique (quality assurance) |
| Git Diff Reviewer | Week 3 | N/A | Unique (change review) |

---

## Quality Checklist

| Check | Requirement | Status |
|-------|-------------|--------|
| Prompt count | 5+ prompts per week | 10 prompts |
| Formula adherence | All follow ROLE+CONTEXT+TASK+FORMAT | All follow formula |
| Examples | All have filled-in examples | All have examples |
| Testing | All effectiveness score 7+ | Average: 8.2/10 |
| Deduplication | No duplicates from previous weeks | All unique or enhanced |
| Tool assignment | Correct tool per prompt | Verified |
| Validation log | Complete for all prompts | Complete |
| New prompts | 4 new prompts added (7-10) | Complete |

---

*Prompts designed for Week 3: Voice Mode & Agent Fundamentals (240-minute session)*
*Primary Techniques: Voice Dictation, Agent Mode, @ Commands, RAG, Verification*
*Total Prompts: 10 | Average Effectiveness: 8.2/10*
*Created: February 2026*
