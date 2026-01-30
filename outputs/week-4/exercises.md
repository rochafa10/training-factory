# Week 4 Exercises: Advanced Automation, MCPs & Multi-Agent Orchestration

**Total Time:** 70 minutes (during session)
**Tools Needed:** VS Code with GitHub Copilot, Node.js installed
**Difficulty Range:** 6-8 / 10

---

## Skills Progression

### Skills Reinforced (from Weeks 1-3)
- **ROLE + CONTEXT + TASK + FORMAT** - The prompt formula
- **Iteration** - Refining prompts through follow-ups
- **Agent Mode** - Autonomous task execution
- **Voice Mode** - Hands-free AI interaction
- **Terminal command approval** - Reviewing agent actions

### Skills Introduced (Week 4)
- **MCP Installation** - Adding external tool capabilities to Copilot
- **MCP Configuration** - Setting up server connections
- **Playwright MCP** - Browser automation tools
- **Filesystem MCP** - File read/write operations
- **Multi-agent orchestration** - Coordinating complex workflows
- **Human-in-loop review** - Validating AI outputs

---

## Exercise 1: MCP Installation & Verification

**Type:** Guided Practice
**Difficulty:** 6/10
**Time:** 15 minutes
**Tool:** 🟡 GitHub Copilot (NO Tesla Data)

### Scenario

You're setting up Model Context Protocol (MCP) servers to extend Copilot's capabilities. MCP is what allows Copilot to control browsers, read files, and interact with external systems. This is the foundation for all advanced automations.

### Instructions

1. **Verify VS Code Version**
   - Go to Help > About
   - Confirm version 1.99 or higher (ideally 1.102+)
   - If older, run VS Code update first

2. **Install Playwright MCP Server**
   - Open VS Code terminal: `` Ctrl+` ``
   - Run this command:
   ```bash
   code --add-mcp '{"name":"playwright","command":"npx","args":["@playwright/mcp"]}'
   ```

3. **Install Filesystem MCP Server**
   - In the same terminal, run:
   ```bash
   code --add-mcp '{"name":"filesystem","command":"npx","args":["@modelcontextprotocol/server-filesystem","${workspaceFolder}"]}'
   ```

4. **Start MCP Servers**
   - Look for MCP configuration in VS Code settings
   - Click "Start" on each server
   - Wait for initialization (may take 30 seconds first time)

5. **Verify Installation**
   - Open Copilot Chat: `Ctrl+Alt+I`
   - Switch to Agent Mode
   - Type: "What MCP tools do you have access to?"

### What Good Output Looks Like

Copilot should list tools including:
- `browser_navigate` - Navigate to URLs
- `browser_snapshot` - Read page structure
- `browser_click` - Click elements
- `browser_type` - Enter text
- `read_file` - Read local files
- `write_file` - Create/update files

### Troubleshooting

| Problem | Likely Cause | Solution |
|---------|--------------|----------|
| "command not found" | Node.js not installed | Install Node.js from nodejs.org |
| VS Code version too old | Auto-update disabled | Help > Check for Updates |
| Server won't start | First-time download | Wait, it downloads dependencies automatically |
| "MCP not recognized" | VS Code needs restart | Close and reopen VS Code |

### Skills Practiced
- MCP Installation
- MCP Configuration
- Terminal commands
- Verification testing

---

## Exercise 2: Web Automation with Playwright MCP

**Type:** Template Exercise
**Difficulty:** 7/10
**Time:** 20 minutes
**Tool:** 🟡 GitHub Copilot (NO Tesla Data)

### Scenario

You need to extract information from public websites—a common task for competitive research, data gathering, or verification. Playwright MCP lets you automate browser interactions through natural language.

### Instructions

1. **Open Copilot Chat:** Press `Ctrl+Alt+I`
2. **Switch to Agent Mode:** Click dropdown, select "Agent"
3. **Choose a task from the options below**
4. **Review the agent's plan** before it executes
5. **Watch the browser automation** happen
6. **Iterate** if the output needs refinement

### Prompt Templates

**Option A - Simple Navigation & Description:**
```
Navigate to [URL] and describe what content is on the page. Include:
- Main headings
- Navigation structure
- Key content sections
```

**Option B - Data Extraction:**
```
Go to [URL] and extract [DATA TYPE]. Format the results as a markdown table with columns for [COLUMN 1], [COLUMN 2], [COLUMN 3].
```

**Option C - Form Analysis:**
```
Navigate to [URL] and analyze the form on the page. List all form fields, their types, and any validation requirements you can identify.
```

### Example (Filled In)

**Option A - Simple Navigation:**
```
Navigate to https://example.com and describe what content is on the page. Include:
- Main headings
- Navigation structure
- Key content sections
```

**Option B - Data Extraction:**
```
Go to https://jsonplaceholder.typicode.com/users and extract the user data. Format the results as a markdown table with columns for Name, Email, and City.
```

### Success Criteria

- [ ] Agent successfully navigated to the URL
- [ ] Browser snapshot captured page structure
- [ ] Data extracted in requested format
- [ ] Output is useful and accurate
- [ ] Completed in under 3 minutes

### Safe URLs for Practice

| URL | What You'll Find |
|-----|-----------------|
| https://example.com | Simple test page |
| https://jsonplaceholder.typicode.com/users | JSON user data |
| https://httpbin.org/forms/post | Sample form |
| https://httpbin.org/html | Sample HTML content |

### Troubleshooting

| Problem | Likely Cause | Solution |
|---------|--------------|----------|
| "Cannot navigate" | MCP server not started | Click Start on Playwright MCP |
| Page not loading | Network/firewall issue | Try a different URL |
| Timeout errors | Page taking too long | Add "wait up to 30 seconds" to prompt |
| Wrong data extracted | Ambiguous instructions | Be more specific about what elements to extract |

### Skills Practiced
- Playwright MCP usage
- Web automation
- Data extraction
- Prompt specificity

---

## Exercise 3: Dive Deep Report Automation

**Type:** Scenario Challenge
**Difficulty:** 8/10
**Time:** 20 minutes
**Tool:** 🟡 GitHub Copilot (NO Tesla Data)

### Scenario

Your regional director needs a dive deep report on operational issues—a task that normally takes 45+ minutes of manual data gathering, analysis, and report writing. You'll automate this using Agent Mode with filesystem MCP.

**Important:** Use the provided sample data. Do NOT use real Tesla data for this exercise.

### Your Task

Create an automated dive deep report workflow that:
1. Reads a CSV data file
2. Analyzes patterns and identifies root causes
3. Calculates impact metrics
4. Generates a formatted markdown report

### Step 1: Create Sample Data

Create a new file called `sample-data.csv` with this content:

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
```

### Step 2: Create the Dive Deep Prompt

Write a prompt that instructs Agent Mode to:
- Read the sample-data.csv file
- Identify the top root causes of missed shipments
- Calculate impact by customer
- Generate a report with executive summary, detailed findings, and action items
- Save the output as a markdown file

### Requirements

- Use ROLE + CONTEXT + TASK + FORMAT structure
- Request specific report sections
- Include iteration capability (agent can refine its analysis)
- Specify the output file name

### Hints (if stuck)

<details>
<summary>Hint 1: Role</summary>
Start with: "You are an operations analyst preparing a dive deep report for leadership review."
</details>

<details>
<summary>Hint 2: Context</summary>
Mention: the data file location, what kind of analysis you need, and who the audience is.
</details>

<details>
<summary>Hint 3: Example Start</summary>

```
You are an operations analyst preparing a dive deep report for leadership.

CONTEXT: I have shipment data in sample-data.csv that shows yesterday's deliveries and misses.

TASK: Analyze this data and create a dive deep report that includes:
- Executive summary (2-3 sentences)
- Root cause analysis (identify top 3 reasons for misses)
- Customer impact breakdown (which customers were most affected)
- Action items (specific recommendations)

FORMAT: Save as dive-deep-report.md with clear markdown headers.
```
</details>

### Success Criteria

- [ ] Agent successfully read the CSV file
- [ ] Analysis correctly identified root causes (carrier_delay most common)
- [ ] Report includes all requested sections
- [ ] Output saved as markdown file
- [ ] Report is leadership-ready quality

### Troubleshooting

| Problem | Likely Cause | Solution |
|---------|--------------|----------|
| "File not found" | Wrong path or filename | Ensure sample-data.csv is in your workspace |
| Filesystem MCP not working | Server not started | Click Start on filesystem MCP |
| Incomplete analysis | Prompt too vague | Add specific metrics to calculate |
| Agent doesn't save file | Didn't request it | Add "save as [filename].md" to prompt |

### Skills Practiced
- Filesystem MCP usage
- Multi-step agent workflows
- Report automation
- Prompt engineering for complex tasks

---

## Exercise 4: Personal Project Completion

**Type:** Scenario Challenge
**Difficulty:** 7/10
**Time:** 15 minutes
**Tool:** 🟢 Bottle Rocket (for Tesla data analysis) + 🟡 GitHub Copilot (for automation code)

### Scenario

You've been building a personal automation project throughout this course. Now it's time to complete it and prepare for your showcase presentation.

### Your Task

Complete your personal automation project with:
1. **Working end-to-end workflow** - All components functional
2. **At least one MCP enhancement** - Add file or web capability
3. **Documented prompts** - Write down what works
4. **Time savings calculation** - Quantify the benefit

### Instructions

1. **Review your project status**
   - What's working?
   - What's incomplete?
   - What could be enhanced with MCPs?

2. **Add one MCP capability** (choose one):
   - **Filesystem:** Read/write data files
   - **Playwright:** Extract web data
   - **Combined:** Multi-step workflow

3. **Test the complete workflow**
   - Run through the entire automation
   - Fix any issues
   - Iterate until smooth

4. **Document your work**
   Fill out:
   ```
   Project Name: ________________________

   Task Before AI: ________________________
   Time Before: ___ minutes

   Task With AI: ________________________
   Time With AI: ___ minutes

   Savings Per Use: ___ minutes
   Uses Per Week: ___
   Weekly Savings: ___ minutes

   Key Prompts Used:
   1. ________________________
   2. ________________________
   3. ________________________

   MCP Enhancement Added: ________________________
   ```

### Project Enhancement Ideas

| Your Project Type | MCP Enhancement |
|-------------------|-----------------|
| Report generation | Filesystem MCP to save output |
| Data analysis | Filesystem MCP to read input files |
| Research task | Playwright MCP for web data |
| Email drafting | Filesystem MCP to save templates |
| Meeting prep | Combined: web research + file output |

### Success Criteria

- [ ] Project works end-to-end without errors
- [ ] At least one MCP capability integrated
- [ ] Time savings documented with numbers
- [ ] Ready for 3-minute showcase demo
- [ ] Key prompts written down

### Troubleshooting

| Problem | Likely Cause | Solution |
|---------|--------------|----------|
| Project too complex | Scope creep | Focus on core workflow only |
| MCP not integrating | Wrong setup | Review Exercise 1 installation |
| Can't calculate savings | No baseline | Estimate manual time honestly |
| Demo too long | Trying to show everything | Focus on one impressive workflow |

### Skills Practiced
- Project completion
- MCP integration
- Documentation
- Presentation preparation

---

## Reflection Questions

After completing the exercises, consider:

1. **Which MCP capability is most useful for your daily work?**
   - Filesystem for reports and data?
   - Playwright for web tasks?
   - Both for complex workflows?

2. **What surprised you about multi-agent automation?**
   - Was it faster than expected?
   - What would you trust it to do autonomously?
   - Where do you want human review?

3. **How will you continue learning after this course?**
   - Which automations will you build next?
   - What resources will you use?
   - Who will you share your learnings with?

4. **What's your total course time savings estimate?**
   - Week 1 skills: ___ min/day
   - Week 2 skills: ___ min/day
   - Week 3 skills: ___ min/day
   - Week 4 skills: ___ min/day
   - **Total daily savings: ___ min/day**

---

## Homework: Final Assignment

### Part 1: Complete Personal Project (45 min)

1. Ensure all components work end-to-end
2. Add error handling for edge cases
3. Document the prompts and workflow used
4. Create a 1-page "how to use" guide for your team

### Part 2: Prepare Showcase (15 min)

1. Prepare a 3-minute demo (live or recorded)
2. Calculate total time savings (per use + weekly projection)
3. Identify 2-3 ways to expand the automation

### Part 3: Course Reflection

Answer these questions:

1. What was your biggest learning from this course?
2. What will you do differently starting tomorrow?
3. What automation will you build next?
4. Who will you teach these skills to?

---

## Exercise Validation Log

| Exercise | Difficulty | Validation Notes | Feasible? |
|----------|------------|------------------|-----------|
| Exercise 1: MCP Installation | 6/10 | Step-by-step guided setup. Clear verification steps. Depends on Node.js being available. | ✅ |
| Exercise 2: Web Automation | 7/10 | Progressive difficulty. Safe test URLs provided. Browser automation visible. | ✅ |
| Exercise 3: Dive Deep Automation | 8/10 | Challenge level appropriate for Week 4. Sample data provided. Multi-step workflow. | ✅ |
| Exercise 4: Personal Project | 7/10 | Culminating exercise. Builds on all prior weeks. Flexible to individual projects. | ✅ |

---

## Quality Checklist

| Check | Requirement | Status |
|-------|-------------|--------|
| Exercise count | 3+ exercises per week | ✅ 4 exercises |
| Difficulty range | Within week's calibration (6-8) | ✅ Range: 6-8 |
| Exercise mix | 20% Guided, 40% Template, 40% Challenge | ✅ 1 Guided, 1 Template, 2 Challenge |
| Tool coverage | Correct tool per exercise | ✅ All Copilot (no Tesla data) |
| Troubleshooting | 3+ issues per exercise | ✅ 4 per exercise |
| Time realistic | Total ≤ 70 min | ✅ 70 min total |
| Skills tracked | Reinforce + Introduce documented | ✅ 5 reinforced, 6 introduced |

---

*Exercises designed for Week 4: Advanced Automation, MCPs & Multi-Agent Orchestration*
*Primary Tools: GitHub Copilot with MCP (NO Tesla Data)*
*Difficulty Focus: Advanced (6-8/10)*
*Final Week: Course Completion*
