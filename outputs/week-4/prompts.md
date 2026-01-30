# Week 4 Prompt Library: Advanced Automation & MCP Workflows

This library contains reusable prompts for MCP-powered automations, multi-agent workflows, and complex task orchestration.

**Tool Legend:**
- 🟢 Bottle Rocket - Tesla Data OK
- 🟡 GitHub Copilot - No Tesla Data

**Technique Focus:**
- MCP tool integration
- Multi-step workflows
- File system operations
- Web automation
- Report generation

---

## Prompts Overview

| # | Prompt Name | Category | Tool | Effectiveness Score |
|---|-------------|----------|------|---------------------|
| 1 | Dive Deep Report Generator | Report Automation | 🟡 | 9/10 |
| 2 | Web Data Extractor | Web Automation | 🟡 | 8.5/10 |
| 3 | Project Folder Generator | File Automation | 🟡 | 9/10 |
| 4 | Multi-Step Workflow Builder | Orchestration | 🟡 | 8/10 |
| 5 | Time Savings Calculator | Analysis | 🟢 | 8.5/10 |
| 6 | Personal Project Documenter | Documentation | 🟢 | 8/10 |

**Average Effectiveness:** 8.5/10

---

## Category: Report Automation

### Prompt 1: Dive Deep Report Generator

🟡 **Tool:** GitHub Copilot (Agent Mode + Filesystem MCP)
📋 **Category:** Report Automation
⏱️ **When to use:** Creating structured analysis reports from data files
⭐ **Effectiveness:** 9/10

#### Template

```
ROLE: You are an operations analyst preparing a dive deep report for leadership review.

CONTEXT: I have [DATA TYPE] data in [FILENAME] that shows [TIME PERIOD] [METRIC/EVENTS]. The audience is [AUDIENCE LEVEL] and they need to understand root causes and recommended actions.

TASK: Analyze this data and create a dive deep report that includes:
- Executive summary (2-3 sentences)
- Root cause analysis (identify top [NUMBER] causes)
- [METRIC] breakdown by [DIMENSION]
- Recommended action items with owners

FORMAT: Save as [OUTPUT_FILENAME].md with clear markdown headers. Use tables for data comparisons. Keep the executive summary under 50 words.
```

#### Example (Filled In)

```
ROLE: You are an operations analyst preparing a dive deep report for leadership review.

CONTEXT: I have shipment data in sample-data.csv that shows yesterday's deliveries and misses. The audience is regional directors and they need to understand root causes and recommended actions.

TASK: Analyze this data and create a dive deep report that includes:
- Executive summary (2-3 sentences)
- Root cause analysis (identify top 3 causes)
- Impact breakdown by customer
- Recommended action items with owners

FORMAT: Save as dive-deep-report.md with clear markdown headers. Use tables for data comparisons. Keep the executive summary under 50 words.
```

#### Sample Output

```markdown
# Dive Deep: Missed Shipments Analysis
**Date:** January 20, 2026
**Prepared by:** Operations Analysis

## Executive Summary
Yesterday's operations recorded 6 missed shipments (60% miss rate). Carrier delays accounted for 67% of all misses, primarily affecting Customer_A. Immediate carrier review recommended.

## Root Cause Analysis

| Rank | Cause | Count | Percentage |
|------|-------|-------|------------|
| 1 | Carrier Delay | 4 | 67% |
| 2 | Inventory Shortage | 2 | 33% |
| 3 | System Error | 1 | 17% |

## Customer Impact

| Customer | Misses | Impact Level |
|----------|--------|--------------|
| Customer_A | 2 | High |
| Customer_C | 1 | Medium |
| Customer_G | 1 | High |

## Action Items

| Owner | Action | Due Date |
|-------|--------|----------|
| Logistics | Review carrier SLA performance | EOD Friday |
| Inventory | Audit stock levels for affected SKUs | EOD Monday |
| IT | Investigate system error root cause | EOD Tuesday |
```

#### Customization Tips

1. **For different data types:** Change "shipment data" to your data type
2. **For different dimensions:** Replace "by customer" with "by shift" or "by DC"
3. **For leadership vs. operational:** Adjust detail level in FORMAT section

#### Iterations to Try

- "Add a trend comparison to last week"
- "Include a risk assessment section"
- "Create an action priority matrix"
- "Generate a 1-page executive version"

#### Validation

- **Effectiveness score:** 9/10
- **Tested in tool:** ✅ Yes
- **Duplicate check:** ✅ Unique (MCP-specific version)

---

### Prompt 5: Time Savings Calculator

🟢 **Tool:** Bottle Rocket (Tesla Data OK)
📋 **Category:** Analysis
⏱️ **When to use:** Calculating and documenting AI productivity gains
⭐ **Effectiveness:** 8.5/10

#### Template

```
ROLE: You are a productivity analyst helping quantify AI tool ROI.

CONTEXT: I've been tracking my AI usage for [TIME PERIOD]. Here are my tasks and time estimates:

Before AI:
- [TASK 1]: [TIME] minutes, [FREQUENCY] per week
- [TASK 2]: [TIME] minutes, [FREQUENCY] per week
- [TASK 3]: [TIME] minutes, [FREQUENCY] per week

With AI:
- [TASK 1]: [TIME] minutes, [FREQUENCY] per week
- [TASK 2]: [TIME] minutes, [FREQUENCY] per week
- [TASK 3]: [TIME] minutes, [FREQUENCY] per week

TASK: Calculate total weekly time savings, project annual savings, and create a summary suitable for a business case.

FORMAT: Provide:
1. Weekly savings calculation (table format)
2. Annual projection
3. 2-3 sentence business case summary
4. Top recommendations for further optimization
```

#### Example (Filled In)

```
ROLE: You are a productivity analyst helping quantify AI tool ROI.

CONTEXT: I've been tracking my AI usage for 4 weeks. Here are my tasks and time estimates:

Before AI:
- Weekly performance email: 30 minutes, 5 per week
- Dive deep reports: 45 minutes, 2 per week
- Meeting prep: 20 minutes, 3 per week

With AI:
- Weekly performance email: 10 minutes, 5 per week
- Dive deep reports: 10 minutes, 2 per week
- Meeting prep: 5 minutes, 3 per week

TASK: Calculate total weekly time savings, project annual savings, and create a summary suitable for a business case.

FORMAT: Provide:
1. Weekly savings calculation (table format)
2. Annual projection
3. 2-3 sentence business case summary
4. Top recommendations for further optimization
```

#### Sample Output

```markdown
## Time Savings Analysis

### Weekly Savings Breakdown

| Task | Before | After | Savings | Frequency | Weekly Total |
|------|--------|-------|---------|-----------|--------------|
| Performance email | 30 min | 10 min | 20 min | 5x | 100 min |
| Dive deep reports | 45 min | 10 min | 35 min | 2x | 70 min |
| Meeting prep | 20 min | 5 min | 15 min | 3x | 45 min |
| **TOTAL** | | | | | **215 min/week** |

### Annual Projection
- Weekly savings: 215 minutes (3.6 hours)
- Monthly savings: 860 minutes (14.3 hours)
- Annual savings: 10,320 minutes (172 hours / 21.5 workdays)

### Business Case Summary
AI tools are saving approximately 3.6 hours per week on routine operations tasks, projecting to 172 hours annually. At an average manager rate, this represents significant productivity gains that can be reinvested in strategic initiatives and team development.

### Optimization Recommendations
1. Expand email automation to team announcements
2. Create templates for recurring dive deep categories
3. Automate meeting notes post-meeting
```

#### Validation

- **Effectiveness score:** 8.5/10
- **Tested in tool:** ✅ Yes
- **Duplicate check:** ✅ Unique (Calculation focus)

---

## Category: Web Automation

### Prompt 2: Web Data Extractor

🟡 **Tool:** GitHub Copilot (Agent Mode + Playwright MCP)
📋 **Category:** Web Automation
⏱️ **When to use:** Extracting structured data from public websites
⭐ **Effectiveness:** 8.5/10

#### Template

```
ROLE: You are a data extraction specialist using browser automation.

CONTEXT: I need to extract [DATA TYPE] from [WEBSITE URL]. This is a public website with [DESCRIBE CONTENT STRUCTURE].

TASK: Navigate to the URL, identify the [TARGET ELEMENTS], and extract [SPECIFIC DATA POINTS]. Handle pagination if present.

FORMAT: Return the extracted data as a markdown table with columns for [COLUMN 1], [COLUMN 2], [COLUMN 3]. Include a summary count at the end.
```

#### Example (Filled In)

```
ROLE: You are a data extraction specialist using browser automation.

CONTEXT: I need to extract user information from https://jsonplaceholder.typicode.com/users. This is a public API endpoint with JSON data containing user records.

TASK: Navigate to the URL, identify the user entries, and extract name, email, and city for each user.

FORMAT: Return the extracted data as a markdown table with columns for Name, Email, and City. Include a summary count at the end.
```

#### Sample Output

```markdown
## Extracted User Data

| Name | Email | City |
|------|-------|------|
| Leanne Graham | Sincere@april.biz | Gwenborough |
| Ervin Howell | Shanna@melissa.tv | Wisokyburgh |
| Clementine Bauch | Nathan@yesenia.net | McKenziehaven |
| Patricia Lebsack | Julianne.OConner@kory.org | South Elvis |
| Chelsey Dietrich | Lucio_Hettinger@annie.ca | Roscoeview |

**Total Records:** 5 users extracted
**Source:** jsonplaceholder.typicode.com
**Extraction Date:** January 2026
```

#### Customization Tips

1. **For different data structures:** Describe the HTML elements (tables, lists, cards)
2. **For multiple pages:** Add "navigate through pagination" to the task
3. **For filtered data:** Add criteria like "only extract items where [condition]"

#### Iterations to Try

- "Also extract phone numbers"
- "Filter to only users in specific cities"
- "Save results as a CSV file"
- "Add validation for missing data"

#### Validation

- **Effectiveness score:** 8.5/10
- **Tested in tool:** ✅ Yes
- **Duplicate check:** ✅ Unique (Playwright MCP specific)

---

## Category: File Automation

### Prompt 3: Project Folder Generator

🟡 **Tool:** GitHub Copilot (Agent Mode + Filesystem MCP)
📋 **Category:** File Automation
⏱️ **When to use:** Setting up standardized project structures
⭐ **Effectiveness:** 9/10

#### Template

```
ROLE: You are a project setup specialist creating organized workspace structures.

CONTEXT: I'm starting a new [PROJECT TYPE] project called [PROJECT NAME]. This is for [PURPOSE/GOAL]. I need a professional structure that follows best practices.

TASK: Create a complete project folder structure with:
- README.md with project description, requirements, and getting started sections
- Appropriate subfolders for [LIST FOLDER TYPES]
- A .gitignore file with relevant ignores for [LANGUAGE/FRAMEWORK]
- Placeholder files in key folders (to preserve empty directories)

FORMAT: Create all files and folders. Make the README detailed enough to understand the project at a glance. Add comments in config files explaining each section.
```

#### Example (Filled In)

```
ROLE: You are a project setup specialist creating organized workspace structures.

CONTEXT: I'm starting a new KPI automation project called "ops-metrics-dashboard". This is for automatically generating daily operations metrics from CSV exports. I need a professional structure that follows best practices.

TASK: Create a complete project folder structure with:
- README.md with project description, requirements, and getting started sections
- Appropriate subfolders for source code, data inputs, outputs, config, and documentation
- A .gitignore file with relevant ignores for Python
- Placeholder files in key folders (to preserve empty directories)

FORMAT: Create all files and folders. Make the README detailed enough to understand the project at a glance. Add comments in config files explaining each section.
```

#### Sample Output (Created Files)

```
ops-metrics-dashboard/
├── README.md
├── .gitignore
├── src/
│   ├── __init__.py
│   └── main.py
├── data/
│   ├── input/
│   │   └── .gitkeep
│   └── output/
│       └── .gitkeep
├── config/
│   └── settings.json
├── docs/
│   └── usage.md
└── tests/
    └── test_main.py
```

#### Customization Tips

1. **For different languages:** Replace "Python" with your stack
2. **For team projects:** Add CONTRIBUTING.md and CODE_OF_CONDUCT.md requests
3. **For complex projects:** Include CI/CD config templates

#### Iterations to Try

- "Add a Makefile for common commands"
- "Create a Docker configuration"
- "Add example data files"
- "Include unit test templates"

#### Validation

- **Effectiveness score:** 9/10
- **Tested in tool:** ✅ Yes
- **Duplicate check:** ✅ Evolution of Week 3 prompt (added MCP file creation)

---

## Category: Orchestration

### Prompt 4: Multi-Step Workflow Builder

🟡 **Tool:** GitHub Copilot (Agent Mode)
📋 **Category:** Orchestration
⏱️ **When to use:** Creating complex automations with multiple sequential steps
⭐ **Effectiveness:** 8/10

#### Template

```
ROLE: You are a workflow automation specialist designing multi-step processes.

CONTEXT: I need to automate [OVERALL GOAL]. This involves multiple steps that must happen in sequence:
1. [STEP 1 DESCRIPTION]
2. [STEP 2 DESCRIPTION]
3. [STEP 3 DESCRIPTION]

Each step depends on the output of the previous step. The workflow should [QUALITY REQUIREMENTS].

TASK: Execute this workflow step by step:
- For each step, show what you're doing before executing
- Verify each step completed successfully before proceeding
- If any step fails, stop and report the issue
- At the end, summarize what was accomplished

FORMAT: Provide a running log of each step with status indicators. Final output should include summary metrics and any files created.
```

#### Example (Filled In)

```
ROLE: You are a workflow automation specialist designing multi-step processes.

CONTEXT: I need to automate a weekly report generation workflow. This involves multiple steps that must happen in sequence:
1. Read the raw data from weekly-data.csv
2. Analyze the data to identify key metrics and trends
3. Generate a formatted report with visualizations descriptions
4. Save the report as weekly-report.md

Each step depends on the output of the previous step. The workflow should handle errors gracefully and provide clear status updates.

TASK: Execute this workflow step by step:
- For each step, show what you're doing before executing
- Verify each step completed successfully before proceeding
- If any step fails, stop and report the issue
- At the end, summarize what was accomplished

FORMAT: Provide a running log of each step with status indicators. Final output should include summary metrics and any files created.
```

#### Sample Output

```markdown
## Workflow Execution Log

### Step 1: Read Data
**Status:** ✅ Complete
- Read weekly-data.csv
- Found 156 records across 7 days
- Columns: date, orders, units, returns, associates

### Step 2: Analyze Data
**Status:** ✅ Complete
- Average daily orders: 22.3
- Total units processed: 4,892
- Return rate: 2.1%
- Peak day: Wednesday (34 orders)

### Step 3: Generate Report
**Status:** ✅ Complete
- Created executive summary
- Added metrics table
- Included trend analysis
- Added recommendations section

### Step 4: Save Report
**Status:** ✅ Complete
- Saved as weekly-report.md
- File size: 2.4 KB

## Summary
- **Total Steps:** 4
- **Completed:** 4
- **Failed:** 0
- **Files Created:** weekly-report.md
- **Records Processed:** 156
```

#### Customization Tips

1. **For error-prone workflows:** Add rollback instructions
2. **For parallel steps:** Specify which steps can run simultaneously
3. **For approval gates:** Add "pause for confirmation" between critical steps

#### Iterations to Try

- "Add email notification at completion"
- "Include error recovery logic"
- "Add validation checks between steps"
- "Create a reusable template from this workflow"

#### Validation

- **Effectiveness score:** 8/10
- **Tested in tool:** ✅ Yes
- **Duplicate check:** ✅ Unique (Orchestration pattern)

---

## Category: Documentation

### Prompt 6: Personal Project Documenter

🟢 **Tool:** Bottle Rocket (Tesla Data OK)
📋 **Category:** Documentation
⏱️ **When to use:** Creating documentation for automation projects
⭐ **Effectiveness:** 8/10

#### Template

```
ROLE: You are a technical writer creating clear, actionable documentation.

CONTEXT: I've built an automation for [PROJECT NAME] that [WHAT IT DOES]. It uses [TOOLS USED]. The audience is [AUDIENCE - team members, leadership, etc.] who need to [UNDERSTAND/USE/MAINTAIN] this automation.

TASK: Create documentation that includes:
- Project overview (what it does and why)
- Prerequisites (what's needed to run it)
- Step-by-step usage instructions
- Example inputs and outputs
- Troubleshooting guide (common issues)
- Time savings summary

FORMAT: Use clear headers, bullet points for steps, and code blocks for commands. Keep it to one page if possible. Include a quick reference section at the end.
```

#### Example (Filled In)

```
ROLE: You are a technical writer creating clear, actionable documentation.

CONTEXT: I've built an automation for "Daily Performance Email Generator" that creates daily performance summary emails from KPI data. It uses Bottle Rocket for data analysis and GitHub Copilot for formatting. The audience is team members who need to use this automation daily.

TASK: Create documentation that includes:
- Project overview (what it does and why)
- Prerequisites (what's needed to run it)
- Step-by-step usage instructions
- Example inputs and outputs
- Troubleshooting guide (common issues)
- Time savings summary

FORMAT: Use clear headers, bullet points for steps, and code blocks for commands. Keep it to one page if possible. Include a quick reference section at the end.
```

#### Sample Output

```markdown
# Daily Performance Email Generator

## Overview
Automatically generates professional performance summary emails from KPI data, saving 20 minutes per email.

## Prerequisites
- Access to Bottle Rocket (go.tesla.com/chat)
- Daily KPI data available
- Email client open

## Usage Instructions

1. **Gather your data**
   - Open daily KPI report
   - Note: orders processed, on-time %, headcount

2. **Generate email**
   - Open Bottle Rocket
   - Paste this prompt with your numbers:
   ```
   Create a performance email: [X] orders, [Y]% on-time, [Z] associates
   ```

3. **Review and send**
   - Check numbers are correct
   - Adjust tone if needed
   - Copy to email and send

## Example

**Input:**
```
Create a performance email: 1,250 orders, 98.5% on-time, 32 associates
```

**Output:**
> Subject: Daily Performance Update - [Date]
>
> Team processed 1,250 orders today with 98.5% on-time delivery rate...

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Numbers don't match | Re-verify source data |
| Tone too formal | Add "make it conversational" |
| Missing sections | Specify what to include |

## Time Savings
- Before: 30 minutes per email
- After: 10 minutes per email
- **Savings: 20 minutes/day (100 min/week)**

## Quick Reference
```
Open Bottle Rocket → Paste prompt with data → Review → Send
```
```

#### Validation

- **Effectiveness score:** 8/10
- **Tested in tool:** ✅ Yes
- **Duplicate check:** ✅ Unique (Project documentation focus)

---

## Quick Reference Card

| Task | Prompt Start | Tool | Technique |
|------|-------------|------|-----------|
| Generate dive deep report | "ROLE: Operations analyst preparing..." | 🟡 Agent | Filesystem MCP |
| Extract web data | "ROLE: Data extraction specialist..." | 🟡 Agent | Playwright MCP |
| Create project folders | "ROLE: Project setup specialist..." | 🟡 Agent | Filesystem MCP |
| Build multi-step workflow | "ROLE: Workflow automation specialist..." | 🟡 Agent | Orchestration |
| Calculate time savings | "ROLE: Productivity analyst..." | 🟢 BR | Analysis |
| Document project | "ROLE: Technical writer..." | 🟢 BR | Documentation |

---

## Tips for Week 4 Prompts

1. **MCP prompts require Agent Mode** - Always switch to Agent Mode in Copilot Chat
2. **Verify MCP servers are running** - Check that Playwright and Filesystem MCPs are started
3. **Be explicit about file operations** - Specify exact file names and paths
4. **Review before executing** - Agent Mode shows plans before acting
5. **Policy reminder** - MCP = NO Tesla Data; Bottle Rocket = Tesla Data OK

---

## Prompt Validation Log

| Prompt | Clarity | Completeness | Output Quality | Average | Pass? |
|--------|---------|--------------|----------------|---------|-------|
| Dive Deep Report Generator | 9/10 | 9/10 | 9/10 | 9/10 | ✅ |
| Web Data Extractor | 8/10 | 9/10 | 8/10 | 8.5/10 | ✅ |
| Project Folder Generator | 9/10 | 9/10 | 9/10 | 9/10 | ✅ |
| Multi-Step Workflow Builder | 8/10 | 8/10 | 8/10 | 8/10 | ✅ |
| Time Savings Calculator | 9/10 | 8/10 | 8/10 | 8.5/10 | ✅ |
| Personal Project Documenter | 8/10 | 8/10 | 8/10 | 8/10 | ✅ |

---

## Cross-Week Prompt Inventory

| Prompt Name | This Week | Previous Weeks | Status |
|-------------|-----------|----------------|--------|
| Dive Deep Report Generator | ✅ New | N/A | Unique (MCP-powered) |
| Web Data Extractor | ✅ New | N/A | Unique (Playwright MCP) |
| Project Folder Generator | ✅ Enhanced | Week 3 had basic version | MCP file creation added |
| Multi-Step Workflow Builder | ✅ New | N/A | Unique (Orchestration) |
| Time Savings Calculator | ✅ New | N/A | Unique (Course culmination) |
| Personal Project Documenter | ✅ New | N/A | Unique (Documentation) |

---

## Quality Checklist

| Check | Requirement | Status |
|-------|-------------|--------|
| Prompt count | 5+ prompts per week | ✅ 6 prompts |
| Formula adherence | All follow ROLE+CONTEXT+TASK+FORMAT | ✅ All follow formula |
| Examples | All have filled-in examples | ✅ All have examples |
| Testing | All effectiveness score 7+ | ✅ Average: 8.5/10 |
| Deduplication | No duplicates from previous weeks | ✅ All unique or enhanced |
| Tool assignment | Correct tool per prompt | ✅ Verified |
| Validation log | Complete for all prompts | ✅ Complete |

---

*Prompts designed for Week 4: Advanced Automation, MCPs & Multi-Agent Orchestration*
*Primary Techniques: MCP Integration, Multi-Step Workflows, Report Automation*
*Created: January 2026*
