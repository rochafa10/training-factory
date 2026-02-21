# Week 4 Exercises: Advanced Automation, Power Automate & Multi-Agent Orchestration

**Total Time:** 100 minutes (during session)
**Tools Needed:** VS Code with GitHub Copilot, Power Automate Desktop, Microsoft 365 account, Bottle Rocket for presentations
**Difficulty Range:** 7-8 / 10

---

## Skills Progression

### Skills Reinforced (from Weeks 1-3)
- **ROLE + CONTEXT + TASK + FORMAT** - The prompt formula
- **Chain-of-thought prompting** - Step-by-step reasoning structure
- **Iteration** - Refining prompts through follow-ups
- **Agent Mode** - Autonomous task execution
- **Voice Mode** - Hands-free AI interaction
- **Terminal command approval** - Reviewing agent actions
- **Template creation** - Building reusable prompt templates

### Skills Introduced (Week 4)
- **Power Automate Desktop** - Creating desktop flows for local automation
- **Power Automate Cloud** - Creating scheduled and triggered cloud flows
- **Element Selector Configuration** - Identifying UI elements for automation
- **Flow Testing and Debugging** - Validating and troubleshooting automation flows
- **Project memory** - Persistent context via copilot-instructions.md
- **Agent output evaluation** - Quality scorecard application
- **Security review** - The Three Nevers and command verification
- **Presentation skills** - Demonstrating AI automation projects

---

## Exercise 1: Power Automate — Desktop + Cloud Flows

**Type:** Guided Practice + Template Exercise
**Difficulty:** 7/10
**Time:** 25 minutes
**Tool:** Power Automate Desktop + Power Automate Cloud (Tesla data OK — fully approved)

### Scenario

You are creating automation flows using Power Automate, Microsoft's enterprise automation platform that is fully approved for Tesla data. Power Automate comes in two flavors: Desktop flows (for local PC automation) and Cloud flows (for scheduled/triggered workflows). This exercise teaches you both.

### Prerequisites

- [ ] Power Automate Desktop installed (available from Microsoft Store or IT)
- [ ] Microsoft 365 account with Power Automate license
- [ ] Sample DC dashboard URL provided by instructor
- [ ] Local folder for saving outputs (e.g., `C:\DC-Automation\`)

### Part A: Desktop Flow (15 min) — Live Hands-On

**Scenario:** Create a desktop flow that extracts data from a dashboard and documents it with a screenshot.

**Step 1: Launch Power Automate Desktop**

1. Press `Windows` key, type "Power Automate"
2. Open Power Automate Desktop
3. Sign in with your Microsoft 365 account if prompted

**Step 2: Create New Flow**

1. Click **+ New flow**
2. Name it: `DC Data Extractor`
3. Click **Create**

**Step 3: Add "Launch Browser" Action**

1. In the Actions panel (left side), search for "Launch"
2. Drag **Launch new Microsoft Edge** (or Chrome) to the workspace
3. In the action properties:
   - Initial URL: Enter the sample DC dashboard URL provided by instructor
   - Window state: Maximized
4. Click **Save**

**Step 4: Add "Extract Data from Web Page" Action**

1. Search for "Extract data" in Actions
2. Drag **Extract data from web page** to the workspace (below Launch browser)
3. Click the **...** button to open the extraction wizard
4. In the browser that opens:
   - Right-click on the data table you want to extract
   - Select **Extract entire HTML table**
5. Click **Finish** to save the extraction
6. Click **Save**

**Step 5: Add "Write to Excel" Action**

1. Search for "Excel" in Actions
2. Drag **Launch Excel** to the workspace
3. Set: Create a new document
4. Drag **Write to Excel worksheet** below it
5. Set:
   - Value to write: `%DataFromWebPage%` (the variable from extraction)
   - Start column: A
   - Start row: 1
6. Drag **Save Excel** and set file path: `C:\DC-Automation\extracted-data.xlsx`
7. Click **Save**

**Step 6: Add "Take Screenshot" Action**

1. Search for "Screenshot" in Actions
2. Drag **Take screenshot** to the workspace
3. Set:
   - Capture: Entire screen
   - Save to: File
   - File path: `C:\DC-Automation\dashboard-screenshot.png`
4. Click **Save**

**Step 7: Run and Verify**

1. Click the **Run** button (play icon) at the top
2. Watch the flow execute each step
3. Verify outputs:
   - [ ] Excel file created with extracted data
   - [ ] Screenshot saved to specified location

### Part B: Cloud Flow (10 min) — Live Hands-On

**Scenario:** Create a scheduled cloud flow that runs daily to send a summary email.

**Step 1: Open Power Automate Cloud Portal**

1. Go to [make.powerautomate.com](https://make.powerautomate.com)
2. Sign in with your Microsoft 365 account

**Step 2: Create Scheduled Cloud Flow**

1. Click **+ Create** in the left menu
2. Select **Scheduled cloud flow**
3. Name it: `Daily DC Summary`
4. Set schedule:
   - Start: Today's date
   - Repeat every: 1 Day
   - At: 8:00 AM
5. Click **Create**

**Step 3: Add "Get Rows from Excel" Action**

1. Click **+ New step**
2. Search for "Excel Online"
3. Select **List rows present in a table**
4. Configure:
   - Location: OneDrive for Business (or SharePoint)
   - Document Library: Select your library
   - File: Browse to a sample Excel file
   - Table: Select the data table

**Step 4: Add "Send Email" Action**

1. Click **+ New step**
2. Search for "Outlook"
3. Select **Send an email (V2)**
4. Configure:
   - To: Your email address
   - Subject: `Daily DC Summary - @{utcNow()}`
   - Body: Create a summary using dynamic content from the Excel data

**Step 5: Save (Do Not Activate)**

1. Click **Save** at the top
2. **Important:** Do NOT click "Turn on" — we are just practicing the setup
3. The flow is saved but will not run until activated

### What Good Output Looks Like

**Desktop Flow Results:**
- `C:\DC-Automation\extracted-data.xlsx` — Contains the data table from the dashboard
- `C:\DC-Automation\dashboard-screenshot.png` — Full screenshot of the dashboard

**Cloud Flow:**
- Flow saved with scheduled trigger (daily at 8 AM)
- Excel connection configured
- Email action configured with dynamic content

### Success Criteria

- [ ] Desktop flow runs without errors
- [ ] Data file contains extracted content
- [ ] Screenshot saved to specified location
- [ ] Cloud flow created and saved (not activated)
- [ ] Understood difference between Desktop and Cloud flows

### Troubleshooting

| Problem | Likely Cause | Solution |
|---------|--------------|----------|
| Power Automate Desktop not installed | Not deployed to your machine | Request from IT or install from Microsoft Store |
| Browser not launching correctly | Wrong browser selected | Change to Edge or Chrome in action settings |
| Element selector not finding data table | Page structure changed | Re-record the extraction with the wizard |
| Excel write permission errors | File locked or path wrong | Close any open Excel files, verify folder exists |
| Cloud flow connection authorization | Not signed in to service | Click the connection and sign in when prompted |

### Skills Practiced
- Desktop Flow Creation
- Cloud Flow Creation
- Element Selector Configuration
- Flow Testing and Debugging
- Excel integration
- Email automation

---

## Exercise 2: Build a Persistent DC Assistant

**Type:** Template Exercise
**Difficulty:** 7/10
**Time:** 25 minutes
**Tool:** VS Code with GitHub Copilot (NO Tesla Data)

### Scenario

Every time you start a new conversation with Copilot, it starts from scratch. It does not know your site, your KPIs, your terminology, or your preferences. Project memory solves this by giving the agent permanent context about your work. In this exercise, you will create a `.github/copilot-instructions.md` file tailored to your distribution center, then test the dramatic difference in output quality.

### Step 1: Create the Folder Structure (2 minutes)

In VS Code, create a `.github` folder in your workspace:
1. Click the Explorer panel (file icon, top left)
2. Right-click in the file tree > New Folder
3. Name it `.github`

### Step 2: Create the Instructions File (10 minutes)

Create a new file inside `.github` called `copilot-instructions.md`. Use this template:

```markdown
# DC Assistant Context

## Site Information
- **Site:** [Your DC name and location, e.g., Newburgh, NY]
- **Site Code:** [e.g., NWB]
- **Role:** Area General Manager
- **Team Size:** [number] associates, [number] leads
- **Shifts:** [e.g., Day shift 6AM-2PM, Night shift 2PM-10PM]

## Key Performance Indicators
- Shipment accuracy (target: 99.5%)
- On-time delivery rate (target: 98%)
- Inventory turns per month
- Associates per thousand shipments
- Safety incident rate

## Common Tasks I Need Help With
- Dive deep reports on missed shipments or quality issues
- Shift summary emails to regional leadership
- Incident write-ups following Tesla standard format
- Weekly KPI trend analysis
- Communication drafts for associate meetings

## Terminology
- NABU: Order management system
- SHP: Shipment ID prefix
- DC: Distribution Center
- AGM: Area General Manager
- OTD: On-Time Delivery
- CPT: Critical Pull Time

## Formatting Preferences
- Use bullet points for action items
- Bold key metrics and numbers
- Include "Next Steps" section in all reports
- Keep executive summaries to 3-5 sentences
- Use tables for data comparisons

## Constraints
- All Tesla data analysis must use Bottle Rocket (go.tesla.com/chat)
- GitHub Copilot is for non-Tesla data only
- Follow Tesla AI Policy at go.tesla.com/aitools
- Never include associate PII in outputs
```

### Step 3: Customize for Your DC (5 minutes)

Replace the bracketed placeholders with your actual information:
- Your site name and location
- Your actual team size
- Your real KPIs and targets
- Terminology specific to your operation
- Tasks you actually perform weekly

### Step 4: Test the Difference (8 minutes)

**Test A - Without instructions (baseline):**
1. Temporarily rename your instructions file (add `.bak` to the end)
2. Open a new Copilot chat
3. Type: "Write a dive deep analysis on 15% increase in missed shipments this week"
4. Note the quality of the output

**Test B - With instructions:**
1. Rename the file back (remove `.bak`)
2. Open a new Copilot chat
3. Type the exact same prompt
4. Compare the output quality

### What Good Output Looks Like

**Without Instructions (Generic):**
```
Here is a generic dive deep analysis:
- Some shipments were missed this week
- Several factors may have contributed
- Further analysis is recommended...
```

**With Instructions (Specific):**
```
Newburgh DC Dive Deep Analysis - Missed Shipments

Executive Summary:
Missed shipments increased 15% week-over-week (from 12 to 14 shipments).
Primary root cause appears to be carrier delays during peak hours.

Root Cause Analysis:
- Carrier delay: 8 of 14 misses (57%)
- Inventory shortage: 4 of 14 misses (29%)
- System error: 2 of 14 misses (14%)

Recommended Action Items:
- [ ] Contact carrier manager regarding delivery windows
- [ ] Review inventory levels for high-velocity SKUs
- [ ] Submit IT ticket for NABU error investigation

Next Steps:
- Schedule carrier review meeting by Friday
- Pull inventory report from NABU for trend analysis
```

### Comparison Checklist

| Quality Dimension | Without Instructions | With Instructions |
|-------------------|---------------------|-------------------|
| Specificity | Generic ("the facility") | Specific ("Newburgh DC") |
| KPI references | None or guessed | Your actual KPIs |
| Terminology | Industry generic | Your DC terminology |
| Format | Random structure | Your preferred format |
| Actionability | Vague recommendations | Specific next steps |

### Success Criteria

- [ ] Created `.github/copilot-instructions.md` file
- [ ] Customized with actual DC information
- [ ] Tested same prompt with and without instructions
- [ ] Observed measurable quality difference
- [ ] Identified at least 2 specific improvements in output quality

### Troubleshooting

| Problem | Likely Cause | Solution |
|---------|--------------|----------|
| Output still generic | File not in correct location | Must be `.github/copilot-instructions.md` |
| Copilot doesn't use context | New chat needed | Always open a NEW chat after changing the file |
| File not recognized | Folder name wrong | Folder must be `.github` with the leading dot |
| Too many placeholders left | Rushed customization | Go back and fill in real values |

### Skills Practiced
- Project memory configuration
- Context engineering
- Template customization
- Before/after comparison
- Quality evaluation

---

## Exercise 3: Dive Deep Report Automation

**Type:** Scenario Challenge
**Difficulty:** 8/10
**Time:** 25 minutes
**Tool:** VS Code with GitHub Copilot (NO Tesla Data)

### Scenario

Your regional director needs a dive deep report on missed shipments - a task that normally takes 45+ minutes of manual data gathering, analysis, and report writing. You will automate this using Agent Mode with file operations, applying sequential orchestration patterns.

**Important:** Use the provided sample data. Do NOT use real Tesla data for this exercise.

### The Workflow

```
1. You describe the dive deep requirements (voice or typed)
        |
        v
2. Agent reads the data file (Agent Mode file operations)
        |
        v
3. Agent uses your project memory for context (copilot-instructions.md)
        |
        v
4. Agent analyzes for patterns and root causes
        |
        v
5. Agent generates formatted report in your preferred style
        |
        v
6. You review and iterate
```

### Step 1: Create Sample Data File

Create a new file called `sample-data.csv` in your workspace with this content:

```csv
date,shipment_id,status,reason,customer,impact
2026-01-20,SHP001,missed,carrier_delay,Customer_A,high
2026-01-20,SHP002,delivered,n/a,Customer_B,none
2026-01-20,SHP003,missed,inventory_shortage,Customer_C,medium
2026-01-20,SHP004,missed,carrier_delay,Customer_A,high
2026-01-20,SHP005,delivered,n/a,Customer_D,none
2026-01-20,SHP006,missed,system_error,Customer_E,low
2026-01-20,SHP007,missed,carrier_delay,Customer_F,medium
2026-01-20,SHP008,delivered,n/a,Customer_A,none
2026-01-20,SHP009,missed,inventory_shortage,Customer_G,high
2026-01-20,SHP010,missed,carrier_delay,Customer_H,medium
2026-01-21,SHP011,missed,carrier_delay,Customer_A,high
2026-01-21,SHP012,delivered,n/a,Customer_C,none
2026-01-21,SHP013,missed,inventory_shortage,Customer_B,medium
2026-01-21,SHP014,missed,carrier_delay,Customer_D,high
2026-01-21,SHP015,delivered,n/a,Customer_E,none
```

### Step 3: Run the Dive Deep Automation

In Copilot Chat (Agent Mode), type:

```
I need a dive deep on missed shipments. Read sample-data.csv, identify the top 3 root causes, calculate the impact by customer, and generate a report with:
- Executive summary (3-5 sentences)
- Root cause analysis with percentages
- Customer impact breakdown as a table
- Trend comparison between Jan 20 and Jan 21
- Recommended action items with owners
- Next steps with deadlines

Save the report as dive-deep-report.md
```

### Step 4: Review and Iterate

After the report generates:
1. Read through the executive summary - is it accurate?
2. Check the root cause percentages - do they add up?
3. Review action items - are they specific and actionable?
4. Ask for revisions: "Make the action items more specific to carrier management"

### What Good Output Looks Like

The report should include:

**Executive Summary:**
- Total shipments analyzed: 15
- Missed shipments: 10 (67% miss rate)
- Top root cause: carrier_delay (6 misses, 60%)
- Most affected customer: Customer_A (4 interactions, 2 misses)

**Root Cause Analysis:**
| Root Cause | Count | Percentage |
|------------|-------|------------|
| carrier_delay | 6 | 60% |
| inventory_shortage | 3 | 30% |
| system_error | 1 | 10% |

**Trend Analysis:**
- Jan 20: 7 misses out of 10 shipments (70%)
- Jan 21: 3 misses out of 5 shipments (60%)
- Trend: Improving but still critical

### Success Criteria

- [ ] Agent successfully read the CSV file
- [ ] Analysis identified root causes (carrier_delay, inventory_shortage, system_error)
- [ ] Root cause percentages are mathematically correct
- [ ] Report includes executive summary
- [ ] Report uses your DC context from copilot-instructions.md
- [ ] Report saved as markdown file
- [ ] Total time under 5 minutes
- [ ] At least one iteration/revision completed

### Time Savings Comparison

| Traditional Method | With Agent Automation |
|-------------------|----------------------|
| 45+ minutes | 5-10 minutes |
| Manual data review | Automated analysis |
| Type entire report | Generated automatically |
| Multiple tools needed | Single conversation |
| Generic format | Your preferred format (via project memory) |

### Troubleshooting

| Problem | Likely Cause | Solution |
|---------|--------------|----------|
| "File not found" | Wrong path or filename | Ensure sample-data.csv is in your workspace |
| Agent can't read file | File not in workspace folder | Move file to current workspace |
| Incomplete analysis | Prompt too vague | Add specific metrics to calculate |
| Agent doesn't save file | Didn't request it | Add "save as [filename].md" to prompt |
| Generic output | copilot-instructions.md missing | Complete Exercise 2 first |

### Skills Practiced
- Agent Mode file operations
- Multi-step agent workflows
- Report automation
- Sequential orchestration patterns
- Prompt engineering for complex tasks
- Human-in-loop review

---

## Exercise 4: Personal Project Showcase

**Type:** Presentation + Peer Review
**Difficulty:** 7/10
**Time:** 25 minutes (5 minutes per AGM)
**Tool:** Bottle Rocket (for Tesla data portions), GitHub Copilot (for automation demos)

### Scenario

This is the culmination of the entire course. Each AGM has been building a personal AI automation project since Week 2, with development time in Week 3 and today. Now you present what you built, explain the technique you used, and quantify the time saved. This is not a test - it is a celebration of what you have accomplished.

### Presentation Format

**5 minutes per AGM (5 AGMs x 5 min = 25 min total):**

| Time | Activity |
|------|----------|
| 0:00-2:00 | Demo: Show what you built and how it works |
| 2:00-3:30 | Explain: What technique did you use? What did you learn? |
| 3:30-4:00 | Impact: How much time does it save? How often will you use it? |
| 4:00-5:00 | Q&A: Peer questions and feedback |

### Presentation Template

Each presenter should cover:

1. **The Problem:** "Before AI, I used to [task] which took [time]."
2. **The Solution:** "I built [project] using [tools/techniques]."
3. **Live Demo or Walkthrough:** Show it working (or walk through screenshots).
4. **Time Savings:** "This saves [X] minutes per [use/day/week]."
5. **What I Learned:** "The biggest lesson was..."
6. **Next Steps:** "I plan to expand this by..."

### Preparation Checklist

Before your presentation:
- [ ] Project works end-to-end without errors
- [ ] Key prompts documented
- [ ] Time savings calculated (before vs. after)
- [ ] Demo ready (live or screenshots)
- [ ] Can explain technique used in 30 seconds

### Scoring Rubric

Peer scoring (for fun, not grades) - each audience member rates on three dimensions:

| Dimension | 1 (Needs Work) | 3 (Solid) | 5 (Outstanding) |
|-----------|-----------------|-----------|------------------|
| **Practical Impact** | Nice idea but unlikely to use regularly | Useful for weekly tasks | Game-changer for daily operations |
| **Technical Skill** | Basic prompt only | Used prompt formula + one advanced technique | Combined multiple techniques (Agent Mode, Power Automate, Memory, etc.) |
| **Presentation Clarity** | Hard to follow, no demo | Clear explanation with some demo | Compelling story, live demo, clear metrics |

### Peer Feedback Guidelines

**When giving feedback:**
- Start with what impressed you
- Suggest one way to expand or improve the project
- Ask a genuine question about their approach

**When receiving feedback:**
- Take notes on expansion ideas
- Thank the feedback giver
- Consider which suggestions to implement

### Project Idea Bank (If Someone Needs Inspiration)

| Project | Tools Used | Estimated Savings |
|---------|-----------|-------------------|
| Weekly shift summary generator | Copilot + Project Memory | 30 min/week |
| Dive deep report template | Agent Mode + file analysis | 40 min/report |
| Daily dashboard data extraction | Power Automate Desktop | 20 min/day |
| Scheduled KPI email summary | Power Automate Cloud | 25 min/week |
| Standard email responder | Bottle Rocket + prompt template | 15 min/day |
| KPI trend analyzer | Agent Mode + CSV data | 25 min/week |
| New associate onboarding checklist | Copilot + project memory | 20 min/hire |
| Incident report writer | Bottle Rocket + voice input | 15 min/incident |

### Success Criteria

- [ ] Presented within 5-minute time limit
- [ ] Demonstrated a working automation
- [ ] Explained the technique used clearly
- [ ] Quantified time savings with specific numbers
- [ ] Answered at least one peer question
- [ ] Received feedback gracefully

### Troubleshooting

| Problem | Likely Cause | Solution |
|---------|--------------|----------|
| Demo not working | Environment issue | Use screenshots as backup |
| Over time limit | Trying to show everything | Focus on one impressive workflow |
| Can't quantify savings | No baseline measurement | Estimate manual time honestly |
| Project too simple | Comparing to others | Any automation that saves time is valuable |

### Skills Practiced
- Presentation and communication
- Project documentation
- Time savings analysis
- Peer feedback exchange
- Professional demonstration

---

## Time Savings Analysis

| Exercise | Traditional Method | With AI/Automation Tools | Time Saved |
|----------|-------------------|--------------------------|------------|
| Power Automate Flows | Manual data extraction + copy/paste: 20+ min | Automated desktop/cloud flow: 2-3 min | 17-18 min |
| Project Memory Setup | Re-explain context every conversation: 5 min each | One-time setup: 10 min, then 0 | 5 min per conversation |
| Dive Deep Report | Manual data analysis + report writing: 45+ min | Agent automation: 5-10 min | 35-40 min |
| Personal Project | Varies by project | Varies by project | 15-45 min/use |

**Weekly Impact (assuming 1 use each):**
- Power Automate flows: 5x per week = 85-90 min saved
- Reports with project memory: 5x per week = 25 min saved (context setup)
- Dive deep reports: 2x per week = 70-80 min saved
- Personal project: Varies

**Total Weekly Potential:** 180-195 minutes saved (approximately 3 hours)

---

## Weekly Skill Checklist

By the end of Week 4, confirm you can:

### Power Automate Skills
- [ ] Launch Power Automate Desktop and create a new flow
- [ ] Add browser launch and data extraction actions
- [ ] Configure element selectors to capture web data
- [ ] Save extracted data to Excel files
- [ ] Create scheduled cloud flows in Power Automate portal
- [ ] Connect cloud flows to Excel and Outlook

### Project Memory Skills
- [ ] Create a `.github/copilot-instructions.md` file
- [ ] Include site-specific context (name, team size, KPIs)
- [ ] Include terminology and formatting preferences
- [ ] Test output quality with and without instructions
- [ ] Update instructions file as operation evolves

### Automation Skills
- [ ] Use Agent Mode for multi-step workflows
- [ ] Read and analyze files using Agent Mode
- [ ] Generate reports that incorporate project memory
- [ ] Iterate on agent outputs with follow-up prompts
- [ ] Save generated files to disk

### Evaluation Skills
- [ ] Apply the Quality Scorecard (accuracy, completeness, format, speed, usability)
- [ ] Match AI approach to task complexity (simple chat vs. Agent Mode vs. Power Automate)
- [ ] Review agent commands before approving
- [ ] Follow the Three Nevers (never auto-approve, never skip review, never share secrets)

### Presentation Skills
- [ ] Demonstrate an AI automation in under 5 minutes
- [ ] Quantify time savings with specific numbers
- [ ] Explain technique used clearly to non-technical audience
- [ ] Give and receive peer feedback constructively

---

## Course Completion Summary

Congratulations on completing the AI Operations Training course. Here is what you have accomplished:

### Week 1: AI Foundations & Policy Compliance
- Learned Tesla AI Policy (approved, conditional, prohibited tools)
- Mastered the prompt formula: ROLE + CONTEXT + TASK + FORMAT
- Started using Bottle Rocket for Tesla data tasks

### Week 2: Prompt Engineering & Data Analysis
- Applied Chain-of-Thought and Few-Shot prompting
- Built reusable prompt templates
- Analyzed data with AI assistance

### Week 3: Voice Mode & Agent Automation
- Used Voice Mode for hands-free AI interaction
- Mastered Agent Mode for multi-step tasks
- Started personal automation project

### Week 4: Advanced Automation, Power Automate & Multi-Agent Orchestration
- Created desktop flows for local automation (Power Automate Desktop)
- Created scheduled cloud flows for triggered workflows (Power Automate Cloud)
- Created project memory for persistent context
- Automated complex workflows (dive deep reports)
- Presented personal project to peers

### Your AI Toolkit (Complete)

| Tool | Use For | Learned |
|------|---------|---------|
| Bottle Rocket | Any Tesla data task | Week 1 |
| Prompt Formula | Structured AI requests | Week 1 |
| Chain-of-Thought | Complex reasoning | Week 2 |
| Few-Shot | Consistent formatting | Week 2 |
| Prompt Templates | Recurring tasks | Week 2 |
| Voice Mode | Hands-free AI | Week 3 |
| Agent Mode | Multi-step automation | Week 3 |
| Power Automate Desktop | Local PC automation | Week 4 |
| Power Automate Cloud | Scheduled workflows | Week 4 |
| Project Memory | Persistent context | Week 4 |
| Quality Scorecard | Output evaluation | Week 4 |
| Security Review | Safe AI usage | Week 4 |

### Total Time Savings Potential

| Week | Skills | Daily Savings |
|------|--------|---------------|
| Week 1 | Prompt formula, Bottle Rocket basics | 15-20 min |
| Week 2 | Advanced prompting, templates | 20-30 min |
| Week 3 | Voice Mode, Agent Mode | 30-40 min |
| Week 4 | Power Automate, Memory, Multi-Agent | 40-60 min |

**Cumulative:** 40-60 minutes per day = 3-5 hours per week = **150+ hours per year**

---

## Exercise Validation Log

| Exercise | Difficulty | Validation Notes | Feasible? |
|----------|------------|------------------|-----------|
| Exercise 1: Power Automate — Desktop + Cloud Flows | 7/10 | Combines desktop and cloud automation. Step-by-step instructions. Power Automate fully approved for Tesla data. Requires Power Automate Desktop installed. | Yes |
| Exercise 2: Build Persistent DC Assistant | 7/10 | High-impact, low-effort exercise. Template provided. Side-by-side comparison demonstrates value clearly. | Yes |
| Exercise 3: Dive Deep Report Automation | 8/10 | Capstone hands-on exercise. Combines project memory + Agent Mode. Sample data provided. Multi-step workflow. | Yes |
| Exercise 4: Personal Project Showcase | 7/10 | Culminating presentation. Builds on all prior weeks. Scoring rubric keeps it focused. Flexible to individual projects. | Yes |

---

## Quality Checklist

| Check | Requirement | Status |
|-------|-------------|--------|
| Exercise count | 3+ exercises per week | 4 exercises |
| Difficulty range | Within week's calibration (7-8) | Range: 7-8 |
| Exercise mix | 25% Guided, 50% Template, 25% Challenge | 1 Guided+Template, 1 Template, 1 Challenge, 1 Presentation |
| Tool coverage | Correct tool per exercise | Power Automate (Tesla OK), Copilot (no Tesla data), Bottle Rocket for presentations |
| Troubleshooting | 3+ issues per exercise | 4-6 per exercise |
| Time realistic | Total = 100 min | 100 min total (25+25+25+25) |
| Skills tracked | Reinforce + Introduce documented | 7 reinforced, 8 introduced |
| Course completion | Final week summary included | Yes |

---

*Exercises designed for Week 4: Advanced Automation, Power Automate & Multi-Agent Orchestration*
*Primary Tools: Power Automate Desktop/Cloud (Tesla data OK), GitHub Copilot (NO Tesla Data), Bottle Rocket for presentations*
*Difficulty Focus: Advanced (7-8/10)*
*Final Week: Course Completion*
