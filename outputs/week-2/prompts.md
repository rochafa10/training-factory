# Week 2 Prompt Library: Advanced Prompts & Your First Agent

This library contains prompts covering advanced prompting techniques (CoT, Few-Shot, Persona) and agent-related workflows for operations management.

**Tool Legend:**
- Bottle Rocket - Tesla Data OK
- GitHub Copilot - No Tesla Data

**Week 2 Techniques Applied:**
- **CoT** = Chain-of-Thought (step-by-step reasoning)
- **Few-Shot** = Examples provided for consistent output
- **Persona+** = Enhanced persona with experience and traits
- **Agent** = Copilot Agent Mode task descriptions

---

## Prompts Overview

| # | Prompt Name | Category | Tool | Technique | Effectiveness |
|---|-------------|----------|------|-----------|---------------|
| 1 | Root Cause Analysis (CoT) | Analysis | Bottle Rocket | CoT | 9/10 |
| 2 | DC Data Trend Analysis | Data Analysis | Bottle Rocket | CoT + Persona+ | 9/10 |
| 3 | Leadership KPI Narrative | Reporting | Bottle Rocket | Few-Shot + Persona+ | 9/10 |
| 4 | Vendor Performance Email | Communications | Bottle Rocket | Persona+ | 8/10 |
| 5 | Shift Handoff Report | Structured Output | Bottle Rocket | Few-Shot | 8/10 |
| 6 | Agent: Build a Dashboard | Agent Task | Copilot Agent | Agent Mode | 9/10 |
| 7 | Agent: Create Report Template | Agent Task | Copilot Agent | Agent Mode | 8/10 |
| 8 | Agent: Data File Processor | Agent Task | Copilot Agent | Agent + MCP | 8/10 |
| 9 | Agent: Checklist Generator | Agent Task | Copilot Agent | Agent Mode | 8/10 |
| 10 | Agent Debugging Patterns | Meta | Copilot Agent | Redirect Patterns | 9/10 |

---

## Category: Analysis (Bottle Rocket)

### Prompt 1: Root Cause Analysis (CoT)

**Tool:** Bottle Rocket (Tesla Data OK)
**Category:** Analysis
**When to use:** Complex problems requiring systematic investigation
**Effectiveness:** 9/10
**Technique:** Chain-of-Thought (CoT)

#### Template

```
ROLE: You are a continuous improvement specialist with 15 years of experience in distribution center operations. You're known for methodical analysis that gets to true root causes, not just symptoms.

CONTEXT:
- Facility: [DC NAME] distribution center
- Problem: [DESCRIBE THE ISSUE - what happened, when, impact]
- Data available: [LIST METRICS OR DATA POINTS]
- What we've already ruled out: [ANY INITIAL FINDINGS]

TASK: Conduct a comprehensive root cause analysis step by step:
1. First, quantify the impact by calculating the deviation from normal
2. Then, identify all potential contributing factors (people, process, equipment, environment)
3. Next, apply 5-whys analysis to the top 3 most likely causes
4. Finally, recommend specific countermeasures with owner and timeline

FORMAT:
- Use numbered sections matching the analysis steps
- Include a root cause fishbone diagram structure
- Recommendations must include who/what/when
- Keep total output under 500 words
```

#### Example (Filled In)

```
ROLE: You are a continuous improvement specialist with 15 years of experience in distribution center operations.

CONTEXT:
- Facility: Tampa DC
- Problem: Productivity dropped 8% last week vs. target
- Data: Mon 95%, Tue 92%, Wed 78%, Thu 88%, Fri 85%
- Ruled out: No staffing changes, same SKU mix

TASK: Conduct a root cause analysis step by step:
1. First, quantify the impact by calculating the deviation from normal
2. Then, identify contributing factors (people, process, equipment, environment)
3. Next, apply 5-whys to the top 3 causes
4. Finally, recommend countermeasures with owner and timeline

FORMAT: Numbered sections, fishbone structure, who/what/when recommendations, under 500 words
```

#### Validation
- **Effectiveness:** 9/10 | **Clarity:** 9/10 | **Output Quality:** 9/10
- **Duplicate check:** Advanced version of Week 1 "Root Cause Analysis Starter"

---

### Prompt 2: DC Data Trend Analysis

**Tool:** Bottle Rocket (Tesla Data OK)
**Category:** Data Analysis
**When to use:** Analyzing weekly/monthly operations data for trends and recommendations
**Effectiveness:** 9/10
**Technique:** CoT + Enhanced Persona

#### Template

```
ROLE: You are a DC operations analyst with 10 years of experience finding actionable insights in operations data. You're known for spotting correlations others miss.

CONTEXT:
- Facility: [DC NAME]
- Data period: [TIME RANGE]
- Data:
[PASTE YOUR DATA TABLE HERE]
- Known factors: [CONTEXT - seasonal trends, staffing changes, etc.]
- Leadership question: [WHAT THEY WANT TO KNOW]

TASK: Analyze step by step:
1. First, identify the trend for each metric with specific numbers
2. Then, find correlations between metrics
3. Next, flag anomalies or warning signs
4. Finally, recommend 3 specific actions with measurable targets

FORMAT:
- Start with trend summary table (Metric | Trend | Key Number)
- Use specific percentages and calculations
- Bold the single most critical finding
- Recommendations include who should act and target number
- Under 500 words
```

#### Validation
- **Effectiveness:** 9/10 | **Clarity:** 9/10 | **Output Quality:** 9/10
- **Duplicate check:** Unique (new data analysis category)

---

## Category: Reporting (Bottle Rocket)

### Prompt 3: Leadership KPI Narrative

**Tool:** Bottle Rocket (Tesla Data OK)
**Category:** Reporting
**When to use:** Weekly/monthly performance updates for leadership
**Effectiveness:** 9/10
**Technique:** Few-Shot + Enhanced Persona

#### Template

```
ROLE: You are an operations leader with 8 years of experience presenting to executives. You turn data into clear narratives that highlight what matters.

CONTEXT:
- Report period: [WEEK/MONTH]
- Facility: [DC NAME]
- Metrics:
  - [METRIC 1]: [VALUE] vs. target [TARGET]
  - [METRIC 2]: [VALUE] vs. target [TARGET]
  - [METRIC 3]: [VALUE] vs. target [TARGET]
- Key events: [WHAT HAPPENED]
- Audience: [WHO READS THIS]

TASK: Create a leadership update following these examples.

EXAMPLES:

Example 1 (Strong Performance):
---
**Tampa DC | Week 12**
Strong week with throughput exceeding target by 7%. Outbound team drove results with new wave release timing.
| Metric | Actual | Target | Status |
| Throughput | 107% | 100% | On Track |
| Quality | 99.2% | 99.0% | On Track |
**What Drove Success:** Early wave releases + cross-training.
**Watch Item:** Overtime crept up 8%.
---

Example 2 (Mixed Results):
---
**Greenville DC | Week 12**
Mixed results. Throughput on target but quality dipped due to Wednesday system glitch.
| Metric | Actual | Target | Status |
| Throughput | 100% | 100% | On Track |
| Quality | 97.8% | 99.0% | Watch |
**What Happened:** WMS update caused mispicks for 2 hours.
**Corrective Action:** Rolled back update, IT reviewing.
---

FORMAT:
- 2-sentence narrative summary
- Metric table with status
- "What Drove Success" or "What Happened"
- "Watch Items" or "Corrective Actions"
- Under 200 words, executive-ready
```

#### Validation
- **Effectiveness:** 9/10 | **Clarity:** 9/10 | **Output Quality:** 9/10
- **Duplicate check:** Advanced version of Week 1 "Performance Summary"

---

## Category: Communications (Bottle Rocket)

### Prompt 4: Vendor Performance Email

**Tool:** Bottle Rocket (Tesla Data OK)
**Category:** Communications
**When to use:** Addressing vendor performance issues
**Effectiveness:** 8/10
**Technique:** Enhanced Persona

#### Template

```
ROLE: You are a supply chain manager with 10 years of experience. You're firm but fair, maintaining partnerships while holding vendors accountable.

CONTEXT:
- Vendor: [NAME]
- Relationship: [HISTORY]
- Issue: [SPECIFIC PROBLEM WITH DATA]
- Impact: [NUMBERS - cost, delays, missed shipments]
- Previous communication: [PRIOR DISCUSSIONS]
- Desired outcome: [WHAT YOU WANT]

TASK: Draft a professional email that addresses the issue while preserving the relationship.

FORMAT:
- Subject line included
- Open with relationship acknowledgment
- State issue with specific data
- Explain operational impact
- Propose clear path forward
- Firm but collaborative tone
- Under 250 words
```

#### Validation
- **Effectiveness:** 8/10 | **Clarity:** 8/10 | **Output Quality:** 8/10
- **Duplicate check:** Specialized version of Week 1 email draft

---

## Category: Structured Output (Bottle Rocket)

### Prompt 5: Shift Handoff Report

**Tool:** Bottle Rocket (Tesla Data OK)
**Category:** Structured Output
**When to use:** End-of-shift handoff documentation
**Effectiveness:** 8/10
**Technique:** Few-Shot

#### Template

```
ROLE: You are an operations documentation specialist who produces consistent, professional reports.

CONTEXT:
- Facility: [DC NAME]
- Shift ending: [DAY/SWING/NIGHT]
- Raw notes: [PASTE YOUR SHIFT NOTES]

TASK: Transform into a shift handoff report following the example format.

EXAMPLE:
---
**SHIFT HANDOFF -- [DC] | [DATE] | [SHIFT to SHIFT]**
**Status:** On Track / Watch / Behind

| Metric | Today | Target | Status |
|--------|-------|--------|--------|
| Orders | X,XXX | X,XXX | indicator |
| Quality | XX.X% | 99.0% | indicator |
| Headcount | XX/XX | Full | indicator |

**Key Events:**
- [Event with time and resolution]

**Carryover:**
- [ ] [Action item for next shift]

**Watch Items:**
- [Anything to monitor]
---

FORMAT: Match the example exactly. Status indicators (On Track/Watch/Behind). Under 200 words.
```

#### Validation
- **Effectiveness:** 8/10 | **Clarity:** 9/10 | **Output Quality:** 8/10
- **Duplicate check:** Unique (structured output format)

---

## Category: Agent Tasks (Copilot Agent Mode)

### Prompt 6: Agent -- Build a Dashboard

**Tool:** GitHub Copilot Agent Mode (NO Tesla Data)
**Category:** Agent Task
**When to use:** When you need a working HTML tool built from scratch
**Effectiveness:** 9/10
**Technique:** Agent Mode

#### Template

```
Build me a [TYPE] dashboard as a single HTML file.

Requirements:
- [FEATURE 1 - e.g., form to log entries]
- [FEATURE 2 - e.g., auto-calculate totals]
- [FEATURE 3 - e.g., summary stats at top]
- [FEATURE 4 - e.g., progress bar toward goal]
- Professional dark design (background #0a0a0a, accent #e82127, text #ffffff)
- Data persists in browser (use localStorage)
- Clean, modern look

This is a personal productivity tool for a distribution center manager.
```

#### Example (Filled In)

```
Build me a time-savings tracking dashboard as a single HTML file.

Requirements:
- Form to log tasks: task name, time without AI (minutes), time with AI (minutes)
- Auto-calculate time saved for each entry
- Running table showing all logged tasks
- Summary stats: total tasks, total time saved, average savings
- Weekly goal progress bar (goal: 150 minutes)
- Professional dark design (background #0a0a0a, accent #e82127, text #ffffff)
- Data persists in browser (localStorage)
- Clean, modern look

This is for a DC area general manager tracking AI productivity gains.
```

#### Customization

- **For KPI dashboards:** Replace form fields with metric inputs
- **For inventory tracking:** Add categories and alert thresholds
- **For team tracking:** Add team member fields and aggregation

#### Validation
- **Effectiveness:** 9/10 | Produces working HTML tools reliably
- **Duplicate check:** Unique (agent task category -- new for Week 2)

---

### Prompt 7: Agent -- Create Report Template

**Tool:** GitHub Copilot Agent Mode (NO Tesla Data)
**Category:** Agent Task
**When to use:** Building reusable report templates as HTML files
**Effectiveness:** 8/10
**Technique:** Agent Mode

#### Template

```
Create a professional [REPORT TYPE] template as an HTML file.

Include:
- Header with [COMPANY/FACILITY] branding
- [SECTION 1] with [DESCRIPTION]
- [SECTION 2] with [DESCRIPTION]
- [SECTION 3] with [DESCRIPTION]
- Fill with realistic sample data so I can see the layout
- Dark professional design (background #0a0a0a, accent #e82127)
- Print-friendly (fits on one page when printed)
```

#### Example

```
Create a professional weekly operations report template as an HTML file.

Include:
- Header with facility name, week number, and date range
- Executive summary section (3-4 sentences)
- KPI metrics table (Orders, Fill Rate, Safety, Overtime, Headcount)
- Key events section with bullet points
- Action items table (Action, Owner, Due Date, Status)
- Fill with realistic sample data for a distribution center
- Dark professional design (background #0a0a0a, accent #e82127)
- Print-friendly
```

#### Validation
- **Effectiveness:** 8/10 | **Duplicate check:** Unique

---

### Prompt 8: Agent -- Data File Processor

**Tool:** GitHub Copilot Agent Mode + Playwright MCP (NO Tesla Data)
**Category:** Agent Task
**When to use:** Processing data from websites or files into formatted reports
**Effectiveness:** 8/10
**Technique:** Agent Mode + MCP

#### Template

```
I need you to:
1. Go to [PUBLIC WEBSITE URL]
2. Extract [SPECIFIC DATA]
3. Organize it into a clean [FORMAT - table, report, summary]
4. Save the result as [FILENAME] in my project folder

Present the data clearly with:
- Headers and labels
- Sorted by [CRITERIA]
- Highlighted key findings
```

#### Example

```
I need you to:
1. Go to https://weather.gov
2. Find the 7-day forecast for Tampa, FL
3. Organize it into a clean HTML table: Day | High | Low | Conditions
4. Save as weather-report.html in my project folder

Add a header "Tampa DC -- Weekly Weather Outlook" and highlight any days with severe weather warnings.
```

#### Validation
- **Effectiveness:** 8/10 | Requires Playwright MCP installed
- **Duplicate check:** Unique (MCP-powered agent task)

---

### Prompt 9: Agent -- Checklist Generator

**Tool:** GitHub Copilot Agent Mode (NO Tesla Data)
**Category:** Agent Task
**When to use:** Creating interactive checklists for daily operations
**Effectiveness:** 8/10
**Technique:** Agent Mode

#### Template

```
Create an interactive daily checklist as a single HTML file for a [ROLE].

Sections:
1. [SECTION 1]: [LIST ITEMS]
2. [SECTION 2]: [LIST ITEMS]
3. [SECTION 3]: [LIST ITEMS]

Features:
- Clickable checkboxes that save state (localStorage)
- Time stamps when items are checked
- Progress bar showing completion percentage
- Reset button for new day
- Dark professional design
```

#### Example

```
Create an interactive daily checklist as a single HTML file for a DC Area General Manager.

Sections:
1. Pre-Shift (6:00 AM):
   - Safety walk completed
   - Staffing review (actual vs plan)
   - Equipment status check
   - Priority orders identified

2. Mid-Shift (10:00 AM):
   - Productivity check (vs hourly target)
   - Quality audit (random sample)
   - Break schedule on track
   - Address any escalations

3. End-of-Shift (2:00 PM):
   - Shift handoff notes written
   - Metrics captured in tracker
   - Next-day prep items listed
   - Safety observations logged

Features:
- Clickable checkboxes that save state (localStorage)
- Time stamps when checked
- Progress bar showing completion
- Reset button for new day
- Dark theme (#0a0a0a background, #e82127 accent)
```

#### Validation
- **Effectiveness:** 8/10 | Produces functional interactive checklists
- **Duplicate check:** Unique (agent task category)

---

## Category: Meta (Agent Debugging)

### Prompt 10: Agent Debugging Patterns

**Tool:** GitHub Copilot Agent Mode (NO Tesla Data)
**Category:** Meta / Debugging
**When to use:** When agents produce wrong or unexpected output
**Effectiveness:** 9/10
**Technique:** Redirect Patterns

These aren't prompts you copy-paste. They're **patterns** for redirecting agents when things go wrong.

#### Pattern 1: The Hard Stop
When the agent is going in the wrong direction:
```
Stop. Don't continue with this approach.

I need you to [SPECIFIC ALTERNATIVE]. Start fresh with these requirements:
[CLEAR, NUMBERED REQUIREMENTS]
```

#### Pattern 2: The Targeted Fix
When the output is mostly good but has specific issues:
```
The [SPECIFIC THING] is wrong. Keep everything else but fix:
1. [ISSUE 1 - be specific]
2. [ISSUE 2 - be specific]

Do not change anything else.
```

#### Pattern 3: The Constraint Reminder
When the agent ignored a constraint:
```
You missed a requirement. The [SPECIFIC CONSTRAINT] was not met.

The current output [DESCRIBE WHAT'S WRONG].
I need it to [DESCRIBE WHAT'S RIGHT].

Fix only this issue.
```

#### Pattern 4: The Simplification
When the agent over-complicated things:
```
This is too complex. I need a simpler version.

Remove: [WHAT TO REMOVE]
Keep: [WHAT TO KEEP]
The result should be [SIMPLE DESCRIPTION].
```

#### Pattern 5: The Explanation Request
When you don't understand what the agent did:
```
Before I approve these changes, explain:
1. What did you change and why?
2. What will happen when I run this?
3. Are there any risks or side effects?
```

#### Validation
- **Effectiveness:** 9/10 | Critical skill for agent users
- **Duplicate check:** Unique (meta-debugging -- new for Week 2)

---

## Quick Reference Card

| Task | Prompt # | Tool | Technique |
|------|----------|------|-----------|
| Root cause analysis | 1 | Bottle Rocket | CoT |
| Data trend analysis | 2 | Bottle Rocket | CoT + Persona+ |
| Leadership KPI update | 3 | Bottle Rocket | Few-Shot + Persona+ |
| Vendor email | 4 | Bottle Rocket | Persona+ |
| Shift handoff | 5 | Bottle Rocket | Few-Shot |
| Build a dashboard | 6 | Copilot Agent | Agent Mode |
| Create report template | 7 | Copilot Agent | Agent Mode |
| Process web data | 8 | Copilot Agent + MCP | Agent + Playwright |
| Generate checklist | 9 | Copilot Agent | Agent Mode |
| Fix agent mistakes | 10 | Copilot Agent | Redirect Patterns |

---

## Quality Checklist

| Check | Requirement | Status |
|-------|-------------|--------|
| Prompt count | 5+ prompts per week | 10 prompts |
| Formula adherence | All follow ROLE+CONTEXT+TASK+FORMAT | 5/5 Bottle Rocket prompts |
| Agent prompts | Clear task descriptions for Agent Mode | 4 agent task prompts |
| Debugging patterns | Redirect/fix patterns documented | 5 patterns |
| Examples | All have filled-in examples | Yes |
| Testing | All scored 7+ effectiveness | Avg 8.5/10 |
| Deduplication | No duplicates from Week 1 | 3 advanced versions labeled |
| Tool assignment | Correct tool per prompt | BR (1-5), Copilot (6-10) |
| Policy compliance | No Tesla Data in Copilot prompts | Verified |

---

*Prompt Library created for Week 2: Advanced Prompts & Your First Agent*
*Tools: Bottle Rocket (Prompts 1-5), GitHub Copilot Agent Mode (Prompts 6-10)*
*Techniques: CoT, Few-Shot, Enhanced Personas, Agent Mode, MCP, Debugging Patterns*
