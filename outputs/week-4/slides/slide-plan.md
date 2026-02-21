# Slide Plan: Week 4 — Advanced Automation, Power Automate & Multi-Agent Orchestration

**Session Duration:** 240 minutes (4 hours)
**Total Slides:** 58
**Slide Dimensions:** 960px x 540px (16:9)
**Theme:** Tesla light (#ffffff background, #cc0000 accent red)
**Theme Details:** Background #ffffff, Cards #f5f5f5 with 1px solid #e0e0e0 border, Accent red #cc0000, Headings #000000, Body text #666666, Success #4ade80, Warning #facc15, Error #f87171
**Version:** 2.0 — Expanded with quizzes, templates, and graduation ceremony

---

## Slide 01
- **Type:** Title
- **Title:** Advanced Automation, Power Automate & Multi-Agent Orchestration
- **Subtitle:** Agents That Remember, Learn, and Improve
- **Metadata:**
  - Label: WEEK 4 OF 4 — FINAL SESSION
  - Duration: 240 minutes
  - Hands-on: 40%
  - Tools: VS Code + Copilot, Power Automate, Bottle Rocket

---

## Slide 02
- **Type:** Agenda
- **Title:** Today's Agenda
- **Items:**
  1. Course Time Savings Review + ROI (15 min)
  2. Power Automate: Workflow Automation (15 min)
  3. Exercise 1: Power Automate Desktop + Cloud Flows (25 min)
  4. Agents That Remember (Memory & Context) (20 min)
  5. BREAK (10 min)
  6. Exercise 2: Build a Persistent DC Assistant (25 min)
  7. Multi-Agent Orchestration Patterns (15 min)
  8. Exercise 3: Dive Deep Report Automation (25 min)
  9. BREAK (10 min)
  10. Evaluating & Optimizing AI Agents (20 min)
  11. Security Review Basics (15 min)
  12. Exercise 4: Personal Project Showcase (25 min)
  13. Continuous Learning Roadmap (15 min)
  14. Course Graduation + Next Steps (10 min)
- **Footer note:** Hands-on time: ~100 min (42%) | Instruction/demo: ~120 min (50%) | Breaks: ~20 min (8%)

---

## Slide 03
- **Type:** Divider
- **Section Number:** 01
- **Section Title:** Course Time Savings Review + ROI
- **Duration:** 15 min

---

## Slide 04
- **Type:** Content
- **Title:** Your 4-Week AI Journey — Time Savings
- **Layout:** Table with progression
- **Table:**
  | Week | Skills Learned | Time Savings Potential |
  |------|----------------|----------------------|
  | Week 1 | Prompt formula, Bottle Rocket | 15-20 min/day |
  | Week 2 | Advanced prompting, templates | 20-30 min/day |
  | Week 3 | Voice Mode, Agent Mode | 30-40 min/day |
  | Week 4 | Power Automate, Memory, Multi-Agent workflows | 40-60 min/day |
- **Callout box:** AI ROI averages $3.70 per dollar invested. 78% of enterprises now use AI tools.
- **Visual note:** Progressive bar chart showing time savings growth. Celebration theme.
- **Footer:** That's 3-5 hours per week, or over 150 hours per year per person.

---

## Slide 05
- **Type:** Content
- **Title:** ROI Calculation for Your DC
- **Layout:** Two columns
- **Left column — Individual AGM ROI:**
  - Time saved: 40-60 min/day = ~4 hours/week
  - 50 weeks/year = 200 hours saved annually
  - Equivalent to adding a part-time employee
  - Cost: Zero (training already complete)
- **Right column — Team Multiplier:**
  - 5 AGMs x 3 leads each = 15 people
  - Cascading savings across organization
  - Faster dive deeps = faster root cause resolution
  - Better templates = fewer misunderstandings
- **Callout:** Activity: Share your biggest AI win + calculate group ROI on whiteboard
- **Footer:** "What would you do with an extra hour each day?"

---

## Slide 06
- **Type:** Divider
- **Section Number:** 02
- **Section Title:** Power Automate: Workflow Automation
- **Duration:** 15 min
- **Note:** Power Automate is FULLY APPROVED at Tesla (can use with Tesla data)

---

## Slide 07
- **Type:** Content
- **Title:** Power Automate — The Automation Platform
- **Layout:** Comparison table
- **Table:**
  | Copilot | Power Automate |
  |---------|----------------|
  | Generates content on demand | Executes workflows automatically |
  | You ask, it answers | Runs on schedule or trigger |
  | Best for: one-time tasks | Best for: recurring automation |
- **Callout:** Fully approved at Tesla — can use with Tesla data
- **Visual note:** Copilot icon vs Power Automate icon comparison
- **Footer:** Copilot creates, Power Automate executes — use both for maximum efficiency.

---

## Slide 08
- **Type:** Grid
- **Title:** Three Types of Power Automate Flows
- **Layout:** 3 columns
- **Card 1 — Desktop Flows (RPA):**
  - Icon: Desktop computer
  - Description: Automate mouse clicks, keyboard input, and legacy apps
  - Use cases: Data extraction from desktop apps, form filling, screenshot capture
- **Card 2 — Cloud Flows:**
  - Icon: Cloud
  - Description: Triggered workflows that connect cloud services
  - Use cases: Scheduled emails, approval chains, data sync between apps
- **Card 3 — Process Flows:**
  - Icon: Workflow diagram
  - Description: Multi-step approval and routing workflows
  - Use cases: Purchase approvals, vacation requests, incident escalation
- **Footer:** POLICY STATUS: Power Automate is APPROVED for Tesla data

---

## Slide 09
- **Type:** Quiz
- **Badge:** INTERACTIVE QUIZ
- **Title:** Desktop Flow, Cloud Flow, or Process Flow?
- **Subtitle:** For each scenario, identify which flow type is best
- **Table:**
  | # | Scenario | Answer |
  |---|----------|--------|
  | 1 | Extract data from legacy inventory system every morning | ? |
  | 2 | Send approval request to manager when purchase exceeds $500 | ? |
  | 3 | Automatically forward emails with "URGENT" in subject to Teams | ? |
  | 4 | Take screenshots of dashboard at end of each shift | ? |
  | 5 | Route vacation requests through 3-level approval chain | ? |
  | 6 | Sync SharePoint files to local folder daily | ? |
  | 7 | Fill out web forms using data from Excel | ? |
  | 8 | Send Teams notification when Excel cell value changes | ? |
- **Visual note:** Quiz table with "?" placeholders for audience participation

---

## Slide 10
- **Type:** Answer Key
- **Badge:** ANSWER KEY
- **Title:** Power Automate Flow Types — Answers
- **Subtitle:** Desktop = local automation | Cloud = service connections | Process = approval chains
- **Table:**
  | # | Scenario | Answer |
  |---|----------|--------|
  | 1 | Extract data from legacy inventory system every morning | DESKTOP |
  | 2 | Send approval request to manager when purchase exceeds $500 | PROCESS |
  | 3 | Automatically forward emails with "URGENT" in subject to Teams | CLOUD |
  | 4 | Take screenshots of dashboard at end of each shift | DESKTOP |
  | 5 | Route vacation requests through 3-level approval chain | PROCESS |
  | 6 | Sync SharePoint files to local folder daily | CLOUD |
  | 7 | Fill out web forms using data from Excel | DESKTOP |
  | 8 | Send Teams notification when Excel cell value changes | CLOUD |
- **Color coding:** Desktop = blue, Cloud = green, Process = yellow

---

## Slide 11
- **Type:** Exercise
- **Badge:** EXERCISE 1
- **Title:** Power Automate — Desktop + Cloud Flows
- **Time Box:** 25 minutes
- **Layout:** Two-part exercise overview
- **Part A — Desktop Flow (15 min):**
  - Task: Create a desktop flow that extracts data from a web page and takes a screenshot
  - Steps: Open Power Automate Desktop, create new flow, add browser + extraction + screenshot actions
- **Part B — Cloud Flow (10 min):**
  - Task: Create a scheduled cloud flow that sends a summary email
  - Steps: Open Power Automate web, create scheduled flow, add Excel + email actions
- **Success Criteria:**
  - [ ] Desktop flow runs and extracts data
  - [ ] Screenshot captured successfully
  - [ ] Cloud flow saved (not activated)
- **Prerequisites note:** Power Automate Desktop must be installed (pre-installed on Tesla laptops)

---

## Slide 12
- **Type:** Exercise Template
- **Badge:** EXERCISE 1A
- **Title:** Desktop Flow Step-by-Step
- **Layout:** Code block with numbered steps
- **Content:**
  ```
  STEP 1: Launch Power Automate Desktop
  - Press Windows key, type "Power Automate"
  - Sign in with Microsoft 365 account

  STEP 2: Create New Flow
  - Click "+ New flow"
  - Name: DC Data Extractor

  STEP 3: Add "Launch Browser" Action
  - Drag "Launch new Microsoft Edge" to workspace
  - Set URL: [INSTRUCTOR PROVIDED URL]
  - Window state: Maximized

  STEP 4: Add "Extract Data" Action
  - Search "Extract data from web page"
  - Right-click data table > Extract entire HTML table

  STEP 5: Add "Write to Excel" Action
  - Create new Excel document
  - Write extracted data to Column A, Row 1
  - Save to: C:\DC-Automation\extracted-data.xlsx

  STEP 6: Add "Take Screenshot" Action
  - Capture: Entire screen
  - Save to: C:\DC-Automation\screenshot.png

  STEP 7: Run and Verify
  - Click Play button
  - Check outputs in C:\DC-Automation\
  ```
- **Tip box:** Create the C:\DC-Automation\ folder first!

---

## Slide 13
- **Type:** Exercise Template
- **Badge:** EXERCISE 1B
- **Title:** Cloud Flow Step-by-Step
- **Layout:** Code block with numbered steps
- **Content:**
  ```
  STEP 1: Open Power Automate Portal
  - Go to make.powerautomate.com
  - Sign in with Microsoft 365 account

  STEP 2: Create Scheduled Flow
  - Click "+ Create" > "Scheduled cloud flow"
  - Name: Daily DC Summary
  - Schedule: Every 1 Day at 8:00 AM

  STEP 3: Add "Get Rows" Action
  - Click "+ New step"
  - Search "Excel Online (Business)"
  - Select "List rows present in a table"
  - Connect to sample Excel file

  STEP 4: Add "Send Email" Action
  - Click "+ New step"
  - Search "Send an email (V2)"
  - To: [YOUR EMAIL]
  - Subject: Daily DC Summary - @{utcNow()}
  - Body: Create summary using dynamic content

  STEP 5: Save (DO NOT ACTIVATE)
  - Click "Save" at top
  - DO NOT click "Turn on" - this is practice only
  ```
- **Warning box:** Do NOT activate during class — will send real emails!

---

## Slide 14
- **Type:** Checklist
- **Badge:** VERIFICATION
- **Title:** Exercise 1 Success Checklist
- **Layout:** Two-column checklist
- **Left column — Desktop Flow:**
  - [ ] Power Automate Desktop opened
  - [ ] Flow named "DC Data Extractor"
  - [ ] Browser launches to test URL
  - [ ] Data extracted to Excel
  - [ ] Screenshot captured
  - [ ] Both files saved to C:\DC-Automation\
- **Right column — Cloud Flow:**
  - [ ] Power Automate portal accessed
  - [ ] Scheduled flow created
  - [ ] Excel connection configured
  - [ ] Email action added
  - [ ] Flow SAVED but NOT activated
- **Footer:** Raise hand when both checklists complete

---

## Slide 15
- **Type:** Activity
- **Badge:** ACTIVITY A
- **Title:** Watch: Instructor Flow Recording Demo
- **Time Box:** 5 minutes
- **Layout:** Observation checklist
- **Subtitle:** Watch the instructor record a desktop flow live
- **What to Observe:**
  1. How the recording captures mouse movements
  2. How element selectors are automatically created
  3. How variables store captured data
  4. How error handling is configured
  5. How the flow is tested step-by-step
- **Questions to Consider:**
  - What happens if the webpage layout changes?
  - How would you modify this for YOUR data extraction needs?
  - What would break this flow?
- **Footer:** Recording mode is the fastest way to create desktop flows

---

## Slide 16
- **Type:** Divider
- **Section Number:** 04
- **Section Title:** Agents That Remember (Memory & Context)
- **Duration:** 20 min

---

## Slide 17
- **Type:** Comparison
- **Title:** The New Temp vs. The Veteran
- **Left Column (red border — WITHOUT Project Memory):**
  - Header: New Temp Every Day
  - Prompt: "Write a summary of this week's missed shipments."
  - Result: "Here is a generic summary of missed shipments: Some shipments were missed this week. Several factors may have contributed..."
  - Problem: Vague, generic, useless without heavy editing
- **Right Column (green border — WITH Project Memory):**
  - Header: Veteran Who Knows Your Operation
  - Same prompt, different result: "Newburgh DC Missed Shipment Summary — Week of Jan 27: 12 missed shipments (+50% vs last week). Primary root cause: Carrier delay. Recommended action: Activate backup carrier protocol per SOP-204..."
  - Result: Specific, actionable, ready to send
- **Bottom callout:** Agents with project memory produce 40-60% more relevant outputs on first attempt.

---

## Slide 18
- **Type:** Content
- **Title:** How Project Memory Works
- **Layout:** File structure + content categories
- **File location:** `.github/copilot-instructions.md`
- **Content categories table:**
  | Category | Example Content |
  |----------|----------------|
  | Site Identity | "This is the Newburgh, NY distribution center (NWB)" |
  | Team Size | "30 associates, 4 leads, 1 AGM" |
  | Key KPIs | "Track: shipment accuracy, on-time delivery, inventory turns" |
  | Common Tasks | "Dive deep reports, shift summaries, incident write-ups" |
  | Terminology | "NABU = order management system, SHP = shipment prefix" |
  | Formatting | "Use Tesla-standard headers, bullet points, action items" |
- **Visual note:** File tree showing .github folder with copilot-instructions.md highlighted
- **Footer:** Whatever you put in this file becomes permanent context for every conversation.

---

## Slide 19
- **Type:** Quiz
- **Badge:** INTERACTIVE QUIZ
- **Title:** With Memory or Without Memory?
- **Subtitle:** Which output was generated WITH project memory?
- **Layout:** Two output samples side by side
- **Output A:**
  ```
  Subject: Shift Summary

  Today's shift went well overall. We processed
  orders and handled some challenges. The team
  performed adequately. Consider reviewing metrics
  for improvement opportunities.
  ```
- **Output B:**
  ```
  Subject: Newburgh DC Day Shift Summary - Jan 27

  Orders: 847 processed (vs 820 target, +3.3%)
  OTD: 98.2% (above 98% threshold)
  Team: 28/30 associates present

  Highlight: Cleared backlog from carrier delay

  Next Steps:
  - Review SHP-4521 exception with lead
  - Prep for inventory count Thursday
  ```
- **Question:** Which is Output A and which is Output B?
- **Answer placeholder:** ?

---

## Slide 20
- **Type:** Answer Key
- **Badge:** ANSWER KEY
- **Title:** Project Memory Output — Answer
- **Subtitle:** Output B was generated WITH project memory
- **Layout:** Analysis of differences
- **Table:**
  | Dimension | Output A (No Memory) | Output B (With Memory) |
  |-----------|---------------------|----------------------|
  | Site name | "the shift" | "Newburgh DC Day Shift" |
  | Metrics | "processed orders" | "847 processed (vs 820 target)" |
  | KPI references | None | OTD: 98.2%, threshold mentioned |
  | Terminology | Generic | NABU, SHP prefix used |
  | Format | Paragraph blob | Structured bullets, Next Steps |
  | Actionability | Vague "review metrics" | Specific tasks with references |
- **Callout:** Same prompt, dramatically different results. Project memory is worth 10 minutes of setup.

---

## Slide 21
- **Type:** Divider
- **Section Number:** BREAK
- **Section Title:** 10-Minute Break
- **Duration:** 10 min

---

## Slide 22
- **Type:** Exercise
- **Badge:** EXERCISE 2
- **Title:** Build a Persistent DC Assistant
- **Time Box:** 25 minutes
- **Scenario:** Create a project memory file for your DC and compare output quality
- **Instructions:**
  1. In VS Code, create folder: `.github/`
  2. Create file: `copilot-instructions.md`
  3. Fill in the template with YOUR DC information (site name, team size, KPIs, terminology)
  4. Test A: Temporarily rename file to `.bak`, open new chat, ask: "Write a dive deep on 15% increase in missed shipments"
  5. Test B: Rename back, open NEW chat, ask the exact same question
  6. Compare the output quality — specificity, KPI references, format, actionability
- **Template snippet:** Site: [Your DC], Team: [X] associates, KPIs: shipment accuracy, OTD, Terminology: NABU, SHP, CPT
- **Success Criteria:**
  - [ ] Created .github/copilot-instructions.md
  - [ ] Customized with actual DC information
  - [ ] Observed measurable quality difference between Test A and Test B

---

## Slide 23
- **Type:** Exercise Template
- **Badge:** EXERCISE 2
- **Title:** copilot-instructions.md Template
- **Layout:** Code block with placeholders
- **Content:**
  ```markdown
  # DC Assistant Context

  ## Site Information
  - **Site:** [YOUR DC NAME AND LOCATION]
  - **Site Code:** [YOUR SITE CODE, e.g., NWB]
  - **Role:** Area General Manager
  - **Team Size:** [NUMBER] associates, [NUMBER] leads
  - **Shifts:** [YOUR SHIFT TIMES]

  ## Key Performance Indicators
  - Shipment accuracy (target: [YOUR TARGET]%)
  - On-time delivery rate (target: [YOUR TARGET]%)
  - [ADD YOUR OTHER KPIs]

  ## Terminology
  - NABU: Order management system
  - SHP: Shipment ID prefix
  - [ADD YOUR SITE-SPECIFIC TERMS]

  ## Formatting Preferences
  - Use bullet points for action items
  - Bold key metrics and numbers
  - Include "Next Steps" section in all reports

  ## Constraints
  - Tesla data analysis: Bottle Rocket only
  - GitHub Copilot: NO Tesla data
  ```
- **Tip box:** Replace ALL [PLACEHOLDERS] with your real information

---

## Slide 24
- **Type:** Checklist
- **Badge:** VERIFICATION
- **Title:** Exercise 2 Testing Checklist
- **Layout:** Before/after comparison checklist
- **Test A — Without Memory:**
  - [ ] Renamed file to .bak
  - [ ] Opened NEW Copilot chat
  - [ ] Asked: "Write a dive deep on 15% increase in missed shipments"
  - [ ] Noted: Was output generic or specific?
  - [ ] Noted: Did it use your terminology?
  - [ ] Noted: Did it match your format preferences?
- **Test B — With Memory:**
  - [ ] Renamed file back (removed .bak)
  - [ ] Opened NEW Copilot chat (must be new!)
  - [ ] Asked exact same question
  - [ ] Compared: Specificity improved?
  - [ ] Compared: KPIs referenced?
  - [ ] Compared: Format matches preferences?
- **Footer:** You should see dramatic improvement in Test B

---

## Slide 25
- **Type:** Divider
- **Section Number:** 06
- **Section Title:** Multi-Agent Orchestration Patterns
- **Duration:** 15 min

---

## Slide 26
- **Type:** Grid
- **Title:** Four Orchestration Patterns
- **Layout:** 2x2 grid
- **Card 1 — Sequential:**
  - How: Agent A then Agent B then Agent C
  - Best for: Step-by-step processes
  - DC Example: Dive deep — gather data, analyze, report
- **Card 2 — Parallel:**
  - How: Agents A, B, C run simultaneously
  - Best for: Independent subtasks
  - DC Example: Multi-DC comparison reports
- **Card 3 — Supervisor:**
  - How: Main agent delegates to specialists
  - Best for: Complex investigations
  - DC Example: Incident analysis with multiple data sources
- **Card 4 — Human-in-Loop:**
  - How: Agent pauses for approval at key steps
  - Best for: High-stakes decisions
  - DC Example: Any task affecting Tesla operations
- **Callout:** 72% of enterprise AI projects now use multi-agent architectures (2025)
- **Footer:** 76% of enterprises include human review — your judgment matters.

---

## Slide 27
- **Type:** Quiz
- **Badge:** INTERACTIVE QUIZ
- **Title:** Which Orchestration Pattern?
- **Subtitle:** Identify the best pattern for each scenario
- **Table:**
  | # | Scenario | Pattern |
  |---|----------|---------|
  | 1 | Generate report from CSV, then format, then email | ? |
  | 2 | Compare KPIs across all 5 distribution centers | ? |
  | 3 | Investigate incident: check logs, interview notes, photos | ? |
  | 4 | Draft email to regional director requiring your approval | ? |
  | 5 | Analyze yesterday's data, then predict today's volume | ? |
  | 6 | Get weather from API, news from API, market from API | ? |
  | 7 | Auto-generate weekly report but you review before sending | ? |
  | 8 | Step 1 extract, Step 2 transform, Step 3 load | ? |
- **Options:** Sequential / Parallel / Supervisor / Human-in-Loop

---

## Slide 28
- **Type:** Answer Key
- **Badge:** ANSWER KEY
- **Title:** Orchestration Patterns — Answers
- **Subtitle:** Sequential = step-by-step | Parallel = independent | Supervisor = complex | Human = approval needed
- **Table:**
  | # | Scenario | Pattern |
  |---|----------|---------|
  | 1 | Generate report from CSV, then format, then email | SEQUENTIAL |
  | 2 | Compare KPIs across all 5 distribution centers | PARALLEL |
  | 3 | Investigate incident: check logs, interview notes, photos | SUPERVISOR |
  | 4 | Draft email to regional director requiring your approval | HUMAN-IN-LOOP |
  | 5 | Analyze yesterday's data, then predict today's volume | SEQUENTIAL |
  | 6 | Get weather from API, news from API, market from API | PARALLEL |
  | 7 | Auto-generate weekly report but you review before sending | HUMAN-IN-LOOP |
  | 8 | Step 1 extract, Step 2 transform, Step 3 load | SEQUENTIAL |
- **Color coding:** Sequential = blue, Parallel = green, Supervisor = purple, Human = yellow

---

## Slide 29
- **Type:** Content
- **Title:** Sequential Pattern — Dive Deep Example
- **Layout:** Vertical flow diagram
- **Flow steps:**
  1. You provide requirements (voice or typed)
  2. Data Agent reads CSV file (Agent Mode file access)
  3. Agent loads your DC context (copilot-instructions.md)
  4. Analysis Agent finds patterns and root causes
  5. Report Agent generates formatted markdown
  6. You review and iterate
- **Visual note:** Vertical flowchart with icons for each step, arrows connecting them
- **Callout:** Agent Mode already works this way — understanding the pattern helps you give better instructions.
- **Footer:** Instead of "write me a report," say "first gather the data, then find root causes, then generate with executive summary."

---

## Slide 30
- **Type:** Exercise
- **Badge:** EXERCISE 3
- **Title:** Dive Deep Report Automation
- **Time Box:** 25 minutes
- **Scenario:** Use Agent Mode to automate a full dive deep report workflow
- **Instructions:**
  1. Create `sample-data.csv` with provided shipment data (15 rows, two dates)
  2. Open VS Code with your project folder containing the CSV
  3. In Agent Mode, request: "Read sample-data.csv, identify top 3 root causes, calculate impact by customer, generate report with executive summary, root cause analysis, customer impact table, trend comparison, action items"
  4. Review the agent's plan before execution
  5. Iterate: "Make the action items more specific to carrier management"
- **Data preview:** 15 shipments over 2 days (Jan 20-21), mix of delivered/missed, reasons: carrier_delay, inventory_shortage, system_error
- **Success Criteria:**
  - [ ] Agent read the CSV file
  - [ ] Root cause percentages are mathematically correct
  - [ ] Report uses your DC context from copilot-instructions.md
  - [ ] Total time under 5 minutes (vs 45+ min manual)

---

## Slide 31
- **Type:** Exercise Template
- **Badge:** EXERCISE 3
- **Title:** Dive Deep Automation Prompt Template
- **Layout:** Code block with template
- **Content:**
  ```
  TASK: I need a dive deep report on missed shipments.

  DATA SOURCE: Read sample-data.csv from my workspace

  ANALYSIS REQUIRED:
  1. Identify the top 3 root causes by frequency
  2. Calculate percentage for each root cause
  3. Calculate impact by customer (which customers affected most)
  4. Compare trends between Jan 20 and Jan 21

  REPORT FORMAT:
  - Executive Summary (3-5 sentences)
  - Root Cause Analysis table (cause, count, percentage)
  - Customer Impact table (customer, interactions, misses)
  - Trend Analysis (day-over-day comparison)
  - Recommended Action Items with specific owners
  - Next Steps with deadlines

  OUTPUT: Save the report as dive-deep-report.md

  IMPORTANT: Use my DC context from copilot-instructions.md
  ```
- **Tip box:** Copy this template and customize for your specific analysis needs

---

## Slide 32
- **Type:** Content
- **Title:** Expected Dive Deep Output Format
- **Layout:** Sample output structure
- **Content preview:**
  ```markdown
  # [Your DC] Dive Deep — Missed Shipments
  ## Week of January 20-21, 2026

  ### Executive Summary
  Analyzed 15 shipments over 2 days. Miss rate: 67% (10 of 15).
  Primary root cause: carrier_delay (60% of misses).
  Most affected customer: Customer_A (4 interactions, 2 misses).
  Trend: Improving from 70% (Jan 20) to 60% (Jan 21).

  ### Root Cause Analysis
  | Root Cause | Count | Percentage |
  |------------|-------|------------|
  | carrier_delay | 6 | 60% |
  | inventory_shortage | 3 | 30% |
  | system_error | 1 | 10% |

  ### Action Items
  - [ ] Contact carrier manager — Owner: [AGM]
  - [ ] Review inventory reorder points — Owner: [Lead]
  ```
- **Footer:** Agent generates this in 2-3 minutes vs. 45+ minutes manually

---

## Slide 33
- **Type:** Activity
- **Badge:** ACTIVITY B
- **Title:** Quality Scoring Practice
- **Time Box:** 5 minutes
- **Layout:** Sample output with scorecard
- **Subtitle:** Score this AI-generated output using the Quality Scorecard
- **Sample Output to Score:**
  ```
  Missed Shipment Analysis

  Several shipments were not delivered on time this week.
  The main causes appear to be carrier issues and inventory
  problems. We should look into this further and take action.

  Recommendations:
  - Improve carrier relationships
  - Better inventory management
  - Continue monitoring the situation
  ```
- **Scorecard to Apply:**
  | Dimension | Score (1-5) | Notes |
  |-----------|-------------|-------|
  | Accuracy | ? | Are facts correct? |
  | Completeness | ? | All info included? |
  | Format | ? | Structured properly? |
  | Speed | ? | Time saved? |
  | Usability | ? | Ready to use? |
- **Question:** What is the total score? What would you change?

---

## Slide 34
- **Type:** Answer Key
- **Badge:** ANSWER KEY
- **Title:** Quality Scoring — Sample Answers
- **Layout:** Filled scorecard with reasoning
- **Scorecard Results:**
  | Dimension | Score | Reasoning |
  |-----------|-------|-----------|
  | Accuracy | 2/5 | No specific numbers, vague causes |
  | Completeness | 2/5 | Missing root cause %, customer impact, trends |
  | Format | 2/5 | No tables, no executive summary, no next steps |
  | Speed | 3/5 | Generated fast but needs heavy editing |
  | Usability | 1/5 | Cannot send as-is, requires complete rewrite |
- **Total: 10/25 — Re-prompt or switch approach**
- **What to Change:**
  - Add project memory for DC-specific context
  - Request specific metrics and percentages
  - Specify format with tables and sections
  - Ask for action items with owners and deadlines
- **Footer:** This is why project memory and specific prompts matter!

---

## Slide 35
- **Type:** Divider
- **Section Number:** BREAK
- **Section Title:** 10-Minute Break
- **Duration:** 10 min

---

## Slide 36
- **Type:** Divider
- **Section Number:** 08
- **Section Title:** Evaluating & Optimizing AI Agents
- **Duration:** 20 min

---

## Slide 37
- **Type:** Grid
- **Title:** The Quality Scorecard — 5 Dimensions
- **Layout:** 5 horizontal cards
- **Card 1 — Accuracy:**
  - Question: Are the facts, numbers, and logic correct?
  - Score: 1-5
- **Card 2 — Completeness:**
  - Question: Does it cover everything you asked for?
  - Score: 1-5
- **Card 3 — Format:**
  - Question: Is it structured the way you need it?
  - Score: 1-5
- **Card 4 — Speed:**
  - Question: Did it save significant time vs. manual?
  - Score: 1-5
- **Card 5 — Usability:**
  - Question: Can you use it as-is, or does it need heavy editing?
  - Score: 1-5
- **Scoring guide callout:**
  - 25/25: Ready to use immediately
  - 20-24: Minor edits needed (sweet spot)
  - 15-19: Significant editing — refine your prompt
  - Below 15: Re-prompt or switch approach
- **Footer:** Rate every important output on these five dimensions.

---

## Slide 38
- **Type:** Content
- **Title:** Decision Framework — Which Approach for Which Task?
- **Layout:** Escalation ladder
- **Level 1 — Simple Chat Prompt:**
  - Task type: One answer, no context needed
  - Example: "What does OTD stand for?"
- **Level 2 — Advanced Prompt (ROLE+CONTEXT+TASK+FORMAT):**
  - Task type: Specific format, needs reasoning
  - Example: "Analyze these 5 KPIs and rank by improvement priority"
- **Level 3 — Agent Mode:**
  - Task type: Multiple phases, file access needed
  - Example: "Read the CSV, analyze trends, generate a report"
- **Level 4 — Agent Mode + Power Automate + Project Memory:**
  - Task type: Recurring workflow
  - Example: "Weekly dive deep on missed shipments"
- **Callout:** The 80/20 Rule: 80% of time savings come from 20% of your prompts. Optimize those.
- **Footer:** Use the shortest prompt that produces the quality you need.

---

## Slide 39
- **Type:** Divider
- **Section Number:** 09
- **Section Title:** Security Review Basics
- **Duration:** 15 min

---

## Slide 40
- **Type:** Content
- **Title:** The Three Nevers
- **Layout:** 3 large warning cards
- **Card 1 — Never Auto-Approve:**
  - Icon: Stop sign
  - Rule: Always read what the agent plans to do before clicking approve
  - Tip: If you don't understand a command, ask the agent to explain it
- **Card 2 — Never Skip Review:**
  - Icon: Eye/review icon
  - Rule: Every output that goes to someone else must be reviewed by you
  - Tip: Check numbers, check logic, check for hallucinated facts
- **Card 3 — Never Share Secrets:**
  - Icon: Lock
  - Rule: Never paste passwords, API keys, or credentials into any AI tool
  - Tip: Never include associate PII (names, SSNs, addresses) in prompts
- **Visual note:** Red warning styling with icons. Critical security messaging.
- **Footer:** Your name is on the output, not the AI's.

---

## Slide 41
- **Type:** Grid
- **Title:** Code Review Checklist for Non-Developers
- **Layout:** Two columns — Red Flags vs Green Flags
- **Left column — Red Flags (Reject and Ask Questions):**
  - [ ] References to files you didn't mention
  - [ ] URLs you don't recognize
  - [ ] Commands that delete (`rm`, `del`) or overwrite files
  - [ ] References to environment variables or system settings
  - [ ] Any mention of passwords, tokens, or keys
  - [ ] Commands that install software you didn't request
- **Right column — Green Flags (Generally Safe):**
  - [ ] Reading files you created (like your CSV data)
  - [ ] Writing new files to your workspace
  - [ ] Navigating to URLs you specified
  - [ ] Formatting and text processing operations
  - [ ] Creating markdown reports
- **Callout:** The principle: If you don't understand it, don't approve it.
- **Footer:** You don't need to be a developer to review agent commands.

---

## Slide 42
- **Type:** Quiz
- **Badge:** INTERACTIVE QUIZ
- **Title:** Approve or Reject?
- **Subtitle:** Apply The Three Nevers to each agent action
- **Table:**
  | # | Agent Wants To... | Decision |
  |---|-------------------|----------|
  | 1 | Read sample-data.csv from your workspace | ? |
  | 2 | Delete all files in C:\temp to free up space | ? |
  | 3 | Write dive-deep-report.md to your folder | ? |
  | 4 | Access your email password from environment variables | ? |
  | 5 | Install a Python package to process data | ? |
  | 6 | Read an Excel file you created yesterday | ? |
  | 7 | Upload your report to an unknown URL | ? |
  | 8 | Create a new folder in your workspace | ? |
  | 9 | Access files in C:\Windows\System32 | ? |
  | 10 | Format numbers in your spreadsheet | ? |
- **Options:** APPROVE / REJECT

---

## Slide 43
- **Type:** Answer Key
- **Badge:** ANSWER KEY
- **Title:** Security Review — Answers
- **Subtitle:** Green = Approve | Red = Reject | Yellow = Ask Questions First
- **Table:**
  | # | Agent Wants To... | Decision | Reason |
  |---|-------------------|----------|--------|
  | 1 | Read sample-data.csv from your workspace | APPROVE | Your file, your workspace |
  | 2 | Delete all files in C:\temp | REJECT | Destructive, unexpected |
  | 3 | Write dive-deep-report.md to your folder | APPROVE | Creating output you requested |
  | 4 | Access your email password | REJECT | Never Share Secrets |
  | 5 | Install a Python package | ASK | Why? Is it necessary? |
  | 6 | Read an Excel file you created | APPROVE | Your file, expected action |
  | 7 | Upload report to unknown URL | REJECT | Don't recognize destination |
  | 8 | Create a new folder in your workspace | APPROVE | Safe, within your space |
  | 9 | Access C:\Windows\System32 | REJECT | System files, not your data |
  | 10 | Format numbers in your spreadsheet | APPROVE | Non-destructive, expected |
- **Footer:** When in doubt, reject and ask questions.

---

## Slide 44
- **Type:** Exercise
- **Badge:** EXERCISE 4
- **Title:** Personal Project Showcase
- **Time Box:** 25 minutes (5 min per AGM)
- **Scenario:** Present your personal AI automation project from Weeks 2-4
- **Presentation Format:**
  - 0:00-2:00 — Demo: Show what you built and how it works
  - 2:00-3:30 — Explain: What technique did you use? What did you learn?
  - 3:30-4:00 — Impact: How much time does it save? How often will you use it?
  - 4:00-5:00 — Q&A: Peer questions and feedback
- **Rubric (for peer scoring):**
  | Dimension | 1 (Needs Work) | 3 (Solid) | 5 (Outstanding) |
  |-----------|-----------------|-----------|------------------|
  | Practical Impact | Nice idea, unlikely to use | Useful for weekly tasks | Game-changer for daily ops |
  | Technical Skill | Basic prompt only | Prompt formula + one technique | Multiple techniques combined |
  | Presentation | Hard to follow | Clear explanation | Compelling story + live demo |
- **Footer:** This is a celebration, not a test. Any automation that saves time is valuable.

---

## Slide 45
- **Type:** Exercise Template
- **Badge:** EXERCISE 4
- **Title:** Project Presentation Template
- **Layout:** Structured presentation outline
- **Content:**
  ```
  MY AI AUTOMATION PROJECT

  1. THE PROBLEM (30 seconds)
  "Before AI, I used to ________________
  which took approximately ___ minutes."

  2. THE SOLUTION (60 seconds)
  "I built ________________ using:
  - Tool(s): [Bottle Rocket / Copilot / Power Automate]
  - Technique(s): [Prompt Formula / Agent Mode / Memory / etc.]"

  3. LIVE DEMO (60 seconds)
  [Show it working OR walk through screenshots]

  4. TIME SAVINGS (30 seconds)
  "This saves ___ minutes per [use/day/week]."
  "I use this [daily/weekly/as needed]."
  "Annual savings: approximately ___ hours."

  5. WHAT I LEARNED (30 seconds)
  "The biggest lesson was ________________."

  6. NEXT STEPS (30 seconds)
  "I plan to expand this by ________________."
  ```
- **Footer:** Fill in the blanks before your presentation

---

## Slide 46
- **Type:** Rubric
- **Badge:** PEER SCORING
- **Title:** Project Scoring Rubric
- **Layout:** Scoring grid with descriptions
- **Table:**
  | Dimension | 1 Point | 2 Points | 3 Points | 4 Points | 5 Points |
  |-----------|---------|----------|----------|----------|----------|
  | **Practical Impact** | Nice idea | Could use sometimes | Weekly value | Daily value | Game-changer |
  | **Technical Skill** | Basic prompt | Prompt + formula | + One technique | + Multiple techniques | Full toolkit |
  | **Presentation** | Confusing | Some clarity | Clear explanation | Good demo | Compelling story |
- **Scoring Guide:**
  - 13-15: Outstanding — teach others this approach
  - 10-12: Solid — great foundation to build on
  - 7-9: Good start — identify one thing to improve
  - Below 7: Keep practicing — ask for help
- **Footer:** Score honestly — feedback helps everyone improve

---

## Slide 47
- **Type:** Content
- **Title:** Giving Great Peer Feedback
- **Layout:** Three-column guidelines
- **Column 1 — Start With:**
  - What impressed you most
  - A specific strength you noticed
  - Something you'd like to try yourself
  - Examples: "I loved how you used..." / "The time savings were impressive"
- **Column 2 — Then Suggest:**
  - One way to expand the project
  - A technique that might improve it
  - A similar problem this could solve
  - Examples: "Have you tried adding..." / "This could also work for..."
- **Column 3 — End With:**
  - A genuine question about their approach
  - Something you want to learn more about
  - Examples: "How did you figure out..." / "What would you do differently..."
- **Footer:** Good feedback is specific, constructive, and curious.

---

## Slide 48
- **Type:** Divider
- **Section Number:** 11
- **Section Title:** Continuous Learning Roadmap
- **Duration:** 15 min

---

## Slide 49
- **Type:** Grid
- **Title:** Your 90-Day Roadmap
- **Layout:** 3 columns for each 30-day period
- **Column 1 — Days 1-30: Build the Habit:**
  - Week 1: Use Bottle Rocket for at least one task per day
  - Week 2: Save your 3 best prompts as templates
  - Week 3: Use Agent Mode for one multi-step task per week
  - Week 4: Teach one lead your best prompt
- **Column 2 — Days 31-60: Expand Your Skills:**
  - Week 5: Automate one recurring web or file task
  - Week 6: Update copilot-instructions.md with lessons learned
  - Week 7: Try Chain-of-Thought on a complex analysis
  - Week 8: Run a 15-min "AI tip of the week" with leads
- **Column 3 — Days 61-90: Multiply the Impact:**
  - Week 9: Calculate actual time savings over 2 months
  - Week 10: Identify 3 new tasks to automate
  - Week 11: Share best practices with another AGM
  - Week 12: Review what's working, set goals for next quarter
- **Callout:** Consistent users get 3x the productivity gains compared to occasional users.
- **Footer:** Daily usage beats occasional expertise.

---

## Slide 50
- **Type:** Quiz
- **Badge:** FINAL QUIZ
- **Title:** Course Summary — Test Your Knowledge
- **Subtitle:** 10 questions covering all 4 weeks
- **Table:**
  | # | Question | Answer |
  |---|----------|--------|
  | 1 | What are the 4 parts of the prompt formula? | ? |
  | 2 | Can you use Bottle Rocket with Tesla data? | ? |
  | 3 | Can you use GitHub Copilot with Tesla data? | ? |
  | 4 | What does "Chain-of-Thought" prompting do? | ? |
  | 5 | What file provides project memory to Copilot? | ? |
  | 6 | Which Power Automate flow type automates mouse clicks? | ? |
  | 7 | What are The Three Nevers? | ? |
  | 8 | What is Agent Mode used for? | ? |
  | 9 | How much daily time savings is possible with AI tools? | ? |
  | 10 | What should you ALWAYS do before sending AI output? | ? |
- **Footer:** Answers on next slide

---

## Slide 51
- **Type:** Answer Key
- **Badge:** FINAL QUIZ ANSWERS
- **Title:** Course Summary — Answer Key
- **Subtitle:** How did you do? Review any topics you missed.
- **Table:**
  | # | Question | Answer |
  |---|----------|--------|
  | 1 | Prompt formula parts | ROLE + CONTEXT + TASK + FORMAT |
  | 2 | Bottle Rocket + Tesla data? | YES — fully approved |
  | 3 | GitHub Copilot + Tesla data? | NO — conditional, generic only |
  | 4 | Chain-of-Thought | Breaks complex reasoning into steps |
  | 5 | Project memory file | .github/copilot-instructions.md |
  | 6 | Mouse click automation | Desktop Flows (RPA) |
  | 7 | The Three Nevers | Never auto-approve, skip review, share secrets |
  | 8 | Agent Mode | Multi-step tasks with file access |
  | 9 | Daily time savings | 40-60 minutes per day |
  | 10 | Before sending output | REVIEW IT — your name is on it |
- **Scoring:** 10/10 = AI Expert | 7-9 = Strong | 4-6 = Review needed | <4 = Retake training

---

## Slide 52
- **Type:** Grid
- **Title:** Complete Course Prompt Library
- **Layout:** 4-column grid by week
- **Week 1 — Foundations (9 prompts):**
  - Basic standup summary
  - ROLE+CONTEXT+TASK+FORMAT template
  - Policy compliance check
  - Shift handoff generator
  - KPI interpretation
  - Meeting prep
  - Communication draft
  - Task prioritization
  - Quick reference lookup
- **Week 2 — Advanced Prompting (9 prompts):**
  - Chain-of-Thought analysis
  - Few-Shot formatting
  - Template creation
  - Data interpretation
  - Report generation
  - Email templates
  - Comparison analysis
  - Trend analysis
  - Action item extraction
- **Week 3 — Agent Skills (9 prompts):**
  - Voice Mode standup
  - Agent Mode file analysis
  - Multi-step automation
  - Code generation
  - Terminal commands
  - Project planning
  - Documentation
  - Research synthesis
  - Workflow automation
- **Week 4 — Advanced Automation (9 prompts):**
  - Power Automate triggers
  - Desktop flow actions
  - Cloud flow scheduling
  - Project memory setup
  - Dive deep automation
  - Quality scoring
  - Security review
  - Presentation prep
  - ROI calculation
- **Footer:** 36 prompts across 4 weeks — save this as your quick reference

---

## Slide 53
- **Type:** Reference
- **Title:** Prompt Library Quick Reference
- **Layout:** Categorized prompt list
- **By Use Case:**
  | Category | Key Prompts |
  |----------|-------------|
  | Daily Operations | Standup summary, Shift handoff, KPI review |
  | Analysis | Dive deep, Root cause, Trend comparison |
  | Communication | Email draft, Meeting prep, Announcement |
  | Automation | Power Automate flow, Agent Mode task, Scheduled job |
  | Quality | Output review, Hallucination check, Format validation |
- **Quick Access:**
  - Bottle Rocket: go.tesla.com/chat
  - Power Automate: make.powerautomate.com
  - AI Policy: go.tesla.com/aitools
  - Project Memory: .github/copilot-instructions.md
- **Footer:** Bookmark these resources

---

## Slide 54
- **Type:** Journey
- **Badge:** GRADUATION
- **Title:** Your AI Journey — 4 Weeks of Growth
- **Layout:** Visual timeline
- **Week 1 — Foundation:**
  - Started: "What is AI?"
  - Ended: "I can write effective prompts"
  - Tool mastered: Bottle Rocket
- **Week 2 — Advanced Skills:**
  - Started: "Basic prompts work sometimes"
  - Ended: "I have templates that work every time"
  - Techniques mastered: Chain-of-Thought, Few-Shot
- **Week 3 — Agent Skills:**
  - Started: "AI types for me"
  - Ended: "AI works autonomously on my behalf"
  - Modes mastered: Voice Mode, Agent Mode
- **Week 4 — Automation:**
  - Started: "One task at a time"
  - Ended: "Workflows run automatically"
  - Tools mastered: Power Automate, Project Memory
- **Visual note:** Progressive arrow showing growth from Week 1 to Week 4

---

## Slide 55
- **Type:** Certificate
- **Badge:** CERTIFICATE OF COMPLETION
- **Title:** AI Operations Training Graduate
- **Layout:** Certificate template
- **Content:**
  ```
  This certifies that

  ________________________________
  [NAME]

  has successfully completed the

  AI OPERATIONS TRAINING COURSE

  4 Weeks | 16 Hours | 12 Tools Mastered

  Issued: [DATE]
  Instructor: [INSTRUCTOR NAME]

  Skills Demonstrated:
  - Prompt Engineering
  - Agent Automation
  - Workflow Automation
  - Security Best Practices
  ```
- **Visual note:** Tesla branding, certificate styling, space for signatures
- **Footer:** Take a photo of your certificate!

---

## Slide 56
- **Type:** Summary
- **Title:** Course Graduation — Your Complete Toolkit
- **Layout:** Numbered takeaways
- **Takeaway 1:**
  - Number: 01
  - Text: Clear prompts produce clear outputs — the ROLE + CONTEXT + TASK + FORMAT formula works with any AI tool
- **Takeaway 2:**
  - Number: 02
  - Text: Human review is non-negotiable — your judgment makes AI outputs trustworthy
- **Takeaway 3:**
  - Number: 03
  - Text: Policy compliance protects everyone — Bottle Rocket and Power Automate for Tesla data, Copilot for non-Tesla work
- **Takeaway 4:**
  - Number: 04
  - Text: Practice compounds over time — daily usage beats occasional expertise by 3x
- **Visual note:** Checkmark icons next to each takeaway. Celebration styling.
- **Footer:** These principles will serve you no matter what AI tools come next.

---

## Slide 57
- **Type:** Roadmap
- **Badge:** NEXT STEPS
- **Title:** What's Next? Your Post-Course Path
- **Layout:** Three parallel tracks
- **Track 1 — Individual Growth:**
  - Week 1-4: Daily AI usage habit
  - Month 2: Optimize top 5 prompts
  - Month 3: Calculate actual ROI
  - Ongoing: Update project memory quarterly
- **Track 2 — Team Multiplication:**
  - Week 1: Teach one prompt to a lead
  - Month 1: Run 15-min AI tip sessions
  - Month 2: Create team prompt library
  - Month 3: Measure team time savings
- **Track 3 — Advanced Skills:**
  - Explore Power Automate AI Builder
  - Try multimodal prompts in Bottle Rocket
  - Build cross-system automations
  - Stay updated on new AI tools (via IT)
- **Footer:** Your learning doesn't end here — it's just beginning.

---

## Slide 58
- **Type:** Content
- **Title:** Congratulations, Graduates!
- **Layout:** Celebration slide
- **Content:**
  - 4 weeks ago: Zero AI experience
  - Today: Complete AI toolkit for DC operations
  - 12 tools mastered (see list below)
  - 40-60 min/day time savings potential
  - Over 150 hours saved per year
- **Toolkit list (compact):**
  - Bottle Rocket, Prompt Formula, Chain-of-Thought, Few-Shot, Templates, Voice Mode, Agent Mode, Power Automate Desktop, Power Automate Cloud, Project Memory, Quality Scorecard, Security Review
- **Policy reminder box:**
  - Approved (Tesla data OK): Bottle Rocket, IT Assist, Employee Assist, Power Automate
  - Conditional (NO Tesla data): GitHub Copilot
  - Prohibited: ChatGPT, Claude.ai, meeting transcription, Apple Intelligence
- **Footer:** Go save some time. Class dismissed!
- **Visual note:** Graduation cap icon, confetti styling, celebratory theme

---

## Slide Distribution Summary

| Section | Slides | Slide Numbers |
|---------|--------|---------------|
| Title + Agenda | 2 | 01-02 |
| Section 1: Time Savings Review + ROI | 3 | 03-05 |
| Section 2: Power Automate — Workflow Automation | 3 | 06-08 |
| Power Automate Quiz | 2 | 09-10 |
| Exercise 1: Power Automate Desktop + Cloud Flows | 4 | 11-14 |
| Activity A: Flow Recording Demo | 1 | 15 |
| Section 4: Agents That Remember | 3 | 16-18 |
| Project Memory Quiz | 2 | 19-20 |
| Break 1 | 1 | 21 |
| Exercise 2: Persistent DC Assistant | 3 | 22-24 |
| Section 6: Multi-Agent Orchestration | 2 | 25-26 |
| Orchestration Pattern Quiz | 2 | 27-28 |
| Sequential Pattern Deep Dive | 1 | 29 |
| Exercise 3: Dive Deep Automation | 3 | 30-32 |
| Activity B: Quality Scoring Practice | 2 | 33-34 |
| Break 2 | 1 | 35 |
| Section 8: Evaluating & Optimizing | 3 | 36-38 |
| Section 9: Security Review Basics | 3 | 39-41 |
| Security Review Quiz | 2 | 42-43 |
| Exercise 4: Personal Project Showcase | 4 | 44-47 |
| Section 11: Continuous Learning | 2 | 48-49 |
| Course Summary Quiz | 2 | 50-51 |
| Prompt Library Reference | 2 | 52-53 |
| Graduation Ceremony | 5 | 54-58 |
| **TOTAL** | **58** | |

**Slide Type Distribution:**
- Title: 1
- Agenda: 1
- Divider: 7 (including 2 breaks)
- Content: 12
- Comparison: 1
- Grid: 5
- Exercise: 4
- Exercise Template: 5
- Quiz: 5
- Answer Key: 5
- Activity: 2
- Checklist: 2
- Rubric: 1
- Reference: 1
- Journey: 1
- Certificate: 1
- Summary: 1
- Roadmap: 1
- **Total: 58 slides**

---

## New Slides Added (28 new slides)

1. **Power Automate Quiz** (Slides 09-10)
   - Quiz: "Desktop Flow, Cloud Flow, or Process Flow?" for 8 scenarios
   - Answer key with color coding

2. **Exercise 1 Template Slides** (Slides 12-14)
   - Desktop flow step-by-step template
   - Cloud flow step-by-step template
   - Success verification checklist

3. **Activity A: Flow Recording Demo** (Slide 15)
   - Observation checklist for instructor demo

4. **Project Memory Quiz** (Slides 19-20)
   - Quiz: "With or Without Memory?" output comparison
   - Answer key with analysis table

5. **Exercise 2 Template + Checklist** (Slides 23-24)
   - copilot-instructions.md template with placeholders
   - Testing checklist for before/after comparison

6. **Orchestration Pattern Quiz** (Slides 27-28)
   - Quiz: "Which pattern?" (Sequential/Parallel/Supervisor/Human-in-Loop)
   - Answer key with color coding

7. **Exercise 3 Template + Expected Output** (Slides 31-32)
   - Dive Deep automation prompt template
   - Expected output format sample

8. **Activity B: Quality Scoring Practice** (Slides 33-34)
   - Sample output to score
   - Scorecard application with answers

9. **Security Review Quiz** (Slides 42-43)
   - Quiz: "Approve or Reject?" for 10 agent actions
   - Answer key with reasoning

10. **Exercise 4: Project Showcase Templates** (Slides 45-47)
    - Presentation template with fill-in blanks
    - Peer scoring rubric
    - Feedback guidelines

11. **Course Summary Quiz** (Slides 50-51)
    - Final quiz covering all 4 weeks (10 questions)
    - Answer key with scoring guide

12. **Prompt Library Reference** (Slides 52-53)
    - All 36 prompts across 4 weeks organized by week
    - Quick reference by category

13. **Graduation Ceremony** (Slides 54-58)
    - Journey visualization (4-week timeline)
    - Certificate template
    - Key takeaways summary
    - Next steps roadmap
    - Final celebration slide

---

*Slide Plan v2.0 — Week 4: Advanced Automation, Power Automate & Multi-Agent Orchestration*
*Final session of 4-week course with expanded quizzes, templates, and graduation ceremony*
*Designed for 960x540 HTML rendering with Tesla light theme*
*58 slides total (expanded from 30)*
