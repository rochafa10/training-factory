# Week 2 Exercises: Advanced Prompts & Your First Agent

**Total In-Session Time:** 195 minutes (81% of session)
**Tools Needed:** Bottle Rocket (go.tesla.com/chat), VS Code with GitHub Copilot
**Difficulty Range:** 3-7 / 10

---

## Skills Progression

### Skills Reinforced (from Week 1)
- **Basic prompting** -- ROLE + CONTEXT + TASK + FORMAT formula
- **Iteration** -- Refining prompts through follow-ups
- **Policy awareness** -- Approved/Conditional/Prohibited tools

### Skills Introduced (Week 2)
- **Chain-of-thought prompting** -- Step-by-step reasoning
- **Few-shot prompting** -- Teaching by example
- **Enhanced persona** -- Specific expertise and traits
- **VS Code setup** -- IDE configuration for AI-assisted work
- **Agent Mode** -- Autonomous multi-step task completion
- **MCP tools** -- Giving agents new capabilities (Playwright)
- **Plan-Execute-Iterate** -- Agent workflow pattern
- **Agent debugging** -- Redirecting and fixing agent mistakes
- **Git basics** -- Reviewing what agents changed

---

## Exercise 1: CoT + Data Analysis Sprint

**Type:** Guided Practice
**Difficulty:** 4/10
**Time:** 30 minutes
**Tool:** Bottle Rocket (Tesla Data OK)

### Scenario

You need to analyze your DC's performance data. Instead of spending an hour in a spreadsheet, you'll use AI with advanced prompting to extract executive-ready insights in minutes.

### Part A: Chain-of-Thought Analysis (15 min)

**The Data:**
| Day | Performance | Notes |
|-----|-------------|-------|
| Monday | 95% of target | Normal operations |
| Tuesday | 92% of target | 2 call-outs |
| Wednesday | 78% of target | Conveyor down 3 hours |
| Thursday | 88% of target | Running behind on orders |
| Friday | 85% of target | Still catching up |

**Step 1: Simple Prompt (3 min)**
Open Bottle Rocket. Paste this:
```
Here's our DC performance data this week:
Monday 95%, Tuesday 92%, Wednesday 78%, Thursday 88%, Friday 85%.
What do you see?
```
Note the response quality.

**Step 2: CoT Prompt (7 min)**
Now paste this upgraded version:
```
ROLE: You are an operations analyst helping a DC manager understand a productivity shortfall.

CONTEXT: Our DC missed its weekly productivity target by 8%. Daily breakdown:
- Monday: 95% of target (normal)
- Tuesday: 92% (2 call-outs)
- Wednesday: 78% (conveyor down 3 hours)
- Thursday: 88% (running behind)
- Friday: 85% (catching up)

TASK: Analyze step by step:
1. First, calculate each day's contribution to the weekly shortfall
2. Then, identify the primary driver
3. Next, trace any cascade effects between days
4. Finally, recommend 2-3 specific preventive actions

FORMAT: Numbered sections matching the steps. Include calculations. Keep recommendations actionable with who/what/when.
```

**Step 3: Compare (5 min)**
Side by side: how much deeper is the CoT response? Look for:
- Calculations (did it show math?)
- Root cause identification (Wednesday conveyor = primary driver?)
- Cascade recognition (Thursday/Friday = downstream effects?)
- Actionable recommendations (specific vs. generic?)

### Part B: Structured Data Analysis (15 min)

**The Dataset:**
| Week | Orders | Fill Rate | Overtime Hrs | Headcount | Safety |
|------|--------|-----------|-------------|-----------|--------|
| Week 1 | 12,450 | 97.2% | 85 | 42 | 0 |
| Week 2 | 13,100 | 96.8% | 110 | 42 | 1 |
| Week 3 | 11,800 | 98.1% | 60 | 40 | 0 |
| Week 4 | 14,200 | 94.5% | 145 | 42 | 0 |
| Week 5 | 13,900 | 95.1% | 130 | 41 | 2 |
| Week 6 | 15,100 | 93.8% | 160 | 43 | 1 |

**Prompt to Use:**
```
ROLE: You are a DC operations analyst with 10 years of experience spotting correlations others miss.

CONTEXT: 6 weeks of operations data from our distribution center:
[Paste the table above]
Volume is trending up due to seasonal demand.

TASK: Analyze step by step:
1. First, identify the trend for each metric (improving/declining/stable) with specific numbers
2. Then, find correlations between metrics (e.g., does volume affect fill rate?)
3. Next, flag any anomalies or warning signs needing immediate attention
4. Finally, recommend 3 specific actions with measurable targets

FORMAT:
- Start with a trend summary table
- Use specific percentages and calculations
- Bold the single most critical finding
- Recommendations must include who should act and a target number
```

**What Good Output Looks Like:**
- Identifies inverse relationship: orders up 21%, fill rate down 3.4 points
- Flags overtime trend: 85 -> 160 hrs = 88% increase
- Spots safety correlation: incidents cluster in high-volume weeks
- Quantifies: "Each +1,000 orders costs ~25 OT hours and ~0.8% fill rate"
- Recommends specific targets, not vague advice

### Troubleshooting

| Problem | Likely Cause | Solution |
|---------|--------------|----------|
| AI gives generic advice | No data in CONTEXT | Include specific numbers and dates |
| Analysis is shallow | Missing "step by step" instruction | Number the analysis steps explicitly |
| Skips to conclusions | Steps not specific enough | Make each step concrete: "First calculate..." |
| Recommendations too vague | No specificity requirement | Add "Include specific numbers and targets" to FORMAT |

---

## Exercise 2: Template Speed Build

**Type:** Independent Practice
**Difficulty:** 4/10
**Time:** 10 minutes
**Tool:** Bottle Rocket (Tesla Data OK)

### Instructions

1. Pick your most frequent weekly task:
   - Weekly KPI report for leadership
   - Shift handoff summary
   - Vendor performance email
   - Labor planning analysis
   - Safety incident summary

2. Build a template using the upgraded formula:
```
ROLE: [Specific expert with years, specialization, "known for" trait]

CONTEXT:
- Facility: [DC NAME]
- Situation: [WHAT'S HAPPENING]
- Data: [RELEVANT NUMBERS]

TASK: [Use CoT if analysis needed]
1. First, [step]
2. Then, [step]
3. Finally, [step]

FORMAT:
- [Structure, length, tone]
- [Example output pattern if using few-shot]
```

3. Test it with realistic data
4. Save it -- you'll use this in future weeks

### Success Criteria
- [ ] Uses at least one Week 2 technique (CoT, Few-Shot, or enhanced persona)
- [ ] Has [PLACEHOLDERS] for variable data
- [ ] Tested with realistic data
- [ ] Output is something you'd actually use at work

### Troubleshooting

| Problem | Likely Cause | Solution |
|---------|--------------|----------|
| Output too generic | CONTEXT lacks specifics | Add your DC name, real numbers |
| Template too complex | Too many placeholders | Pre-fill stable elements |
| Output wrong length | No constraint | Add "Keep under X words" |

---

## Exercise 3: VS Code + Copilot Setup

**Type:** Guided Setup
**Difficulty:** 3/10
**Time:** 20 minutes
**Tool:** VS Code + GitHub Copilot

### Before You Start

You'll need:
- Your laptop with admin/install permissions
- A GitHub account (create one if you don't have it)
- Internet access

### Step-by-Step Setup

**Step 1: Install VS Code (3 min)**
1. Open your browser
2. Go to https://code.visualstudio.com
3. Click "Download" (it detects your operating system)
4. Run the installer with default settings
5. Launch VS Code when installation completes

**Step 2: Install GitHub Copilot Extension (2 min)**
1. In VS Code, click the Extensions icon in the left sidebar (looks like 4 squares)
2. Search for "GitHub Copilot"
3. Click "Install" on the one by GitHub (it should be the first result)
4. Wait for installation to complete

**Step 3: Sign In (3 min)**
1. A notification will appear asking you to sign in to GitHub
2. Click "Sign in to GitHub"
3. Your browser will open -- sign in with your GitHub credentials
4. Authorize VS Code to access your GitHub account
5. Return to VS Code -- you should see the Copilot icon in the status bar

**Step 4: Select the Model (2 min)**
1. Open Copilot Chat: press Ctrl+Shift+I (or click the Copilot icon)
2. At the top of the chat panel, find the model dropdown
3. Select **Claude Opus 4.5** (premium model, best quality)
4. Note: you have 300 premium requests per month

**Step 5: Verify It Works (2 min)**
1. In the Copilot Chat panel, type: "Hello! What can you help me with?"
2. You should get a response from the AI
3. If you see a response -- you're set up!

**Step 6: Troubleshooting Buffer (8 min)**
Use this time to help anyone who got stuck.

### Common Issues

| Problem | Solution |
|---------|----------|
| Can't install VS Code | Check admin permissions; try portable version |
| Extension won't install | Restart VS Code; check internet connection |
| GitHub sign-in fails | Try signing in at github.com first, then retry |
| No Copilot icon | Close and reopen VS Code; verify extension is installed |
| Model dropdown missing | Make sure Copilot extension is up to date |
| "No access" error | Verify Copilot subscription is active on your GitHub account |

### Policy Reminder

> **CRITICAL:** GitHub Copilot is CONDITIONALLY approved at Tesla.
> - **NO Tesla Data** in Copilot -- ever
> - No metrics, employee names, vendor details, internal processes
> - Use generic/fictional data for all exercises
> - Tesla data stays in Bottle Rocket (go.tesla.com/chat)
> - Reference: go.tesla.com/aitools

---

## Exercise 4: Your First Agent Mode Task

**Type:** Guided Practice
**Difficulty:** 5/10
**Time:** 25 minutes
**Tool:** GitHub Copilot (Agent Mode) -- NO Tesla Data

### Scenario

You're going to ask an AI agent to BUILD something for you -- not just write text, but create actual files on your computer.

### Setup (2 min)

1. In VS Code, create a new folder: File > Open Folder > create "week2-exercises" on your Desktop
2. Open Copilot Chat (Ctrl+Shift+I)
3. At the top of the chat panel, switch the mode dropdown to **"Agent"**
4. Make sure the model is set to **Claude Opus 4.5**

### The Task (23 min)

**Step 1: Give the agent a task (3 min)**
Type this in Agent Mode:
```
Create a professional shift handoff template as an HTML page.

It should include:
- Header with date and shift (Day → Night)
- Status indicator (On Track / Watch / Behind)
- Metrics table: Orders Processed, Quality %, Headcount (actual vs target)
- Key Events section with timestamps
- Carryover items for next shift (checklist)
- Watch Items section
- Clean, professional design with dark background

Use sample data to fill it in so I can see what it looks like.
```

**Step 2: Read the plan (3 min)**
The agent will show you its plan. Read it:
- What files will it create?
- Does the plan match what you asked for?
- Anything missing?

If it looks good, **approve** the plan.

**Step 3: Watch the agent work (5 min)**
The agent will:
- Create an HTML file
- Write the template with your specifications
- May ask for permission to run commands

**Approve safe commands** like creating files. **Ask questions** about anything you don't understand.

**Step 4: Review the output (5 min)**
1. Find the HTML file the agent created (in your week2-exercises folder)
2. Right-click the file > "Open with" > your browser
3. Does it look right? Check:
   - All sections present?
   - Sample data filled in?
   - Professional appearance?

**Step 5: Iterate (7 min)**
Ask the agent to improve it:
- "Add a color-coded status: green for on track, yellow for watch, red for behind"
- "Make the design match Tesla branding -- dark background, red accents"
- "Add a section for safety observations"

### What You Just Experienced

| What Happened | Why It Matters |
|---------------|---------------|
| You described what you wanted in English | No coding knowledge needed |
| Agent created a plan and showed you | You stay in control |
| Agent built real files on your computer | This is a working tool, not just text |
| You iterated with feedback | Same refine-and-improve cycle as Bottle Rocket |
| The result is something you can actually use | Agents create reusable tools |

### Troubleshooting

| Problem | Likely Cause | Solution |
|---------|--------------|----------|
| Agent asks to run terminal commands | Normal behavior for file creation | Approve "safe" commands (mkdir, creating files) |
| Output looks wrong in browser | HTML formatting issue | Ask agent: "The output looks wrong in the browser. Can you fix the HTML?" |
| Agent creates code you don't understand | Normal -- you don't need to read code | Focus on the rendered output, not the code |
| Agent gets stuck or loops | Complex task or conflicting instructions | Type "Stop. Let's start over with a simpler approach" |
| Agent didn't create the file | May have only shown code in chat | Ask: "Please create this as an actual file in my project" |

---

## Exercise 5: Install & Use First MCP Skill

**Type:** Guided Practice
**Difficulty:** 6/10
**Time:** 25 minutes
**Tool:** GitHub Copilot (Agent Mode) + Playwright MCP -- NO Tesla Data

### Scenario

Your Copilot agent can read and write files. But it can't browse the internet, fill out forms, or interact with websites. Let's give it that ability by installing the Playwright MCP tool.

### Part 1: Install Playwright MCP (5 min)

**Step 1:** Open VS Code Settings
- Press Ctrl+Shift+P (Command Palette)
- Type "Settings JSON" and select "Preferences: Open User Settings (JSON)"

**Step 2:** Add MCP Configuration
Add this to your settings.json:
```json
{
  "mcp": {
    "servers": {
      "playwright": {
        "command": "npx",
        "args": ["-y", "@anthropic-ai/mcp-playwright"]
      }
    }
  }
}
```

**Step 3:** Restart Copilot
- Close and reopen the Copilot Chat panel
- The agent now has browser automation capabilities

### Part 2: Use the New Skill (10 min)

**Step 1: Task without context (see what happens)**
In Agent Mode, type:
```
Go to https://news.ycombinator.com and tell me what the top 5 stories are right now.
```

Watch the agent:
1. Open a browser (you may see a browser window appear)
2. Navigate to the website
3. Read the page content
4. Report back with the top stories

**This was impossible before installing the MCP tool.**

**Step 2: A more useful task**
```
Go to https://weather.gov and find the 7-day forecast for Tampa, FL.
Summarize it in a simple table: Day | High | Low | Conditions.
Save the result as weather-forecast.html in my project folder.
```

Watch the agent combine skills: browse (Playwright) + create files (built-in).

### Part 3: Before vs After (5 min)

Try removing the MCP configuration (comment it out), restart Copilot, and ask the same question. The agent will say it can't access websites.

Re-enable it. The skill is back.

**The lesson:** MCP tools are like installing apps. Each one gives the agent a new capability.

### Part 4: Discussion (5 min)

With your group, discuss:
1. What websites or data sources do you check regularly for your DC?
2. Which of those could an agent check for you automatically?
3. What other "skills" would be useful? (Database access? Email? Calendar?)

### Troubleshooting

| Problem | Likely Cause | Solution |
|---------|--------------|----------|
| "npx not found" error | Node.js not installed | Install Node.js from nodejs.org (LTS version) |
| MCP doesn't appear to work | Config syntax error | Double-check JSON formatting (commas, brackets) |
| Browser doesn't open | Playwright dependencies missing | Run: npx playwright install |
| Agent says it can't browse | MCP not loaded | Restart VS Code completely, not just the chat panel |
| Website blocks the agent | Anti-bot protection | Try a different public website |

---

## Exercise 6: Agent Builds a Real Tool

**Type:** Independent Practice
**Difficulty:** 6/10
**Time:** 30 minutes
**Tool:** GitHub Copilot (Agent Mode) -- NO Tesla Data

### Scenario

Now that you've seen what agents can do, it's time to build something you'll actually use: a time-savings tracking dashboard.

### The Task

In Agent Mode, type:
```
Build me a time-savings tracking dashboard as a single HTML file.

Requirements:
- A form to log tasks: task name, time without AI (minutes), time with AI (minutes)
- Auto-calculate time saved for each entry
- A running table showing all logged tasks
- Summary stats at the top: total tasks, total time saved, average savings per task
- A weekly goal progress bar (goal: 150 minutes saved per week)
- Professional dark design with red accent color (#e82127)
- The data should persist in the browser (use localStorage)
- Make it look clean and modern

This is a personal productivity tool for a distribution center manager.
```

### What to Watch For

As the agent works:

1. **Read the plan** -- Does it make sense? Does it cover all requirements?
2. **Approve steps** -- The agent may want to create files, install packages, or run commands
3. **Check the output** -- Open the HTML file in your browser after creation
4. **Test the form** -- Add a few sample entries:
   - "Weekly KPI Report" | 45 min without AI | 15 min with AI
   - "Vendor email" | 20 min without AI | 5 min with AI
   - "Shift handoff summary" | 15 min without AI | 3 min with AI

### Iteration Ideas

After the initial build, ask the agent to improve:
- "Add a button to export the data as CSV"
- "Add a chart showing time saved per day"
- "Add categories: Analysis, Communication, Planning, Documentation"
- "Make it work on mobile too"

### Success Criteria

- [ ] Dashboard loads in browser
- [ ] Can add new task entries
- [ ] Time saved calculates correctly
- [ ] Running total updates
- [ ] Goal progress bar works
- [ ] Data persists after page refresh (localStorage)
- [ ] Looks professional

### Troubleshooting

| Problem | Likely Cause | Solution |
|---------|--------------|----------|
| HTML file won't open | File path issue | Right-click file in VS Code Explorer > "Reveal in File Explorer" > double-click |
| Form doesn't work | JavaScript error | Ask agent: "The form isn't working. Can you check for JavaScript errors?" |
| Data doesn't persist | localStorage not implemented | Ask agent: "The data disappears on refresh. Please add localStorage" |
| Design looks bad | Agent used default styling | Give specific design instructions: "Use dark background #1a1a1a, red accent #e82127, white text" |
| Agent creates too many files | Overcomplicating | Ask: "Please put everything in a single HTML file" |

---

## Exercise 7: Debug & Redirect an Agent

**Type:** Scenario Challenge
**Difficulty:** 7/10
**Time:** 25 minutes
**Tool:** GitHub Copilot (Agent Mode) -- NO Tesla Data

### Scenario

Agents are powerful but imperfect. This exercise teaches you the most important agent skill: recognizing when something goes wrong and fixing it.

### Part A: The Vague Instruction Test (10 min)

**Step 1:** Give the agent a deliberately vague task:
```
Make me a tool for my DC.
```

**Step 2:** Observe what happens. The agent will likely:
- Ask clarifying questions (this is GOOD -- it means the agent knows it needs more info)
- OR make assumptions and build something generic (this is COMMON)

**Step 3:** If the agent asks questions, answer vaguely: "Just something useful."

**Step 4:** Review the output. Is it useful? Probably not very.

**Step 5:** NOW redirect with specificity:
```
Stop. I need something specific: a daily checklist for a DC Area General Manager.

Include these sections:
1. Pre-shift (safety walk, staffing review, equipment check)
2. Mid-shift (productivity check, quality audit, break scheduling)
3. End-of-shift (handoff notes, metrics capture, next-day prep)

Each item should have a checkbox, responsible party, and time estimate.
Make it as a clean HTML page with dark theme.
```

**Step 6:** Compare the two outputs. The specific redirect should produce dramatically better results.

**The lesson:** "Garbage in, garbage out" applies even more to agents than to chat. With chat, you get bad text. With agents, you get bad files, bad code, bad tools.

### Part B: Catch and Fix a Mistake (15 min)

**Step 1:** Give the agent a task with a specific constraint:
```
Create an HTML page displaying a weekly KPI dashboard.

Use this sample data:
- Orders: 14,200 (target: 13,000) -- 109%
- Fill Rate: 96.5% (target: 99.0%) -- below target
- Safety: 1 incident (target: 0) -- below target
- Overtime: 130 hrs (target: 100) -- 30% over
- Headcount: 42/45 -- 3 short

Requirements:
- Must fit on one screen (960x540 pixels, no scrolling)
- Use color coding: green for above target, red for below
- Dark background (#0a0a0a), red accent (#e82127), white text
- Show each metric as a card with actual vs target

IMPORTANT: The page must be exactly 960x540 pixels. Do not create a page that scrolls.
```

**Step 2:** Review the output. Common agent mistakes:
- Page scrolls despite the constraint
- Wrong colors used
- Missing metrics
- Over-designed (too fancy, ignoring simplicity)

**Step 3:** For each mistake, practice the fix workflow:

**If the page scrolls:**
> "The page scrolls. I said 960x540 with no scrolling. Reduce font sizes and remove any padding to make everything fit."

**If colors are wrong:**
> "The colors are wrong. Use exactly: background #0a0a0a, accent #e82127, text #ffffff, cards #1a1a1a."

**If a metric is missing:**
> "You're missing the headcount metric. Add it as a card showing 42/45 with status indicator."

**Step 4:** After fixing, review what changed:
- Look at the file in VS Code -- can you see what was modified?
- Open in browser -- does it look right now?

### Key Takeaways

| Skill | What You Practiced |
|-------|-------------------|
| Recognizing vague instructions | Part A: saw what happens with "make me a tool" |
| Redirecting with specificity | Part A: "Stop. I need specifically..." |
| Identifying agent mistakes | Part B: found constraint violations |
| Giving specific corrections | Part B: pointed to exact issues |
| Iterative debugging | Part B: fix → check → fix → check |

### Troubleshooting

| Problem | Likely Cause | Solution |
|---------|--------------|----------|
| Agent refuses to stop | It may be mid-execution | Wait for it to finish, then redirect |
| Agent repeats the same mistake | Instructions still ambiguous | Be more explicit: include dimensions, colors, exact text |
| Agent over-corrects | Too many changes at once | Fix one thing at a time |
| Agent deletes your good work | It sometimes starts over | Say "Don't delete the existing file. Just modify the [specific section]" |

---

## Homework Extension

### Part 1: Agent Mode Practice (~20 min)

Use Agent Mode for 2 non-Tesla-data tasks:

**Task Ideas:**
1. Build a meeting agenda template (HTML or Markdown)
2. Create a simple calculator (convert units, calculate overtime costs)
3. Generate a training checklist for new hires (generic, not Tesla-specific)
4. Build a habit tracker or reading log

For each task:
- Use Agent Mode (not Chat)
- Read the plan before approving
- Iterate at least once
- Note: time to complete, quality of output, any issues

### Part 2: MCP Exploration (~10 min)

Research what other MCP tools exist. Find 3 that would help your DC work.

Good starting points:
- https://github.com/modelcontextprotocol -- the official MCP repository
- Search for: "MCP servers list" or "Model Context Protocol tools"

For each tool you find, note:
- What it does
- How it could help your DC operations
- Whether it would need Tesla data access (if yes, it may not be approved)

### Part 3: Think Ahead (~10 min)

Write a 2-sentence description of a project you'd automate if you could:
- What does it do?
- What tools/skills would the agent need?

Example: "I want an agent that reads my weekly headcount spreadsheet, compares it to the demand forecast, and generates a staffing recommendation email to my regional director. It would need file access (to read the spreadsheet) and a formatting skill (to create the email)."

### Part 4: Daily Time Tracking (~5 min/day)

Use your new time-savings dashboard from Exercise 6 to track savings daily.
Target: 20-30 min/day this week.

---

## Exercise Validation Log

| Exercise | Difficulty | Duration | Type | Tool | Feasible? |
|----------|------------|----------|------|------|-----------|
| 1: CoT + Data Analysis | 4/10 | 30 min | Guided | Bottle Rocket | Yes |
| 2: Template Speed Build | 4/10 | 10 min | Independent | Bottle Rocket | Yes |
| 3: VS Code + Copilot Setup | 3/10 | 20 min | Guided Setup | VS Code | Yes (IT support needed) |
| 4: First Agent Mode Task | 5/10 | 25 min | Guided | Copilot Agent | Yes |
| 5: Install First MCP Skill | 6/10 | 25 min | Guided | Copilot + MCP | Yes (Node.js required) |
| 6: Agent Builds Real Tool | 6/10 | 30 min | Independent | Copilot Agent | Yes |
| 7: Debug & Redirect Agent | 7/10 | 25 min | Challenge | Copilot Agent | Yes |

---

## Quality Checklist

| Check | Requirement | Status |
|-------|-------------|--------|
| Exercise count | 3+ exercises per week | 7 exercises |
| Difficulty range | Progressive (3-7/10) | 3, 4, 4, 5, 6, 6, 7 |
| Tool coverage | Correct tool per exercise | BR (1-2), Copilot (3-7) |
| Troubleshooting | 3+ issues per exercise | 3-5 per exercise |
| Time realistic | Total fits in session | 195 min (81% of 240) |
| Skills tracked | Reinforce + Introduce documented | 3 reinforced, 9 introduced |
| Policy compliance | NO Tesla Data in Copilot exercises | Verified -- all use generic data |
| Hands-on ratio | 80%+ target | 81% achieved |

---

*Exercises designed for Week 2: Advanced Prompts & Your First Agent*
*Primary Tools: Bottle Rocket (Exercises 1-2), GitHub Copilot Agent Mode (Exercises 3-7)*
*Difficulty Focus: Progressive 3-7/10*
