# Week 4 Prompt Library: Advanced Automation & Workflow Orchestration

This library contains reusable prompts for Agent Mode workflows, Power Automate Desktop automations, complex task orchestration, project memory configuration, and AI quality evaluation.

**Total Prompts:** 10
**Average Effectiveness:** 8.5/10

**Tool Legend:**
- 🟢 Bottle Rocket - Tesla Data OK
- 🟡 GitHub Copilot - No Tesla Data

**Technique Focus:**
- Agent Mode orchestration
- Multi-step workflows
- Power Automate Desktop integration
- Report generation
- Project memory configuration
- Quality evaluation
- Security review

---

## Prompts Overview

| # | Prompt Name | Category | Tool | Effectiveness Score |
|---|-------------|----------|------|---------------------|
| 1 | Dive Deep Report Generator | Report Automation | 🟡 | 9/10 |
| 2 | Power Automate Workflow Designer | Desktop Automation | 🟢 | 8.5/10 |
| 3 | Project Folder Generator | File Automation | 🟡 | 9/10 |
| 4 | Multi-Step Workflow Builder | Orchestration | 🟡 | 8/10 |
| 5 | Time Savings Calculator | Analysis | 🟢 | 8.5/10 |
| 6 | Personal Project Documenter | Documentation | 🟢 | 8/10 |
| 7 | Project Memory Setup | Agent Configuration | 🟡 | 9/10 |
| 8 | Agent Quality Scorecard | Evaluation | 🟢 | 8/10 |
| 9 | Security Review Checklist | Security | 🟢 | 9/10 |
| 10 | Automation Decision Framework | Planning | 🟢 | 8/10 |

**Average Effectiveness:** 8.5/10

---

## Category: Report Automation

### Prompt 1: Dive Deep Report Generator

🟡 **Tool:** GitHub Copilot (Agent Mode)
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

#### Placeholders

| Placeholder | Description | Example |
|-------------|-------------|---------|
| [DATA TYPE] | Type of data being analyzed | shipment data, KPI data, incident data |
| [FILENAME] | Name of the input file | sample-data.csv, weekly-metrics.csv |
| [TIME PERIOD] | Time range covered | yesterday's, last week's, January |
| [METRIC/EVENTS] | What the data measures | deliveries and misses, orders processed |
| [AUDIENCE LEVEL] | Who will read this | regional directors, site leadership |
| [NUMBER] | How many causes to identify | 3, 5 |
| [DIMENSION] | How to break down data | customer, shift, carrier |
| [OUTPUT_FILENAME] | Name for the report file | dive-deep-report, weekly-analysis |

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

#### Why It Works

- **Clear role:** Establishes expertise and perspective
- **Specific context:** Provides file name, audience, and purpose
- **Structured task:** Lists exact components needed
- **Format constraints:** Specifies file output and word limits

#### Expected Output

A complete markdown report file with executive summary, root cause table, impact breakdown, and actionable recommendations with owners and timelines.

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
- **Tested in tool:** Yes
- **Duplicate check:** Unique (Agent Mode version)

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

#### Placeholders

| Placeholder | Description | Example |
|-------------|-------------|---------|
| [TIME PERIOD] | How long you've tracked | 4 weeks, 2 months |
| [TASK 1-3] | Tasks being measured | weekly performance email, dive deep reports |
| [TIME] | Minutes per task | 30, 45, 20 |
| [FREQUENCY] | How often per week | 5, 2, 3 |

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

#### Why It Works

- **Structured data input:** Before/after format makes calculation clear
- **Specific output requests:** Tables, projections, and summary
- **Business focus:** Connects time savings to ROI narrative

#### Expected Output

A complete ROI analysis with weekly calculations, annual projections, executive summary, and recommendations for further optimization.

#### Validation

- **Effectiveness score:** 8.5/10
- **Tested in tool:** Yes
- **Duplicate check:** Unique (Calculation focus)

---

## Category: Desktop Automation

### Prompt 2: Power Automate Workflow Designer

🟢 **Tool:** Bottle Rocket (Tesla Data OK)
📋 **Category:** Desktop Automation
⏱️ **When to use:** Designing Power Automate Desktop flows for repetitive tasks
⭐ **Effectiveness:** 8.5/10

#### Template

```
ROLE: You are a Power Automate Desktop workflow designer helping operations teams automate repetitive tasks.

CONTEXT: I need to automate [TASK DESCRIPTION]. Currently this task involves:
- [STEP 1]: [DESCRIPTION]
- [STEP 2]: [DESCRIPTION]
- [STEP 3]: [DESCRIPTION]

The task runs [FREQUENCY] and takes approximately [CURRENT TIME] to complete manually. The data sources include [DATA SOURCES].

TASK: Design a Power Automate Desktop flow that:
1. Documents each action in the flow with clear descriptions
2. Identifies variables needed to store data between steps
3. Includes error handling for common failure points
4. Notes any manual approval steps required

FORMAT: Provide the flow design as:
- Overview section explaining what the flow does
- Step-by-step action list in Power Automate terminology
- Variables table listing name, type, and purpose
- Error handling section with common issues and responses
- Time savings estimate
```

#### Placeholders

| Placeholder | Description | Example |
|-------------|-------------|---------|
| [TASK DESCRIPTION] | What you're automating | daily KPI report distribution |
| [STEP 1-3] | Current manual steps | open email, copy data, paste to Excel |
| [FREQUENCY] | How often task runs | daily, weekly, every Monday |
| [CURRENT TIME] | Time spent manually | 20 minutes, 1 hour |
| [DATA SOURCES] | Where data comes from | Excel files, emails, web portals |

#### Example (Filled In)

```
ROLE: You are a Power Automate Desktop workflow designer helping operations teams automate repetitive tasks.

CONTEXT: I need to automate daily KPI email distribution. Currently this task involves:
- Step 1: Open the daily KPI Excel file from the shared drive
- Step 2: Copy the summary table from the KPI sheet
- Step 3: Create a new email in Outlook with the KPI data pasted and formatted

The task runs daily at 8 AM and takes approximately 15 minutes to complete manually. The data sources include Excel files on a shared drive and Outlook email.

TASK: Design a Power Automate Desktop flow that automates this process with proper error handling and logging.
```

#### Sample Output

```markdown
## Power Automate Desktop Flow: Daily KPI Email Distribution

### Overview
This flow automatically opens the daily KPI Excel file, extracts the summary table, and sends a formatted email to the distribution list every morning.

### Flow Actions

| Step | Action Type | Details |
|------|-------------|---------|
| 1 | Launch Excel | Open file: `\\shared\reports\daily-kpi.xlsx` |
| 2 | Read Excel worksheet | Sheet: "Summary", Range: A1:F10 |
| 3 | Store to variable | Variable: `%KPIData%` |
| 4 | Close Excel | Save: No |
| 5 | Launch Outlook | New email window |
| 6 | Populate email | To: `kpi-distro@tesla.com` |
| 7 | Set subject | `Daily KPI Summary - %CurrentDate%` |
| 8 | Set body | Insert `%KPIData%` as formatted table |
| 9 | Send email | Auto-send enabled |
| 10 | Log completion | Write to log file |

### Variables

| Name | Type | Purpose |
|------|------|---------|
| %KPIData% | DataTable | Stores the KPI summary table |
| %CurrentDate% | DateTime | Today's date for email subject |
| %FilePath% | Text | Path to daily KPI file |
| %Status% | Text | Flow execution status |

### Error Handling

| Error | Response |
|-------|----------|
| File not found | Send alert email to owner, log error, exit |
| Excel open by another user | Wait 30 seconds, retry 3 times, then alert |
| Outlook not responding | Restart Outlook, retry send |
| Network drive unavailable | Log error, send alert, skip execution |

### Time Savings

| Metric | Value |
|--------|-------|
| Manual time | 15 minutes |
| Automated time | 1 minute (monitoring) |
| Daily savings | 14 minutes |
| Annual savings | 58 hours |
```

#### Why It Works

- **Structured design:** Maps to actual Power Automate actions
- **Complete specification:** Includes variables, error handling, and logging
- **Implementation-ready:** Can be directly translated to Power Automate Desktop

#### Expected Output

A complete flow design document with actions, variables, error handling, and time savings estimate ready for implementation in Power Automate Desktop.

#### Customization Tips

1. **For web data extraction:** Add browser actions (Launch browser, Navigate to URL, Extract data)
2. **For multi-file processing:** Add loop actions for batch operations
3. **For approval workflows:** Add "Display message" actions for manual checkpoints

#### Iterations to Try

- "Add conditional logic for different scenarios"
- "Include a retry mechanism for failed steps"
- "Design a companion flow for error notification"
- "Add scheduling triggers"

#### Validation

- **Effectiveness score:** 8.5/10
- **Tested in tool:** Yes
- **Duplicate check:** Unique (Power Automate Desktop design)

---

## Category: File Automation

### Prompt 3: Project Folder Generator

🟡 **Tool:** GitHub Copilot (Agent Mode)
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

#### Placeholders

| Placeholder | Description | Example |
|-------------|-------------|---------|
| [PROJECT TYPE] | Kind of project | KPI automation, report generator |
| [PROJECT NAME] | Name for the project | ops-metrics-dashboard |
| [PURPOSE/GOAL] | What it does | generating daily operations metrics |
| [LIST FOLDER TYPES] | Folders needed | source code, data inputs, outputs, config |
| [LANGUAGE/FRAMEWORK] | Tech stack | Python, JavaScript |

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

#### Why It Works

- **Professional framing:** Establishes best practices expectation
- **Complete specification:** Lists all required components
- **Documentation focus:** Ensures project is self-explanatory

#### Expected Output

A complete folder structure with README, configuration files, placeholder files, and organized subdirectories ready for development.

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
- **Tested in tool:** Yes
- **Duplicate check:** Evolution of Week 3 prompt (Agent Mode file creation)

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

#### Placeholders

| Placeholder | Description | Example |
|-------------|-------------|---------|
| [OVERALL GOAL] | What the workflow achieves | weekly report generation |
| [STEP 1-3 DESCRIPTION] | Individual steps | read data, analyze, generate report |
| [QUALITY REQUIREMENTS] | Standards to meet | handle errors gracefully, provide status updates |

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
**Status:** Complete
- Read weekly-data.csv
- Found 156 records across 7 days
- Columns: date, orders, units, returns, associates

### Step 2: Analyze Data
**Status:** Complete
- Average daily orders: 22.3
- Total units processed: 4,892
- Return rate: 2.1%
- Peak day: Wednesday (34 orders)

### Step 3: Generate Report
**Status:** Complete
- Created executive summary
- Added metrics table
- Included trend analysis
- Added recommendations section

### Step 4: Save Report
**Status:** Complete
- Saved as weekly-report.md
- File size: 2.4 KB

## Summary
- **Total Steps:** 4
- **Completed:** 4
- **Failed:** 0
- **Files Created:** weekly-report.md
- **Records Processed:** 156
```

#### Why It Works

- **Sequential dependency:** Establishes step-by-step execution
- **Error handling:** Built-in failure detection and reporting
- **Verification loop:** Confirms each step before proceeding

#### Expected Output

A step-by-step execution log with status indicators, metrics summary, and list of files created or modified.

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
- **Tested in tool:** Yes
- **Duplicate check:** Unique (Orchestration pattern)

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

#### Placeholders

| Placeholder | Description | Example |
|-------------|-------------|---------|
| [PROJECT NAME] | Name of the automation | Daily Performance Email Generator |
| [WHAT IT DOES] | Brief description | creates daily performance summary emails |
| [TOOLS USED] | AI tools involved | Bottle Rocket, GitHub Copilot |
| [AUDIENCE] | Who will use this | team members, leadership |
| [UNDERSTAND/USE/MAINTAIN] | Purpose of documentation | use this automation daily |

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
Open Bottle Rocket -> Paste prompt with data -> Review -> Send
```
```

#### Why It Works

- **Audience awareness:** Tailors content to user needs
- **Complete coverage:** All sections needed for standalone documentation
- **Practical focus:** Emphasizes usage over theory

#### Expected Output

A one-page documentation with overview, prerequisites, step-by-step instructions, examples, troubleshooting guide, and time savings summary.

#### Validation

- **Effectiveness score:** 8/10
- **Tested in tool:** Yes
- **Duplicate check:** Unique (Project documentation focus)

---

## Category: Agent Configuration

### Prompt 7: Project Memory Setup

🟡 **Tool:** GitHub Copilot (Agent Mode)
📋 **Category:** Agent Configuration
⏱️ **When to use:** Configuring persistent project memory for Agent Mode
⭐ **Effectiveness:** 9/10

#### Template

```
ROLE: You are an AI configuration specialist helping set up persistent project memory for a distribution center operations assistant.

CONTEXT: I manage [DC NAME] distribution center in [LOCATION]. My team has [HEADCOUNT] associates across [SHIFTS] shifts. Our key metrics are [KPI LIST]. I need to create a .github/copilot-instructions.md file so the AI assistant always knows my operational context.

TASK: Create a comprehensive copilot-instructions.md file that includes:
- Site identification (name, location, team size)
- Key metrics and targets (with current values)
- Common terminology specific to our operation
- Standard report formats I use
- Frequent tasks I need help with
- My communication preferences

FORMAT: Create the file at .github/copilot-instructions.md with clear markdown sections. Use bullet points for lists. Include example values that I can customize. Keep under 500 words so it does not consume too much context window.
```

#### Placeholders

| Placeholder | Description | Example |
|-------------|-------------|---------|
| [DC NAME] | Distribution center name | Newburgh, Tampa, Chicago |
| [LOCATION] | Geographic location | Newburgh NY, Tampa FL |
| [HEADCOUNT] | Number of associates | 32, 45, 50 |
| [SHIFTS] | Number of shifts | 2, 3 |
| [KPI LIST] | Key performance indicators | shipment accuracy, on-time delivery, units per hour |

#### Example (Filled In)

```
ROLE: You are an AI configuration specialist helping set up persistent project memory for a distribution center operations assistant.

CONTEXT: I manage Newburgh distribution center in Newburgh NY. My team has 32 associates across 2 shifts. Our key metrics are shipment accuracy, on-time delivery, units per hour, and safety incidents. I need to create a .github/copilot-instructions.md file so the AI assistant always knows my operational context.

TASK: Create a comprehensive copilot-instructions.md file that includes:
- Site identification (name, location, team size)
- Key metrics and targets (with current values)
- Common terminology specific to our operation
- Standard report formats I use
- Frequent tasks I need help with
- My communication preferences

FORMAT: Create the file at .github/copilot-instructions.md with clear markdown sections. Use bullet points for lists. Include example values that I can customize. Keep under 500 words so it does not consume too much context window.
```

#### Sample Output

```markdown
# DC Assistant Context

## Site Information
- **Site:** Newburgh Distribution Center
- **Location:** Newburgh, NY
- **Team Size:** 32 associates, 4 leads, 1 AGM
- **Shifts:** Day (6 AM - 2 PM), Night (2 PM - 10 PM)
- **Operation Type:** Parts distribution

## Key Metrics and Targets

| Metric | Target | Current |
|--------|--------|---------|
| Shipment Accuracy | 99.5% | 99.2% |
| On-Time Delivery | 98% | 97.5% |
| Units Per Hour | 45 UPH | 42 UPH |
| Safety Incidents | 0/month | 1 YTD |

## Terminology
- **CPT:** Critical Pull Time (deadline for orders)
- **Wave:** Batch of orders released for picking
- **Dive Deep:** Root cause analysis report
- **OT:** Overtime hours
- **HC:** Headcount

## Standard Report Formats
- **Daily Summary:** Executive summary, metrics table, action items
- **Dive Deep:** Root cause, 5-whys, corrective actions with owners
- **Weekly Update:** Trends, wins, watch items, next week focus

## Common Tasks
- Analyze missed shipment data
- Draft shift handoff summaries
- Create performance update emails
- Generate dive deep reports from CSV data
- Calculate labor requirements

## Communication Preferences
- Keep summaries under 200 words
- Use tables for data comparisons
- Include action items with owners and due dates
- Tone: Professional, direct, data-driven
- Always include "Next Steps" section
```

#### Why It Works

- **Comprehensive context:** Covers all aspects the AI needs to know
- **Structured format:** Easy to scan and update
- **Token-efficient:** Stays under 500 words to preserve context window
- **Actionable:** Includes specific preferences and common tasks

#### Expected Output

A complete copilot-instructions.md file saved to .github/ folder with site context, metrics, terminology, report formats, common tasks, and communication preferences.

#### Customization Tips

1. **For multiple DCs:** Create separate workspace folders with different instructions files
2. **For seasonal changes:** Add a "Current Focus" section that changes quarterly
3. **For team handoffs:** Include escalation contacts and approval thresholds

#### Iterations to Try

- "Add a section for carrier-specific terminology"
- "Include my email signature template"
- "Add safety protocol reminders"
- "Include shift-specific context"

#### Validation

- **Effectiveness score:** 9/10
- **Tested in tool:** Yes
- **Duplicate check:** Unique (Project memory configuration)

---

## Category: Evaluation

### Prompt 8: Agent Quality Scorecard

🟢 **Tool:** Bottle Rocket (Tesla Data OK)
📋 **Category:** Evaluation
⏱️ **When to use:** Rating AI agent outputs before using them in production
⭐ **Effectiveness:** 8/10

#### Template

```
ROLE: You are a quality assurance specialist evaluating AI-generated outputs for operations use.

CONTEXT: I received the following output from an AI agent for [TASK TYPE]:

---
[PASTE THE AI OUTPUT HERE]
---

The output was supposed to [INTENDED PURPOSE]. It will be used by [AUDIENCE] for [USE CASE].

TASK: Evaluate this output using the Quality Scorecard:
1. **Accuracy (1-5):** Are the facts, numbers, and conclusions correct?
2. **Completeness (1-5):** Does it include all requested components?
3. **Format (1-5):** Does it follow the requested structure and style?
4. **Speed/Efficiency (1-5):** Was this faster than doing it manually?
5. **Usability (1-5):** Can I use this with minor edits or does it need major rework?

FORMAT: Provide:
- Score for each dimension with brief justification
- Total score out of 25
- Overall verdict: READY (20+), NEEDS EDITING (15-19), or REWORK (below 15)
- Specific feedback for improving the prompt if score is below 20
```

#### Placeholders

| Placeholder | Description | Example |
|-------------|-------------|---------|
| [TASK TYPE] | What the AI was asked to do | dive deep report, email draft |
| [AI OUTPUT] | The actual output to evaluate | (paste the full output) |
| [INTENDED PURPOSE] | What it should accomplish | analyze missed shipments |
| [AUDIENCE] | Who will see this | regional director, team leads |
| [USE CASE] | How it will be used | weekly review meeting |

#### Example (Filled In)

```
ROLE: You are a quality assurance specialist evaluating AI-generated outputs for operations use.

CONTEXT: I received the following output from an AI agent for a weekly performance summary:

---
## Weekly Performance Summary - Newburgh DC

This week we did pretty good. Orders were up and we hit most of our targets.

Key Stats:
- Orders: A lot
- On-time: Good
- Safety: Fine

Next week we should keep doing what we're doing.
---

The output was supposed to provide a detailed weekly KPI summary with specific numbers and actionable insights. It will be used by the Regional Director for the weekly leadership call.

TASK: Evaluate this output using the Quality Scorecard.
```

#### Sample Output

```markdown
## Quality Scorecard Evaluation

### Dimension Scores

| Dimension | Score | Justification |
|-----------|-------|---------------|
| **Accuracy** | 1/5 | No specific numbers provided; "a lot" and "good" are not measurable |
| **Completeness** | 2/5 | Missing: actual KPI values, trends, root causes, action items |
| **Format** | 2/5 | Basic structure present but no tables, no metrics breakdown |
| **Speed/Efficiency** | 4/5 | Generated quickly, but quality issues negate time savings |
| **Usability** | 1/5 | Cannot be used as-is; requires complete rewrite with actual data |

### Total Score: 10/25

### Verdict: REWORK

This output is not suitable for leadership presentation. The lack of specific data makes it unusable.

### Prompt Improvement Recommendations

1. **Add specific data in the prompt:** Include actual KPI values for the week
2. **Request table format:** "Present metrics in a table with Actual vs. Target columns"
3. **Require quantification:** "All metrics must include specific numbers, not qualitative descriptions"
4. **Add examples:** Provide a sample of what a good summary looks like

### Revised Prompt Suggestion

Add to your prompt:
```
Include specific numbers for all metrics. Use this format:
| Metric | Target | Actual | Status |
Do not use vague terms like "good" or "a lot" - use actual values.
```
```

#### Why It Works

- **Structured evaluation:** Five consistent dimensions for comparison
- **Actionable thresholds:** Clear verdict categories guide next steps
- **Improvement focus:** Provides specific prompt fixes when quality is low

#### Expected Output

A complete scorecard with dimension scores, total score, verdict, and specific recommendations for prompt improvement if the output falls short.

#### Customization Tips

1. **For safety-critical outputs:** Weight accuracy higher (multiply by 2)
2. **For time-sensitive tasks:** Weight speed/efficiency higher
3. **For executive presentations:** Weight format and usability higher

#### Iterations to Try

- "Compare this output to a previous high-quality example"
- "Suggest three specific edits to make this output usable"
- "Rate this on a different scale for informal use cases"

#### Validation

- **Effectiveness score:** 8/10
- **Tested in tool:** Yes
- **Duplicate check:** Unique (Quality evaluation framework)

---

## Category: Security

### Prompt 9: Security Review Checklist

🟢 **Tool:** Bottle Rocket (Tesla Data OK)
📋 **Category:** Security
⏱️ **When to use:** Reviewing terminal commands, file operations, or web automation before approving
⭐ **Effectiveness:** 9/10

#### Template

```
ROLE: You are a security reviewer helping a non-technical manager evaluate AI agent actions before approval.

CONTEXT: An AI agent in [TOOL NAME] is requesting permission to execute the following action:

---
Action Type: [COMMAND/FILE OPERATION/WEB ACTION]
Details: [PASTE THE SPECIFIC ACTION HERE]
---

I need to decide whether to approve or deny this action. I am not a developer but I need to ensure this is safe.

TASK: Review this action against the security checklist:

1. **Data Exposure:** Does this action expose any sensitive data (passwords, API keys, PII)?
2. **Destructive Potential:** Could this action delete, overwrite, or corrupt important files?
3. **Scope Creep:** Is the action doing more than what I asked for?
4. **External Communication:** Does this send data outside my local environment?
5. **Reversibility:** If this goes wrong, can I undo it easily?

FORMAT: Provide:
- YES/NO answer for each checklist item with explanation
- Overall recommendation: APPROVE, DENY, or MODIFY
- If MODIFY, specify what should change before approval
- Plain language explanation suitable for a non-technical reviewer
```

#### Placeholders

| Placeholder | Description | Example |
|-------------|-------------|---------|
| [TOOL NAME] | Which AI tool is requesting | GitHub Copilot Agent Mode |
| [COMMAND/FILE OPERATION/WEB ACTION] | Type of action | Terminal command, File write, Browser navigation |
| [SPECIFIC ACTION] | The exact action details | rm -rf /data/*, write to config.json |

#### Example (Filled In)

```
ROLE: You are a security reviewer helping a non-technical manager evaluate AI agent actions before approval.

CONTEXT: An AI agent in GitHub Copilot Agent Mode is requesting permission to execute the following action:

---
Action Type: Terminal Command
Details: rm -rf ./temp-data/*
---

I need to decide whether to approve or deny this action. I am not a developer but I need to ensure this is safe.

TASK: Review this action against the security checklist.
```

#### Sample Output

```markdown
## Security Review: Terminal Command

### Action Under Review
```
rm -rf ./temp-data/*
```

### Checklist Evaluation

| Check | Status | Explanation |
|-------|--------|-------------|
| **Data Exposure** | NO | This command deletes files, it does not expose data externally |
| **Destructive Potential** | YES | This permanently deletes all files in temp-data folder |
| **Scope Creep** | UNCLEAR | Did you ask the agent to delete files? If not, this is scope creep |
| **External Communication** | NO | This command operates only on local files |
| **Reversibility** | NO | Deleted files cannot be recovered without backups |

### Recommendation: MODIFY

### Plain Language Explanation

This command will **permanently delete everything** in the `temp-data` folder. Once deleted, these files are gone unless you have a backup.

**Questions to ask yourself:**
1. Did I specifically ask the agent to delete files?
2. Is everything in `temp-data` truly temporary and not needed?
3. Do I have a backup if something important is in there?

### Suggested Modification

Before approving, ask the agent to:
1. List what files are in `./temp-data/` first
2. Confirm these are the files you want deleted
3. Consider moving to a "deleted" folder instead of permanent deletion

**Safer alternative command:**
```
mv ./temp-data/* ./archived-temp/
```
This moves files instead of deleting them, giving you a chance to recover if needed.
```

#### Why It Works

- **Non-technical framing:** Explains technical actions in plain language
- **Structured checklist:** Consistent evaluation criteria
- **Actionable guidance:** Provides safer alternatives when needed

#### Expected Output

A complete security review with checklist evaluation, recommendation, plain language explanation, and suggested modifications if the action is risky.

#### Customization Tips

1. **For web automation:** Add "Does this navigate to untrusted sites?" to checklist
2. **For file uploads:** Add "What data is being sent and where?"
3. **For API calls:** Add "What credentials are being used?"

#### Iterations to Try

- "Explain this command like I'm 10 years old"
- "What's the worst case scenario if I approve this?"
- "Give me three questions to ask the agent before approving"

#### Validation

- **Effectiveness score:** 9/10
- **Tested in tool:** Yes
- **Duplicate check:** Unique (Security review for non-developers)

---

## Category: Planning

### Prompt 10: Automation Decision Framework

🟢 **Tool:** Bottle Rocket (Tesla Data OK)
📋 **Category:** Planning
⏱️ **When to use:** Deciding whether to use a simple prompt, advanced prompt, Agent Mode, or Power Automate
⭐ **Effectiveness:** 8/10

#### Template

```
ROLE: You are an AI workflow consultant helping operations leaders choose the right automation approach.

CONTEXT: I need to accomplish [TASK DESCRIPTION]. Here are the details:
- Frequency: [HOW OFTEN - daily, weekly, ad-hoc]
- Complexity: [SIMPLE QUESTION / STRUCTURED OUTPUT / MULTI-STEP / RECURRING WORKFLOW]
- Data involved: [WHAT DATA - text input, CSV files, web data, internal systems]
- Time sensitivity: [URGENT / NORMAL / CAN WAIT]
- Current method: [HOW I DO IT NOW - manual, semi-automated, etc.]

TASK: Recommend the best AI approach using this decision framework:

| Approach | Best For |
|----------|----------|
| Simple Prompt | One answer, no context needed |
| Advanced Prompt (CoT/Few-Shot) | Specific format, needs reasoning |
| Agent Mode | Multiple phases, file access needed |
| Agent Mode + Power Automate + Memory | Recurring workflow, full automation |

FORMAT: Provide:
1. Recommended approach with explanation
2. Why other approaches would not work as well
3. Sample prompt or workflow outline for the recommended approach
4. Estimated time savings compared to current method
5. Any prerequisites or setup needed
```

#### Placeholders

| Placeholder | Description | Example |
|-------------|-------------|---------|
| [TASK DESCRIPTION] | What you need to accomplish | generate weekly dive deep report |
| [HOW OFTEN] | Task frequency | daily, weekly, monthly, ad-hoc |
| [COMPLEXITY] | Level of complexity | simple question, multi-step workflow |
| [WHAT DATA] | Data sources involved | CSV files, manual input, web data |
| [URGENT/NORMAL/CAN WAIT] | Time sensitivity | need it in 5 minutes, by end of week |
| [HOW I DO IT NOW] | Current process | manually in Excel, copy-paste |

#### Example (Filled In)

```
ROLE: You are an AI workflow consultant helping operations leaders choose the right automation approach.

CONTEXT: I need to accomplish a weekly missed shipments analysis. Here are the details:
- Frequency: Weekly (every Monday morning)
- Complexity: Multi-step - read CSV, analyze patterns, identify root causes, generate report
- Data involved: CSV export from WMS, historical trend data
- Time sensitivity: Normal - need by 10 AM Monday for leadership call
- Current method: Manual - export CSV, analyze in Excel, write report in Word (takes 45 minutes)

TASK: Recommend the best AI approach using the decision framework.
```

#### Sample Output

```markdown
## Automation Decision: Weekly Missed Shipments Analysis

### Recommended Approach: Agent Mode + Power Automate + Project Memory

### Why This Approach

| Factor | Analysis |
|--------|----------|
| **Frequency** | Weekly recurring = benefits from memory and templates |
| **Complexity** | Multi-step (read, analyze, report) = needs Agent Mode |
| **Data** | CSV files = Agent Mode can read files directly |
| **Time** | Predictable deadline = Power Automate can trigger on schedule |

### Why Other Approaches Fall Short

| Approach | Limitation |
|----------|------------|
| **Simple Prompt** | Cannot read CSV files; would require manual data entry |
| **Advanced Prompt** | Better than simple, but still requires copy-pasting data |
| **Agent Mode alone** | Works, but without memory you re-explain context each week |

### Recommended Workflow

**Setup (one-time, 15 minutes):**
1. Create `.github/copilot-instructions.md` with your DC context
2. Save your preferred report format as a template
3. Create a prompt template for weekly use
4. (Optional) Create Power Automate flow to prepare files and send notifications

**Weekly Execution (5 minutes):**
```
Read the file missed-shipments-week-N.csv in my workspace.
Analyze for patterns across carriers, customers, and root causes.
Generate a dive deep report using my standard format.
Save as missed-shipments-analysis-week-N.md
```

### Time Savings Estimate

| Method | Time | Notes |
|--------|------|-------|
| Current (manual) | 45 min | Excel analysis + Word report |
| Agent Mode + Power Automate + Memory | 5 min | Prompt + review |
| **Weekly Savings** | **40 min** | |
| **Annual Savings** | **34 hours** | (40 min x 52 weeks) |

### Prerequisites

- [ ] VS Code workspace with `.github/copilot-instructions.md`
- [ ] Standard report template saved
- [ ] Sample prompt template ready
- [ ] (Optional) Power Automate Desktop for scheduled triggers
```

#### Why It Works

- **Structured decision process:** Evaluates all factors systematically
- **Comparison table:** Shows why alternatives are inferior
- **Complete recommendation:** Includes setup, workflow, and time savings
- **Actionable checklist:** Clear prerequisites for implementation

#### Expected Output

A complete recommendation with approach selection, comparison to alternatives, sample workflow, time savings estimate, and setup checklist.

#### Customization Tips

1. **For urgent tasks:** Weight time-to-first-result higher
2. **For team adoption:** Consider which approach is easiest to hand off
3. **For sensitive data:** Factor in policy compliance requirements

#### Iterations to Try

- "What if I need this daily instead of weekly?"
- "How would the recommendation change if I can't use Power Automate?"
- "Create a decision tree I can use for future tasks"

#### Validation

- **Effectiveness score:** 8/10
- **Tested in tool:** Yes
- **Duplicate check:** Unique (Decision framework for AI approach selection)

---

## Quick Reference Card

| Task | Prompt Start | Tool | Technique |
|------|-------------|------|-----------|
| Generate dive deep report | "ROLE: Operations analyst preparing..." | Agent | File access |
| Design automation flow | "ROLE: Power Automate workflow designer..." | BR | Power Automate |
| Create project folders | "ROLE: Project setup specialist..." | Agent | File creation |
| Build multi-step workflow | "ROLE: Workflow automation specialist..." | Agent | Orchestration |
| Calculate time savings | "ROLE: Productivity analyst..." | BR | Analysis |
| Document project | "ROLE: Technical writer..." | BR | Documentation |
| Setup project memory | "ROLE: AI configuration specialist..." | Agent | Memory config |
| Evaluate AI output | "ROLE: Quality assurance specialist..." | BR | Evaluation |
| Review security | "ROLE: Security reviewer..." | BR | Security |
| Choose AI approach | "ROLE: AI workflow consultant..." | BR | Planning |

---

## Tips for Week 4 Prompts

1. **Agent Mode for file operations** - Switch to Agent Mode in Copilot Chat when working with files
2. **Power Automate for scheduled tasks** - Use Power Automate Desktop for recurring automations
3. **Be explicit about file operations** - Specify exact file names and paths
4. **Review before executing** - Agent Mode shows plans before acting
5. **Policy reminder** - GitHub Copilot = NO Tesla Data; Bottle Rocket = Tesla Data OK
6. **Use project memory** - Create copilot-instructions.md for consistent context
7. **Evaluate outputs** - Use the Quality Scorecard before sharing with leadership
8. **Security first** - Always review destructive actions before approving
9. **Choose the right level** - Match automation complexity to task requirements

---

## Prompt Validation Log

| Prompt | Clarity | Completeness | Output Quality | Average | Pass? |
|--------|---------|--------------|----------------|---------|-------|
| Dive Deep Report Generator | 9/10 | 9/10 | 9/10 | 9/10 | Yes |
| Web Data Extractor | 8/10 | 9/10 | 8/10 | 8.5/10 | Yes |
| Project Folder Generator | 9/10 | 9/10 | 9/10 | 9/10 | Yes |
| Multi-Step Workflow Builder | 8/10 | 8/10 | 8/10 | 8/10 | Yes |
| Time Savings Calculator | 9/10 | 8/10 | 8/10 | 8.5/10 | Yes |
| Personal Project Documenter | 8/10 | 8/10 | 8/10 | 8/10 | Yes |
| Project Memory Setup | 9/10 | 9/10 | 9/10 | 9/10 | Yes |
| Agent Quality Scorecard | 8/10 | 8/10 | 8/10 | 8/10 | Yes |
| Security Review Checklist | 9/10 | 9/10 | 9/10 | 9/10 | Yes |
| Automation Decision Framework | 8/10 | 8/10 | 8/10 | 8/10 | Yes |

---

## Cross-Week Prompt Inventory

| Prompt Name | This Week | Previous Weeks | Status |
|-------------|-----------|----------------|--------|
| Dive Deep Report Generator | New | N/A | Unique (Agent Mode file access) |
| Power Automate Workflow Designer | New | N/A | Unique (Power Automate Desktop) |
| Project Folder Generator | Enhanced | Week 3 had basic version | Agent Mode file creation |
| Multi-Step Workflow Builder | New | N/A | Unique (Orchestration) |
| Time Savings Calculator | New | N/A | Unique (Course culmination) |
| Personal Project Documenter | New | N/A | Unique (Documentation) |
| Project Memory Setup | New | N/A | Unique (Agent configuration) |
| Agent Quality Scorecard | New | N/A | Unique (Quality evaluation) |
| Security Review Checklist | New | N/A | Unique (Security for non-devs) |
| Automation Decision Framework | New | N/A | Unique (Approach selection) |

---

## Prompt Library Summary: All 4 Weeks

| Week | Focus | Prompts | Techniques |
|------|-------|---------|------------|
| Week 1 | AI Foundations | 10 | Basic ROLE+CONTEXT+TASK+FORMAT |
| Week 2 | Prompt Engineering | 10 | CoT, Few-Shot, Enhanced Personas |
| Week 3 | GitHub Copilot | 10 | Code assistance, Agent Mode basics |
| Week 4 | Advanced Automation | 10 | Power Automate, Project Memory, Orchestration |
| **Total** | | **40** | Full progression from basics to automation |

---

## Course Completion

Congratulations! You now have a library of **40 prompts** across all four weeks:

- **Week 1:** Foundation prompts for daily operations (emails, summaries, analysis)
- **Week 2:** Advanced techniques (Chain-of-Thought, Few-Shot, data analysis)
- **Week 3:** GitHub Copilot integration (code assistance, Agent Mode)
- **Week 4:** Full automation (Power Automate, project memory, orchestration, evaluation)

### Your AI Toolkit

| Capability | Prompts to Use |
|------------|---------------|
| Quick communications | Week 1: Email drafts, announcements |
| Deep analysis | Week 2: Root cause, data trends, labor planning |
| Code and automation | Week 3: Copilot prompts, Agent Mode basics |
| Full workflows | Week 4: Power Automate, dive deep reports |
| Quality assurance | Week 4: Quality Scorecard, Security Review |
| Continuous improvement | Week 4: Project Memory, Decision Framework |

### Next Steps

1. **This week:** Use 3 prompts from your library in real work
2. **This month:** Customize your copilot-instructions.md with lessons learned
3. **Ongoing:** Add new prompts as you discover patterns in your work
4. **Share:** Train your leads on your most effective prompts

---

## Quality Checklist

| Check | Requirement | Status |
|-------|-------------|--------|
| Prompt count | 5+ prompts per week | 10 prompts |
| Formula adherence | All follow ROLE+CONTEXT+TASK+FORMAT | All follow formula |
| Examples | All have filled-in examples | All have examples |
| Testing | All effectiveness score 7+ | Average: 8.5/10 |
| Deduplication | No duplicates from previous weeks | All unique or enhanced |
| Tool assignment | Correct tool per prompt | Verified |
| Validation log | Complete for all prompts | Complete |

---

*Prompts designed for Week 4: Advanced Automation & Multi-Agent Orchestration*
*Primary Techniques: Power Automate Desktop, Project Memory, Multi-Step Workflows, Quality Evaluation*
*Total Course Prompts: 40 across 4 weeks*
*Created: January 2026*
