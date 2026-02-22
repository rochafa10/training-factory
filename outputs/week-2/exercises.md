# Week 2 Exercises: Advanced Prompts & Your First Agent

**Total In-Session Time:** 165 minutes of hands-on exercises (out of 240-minute session)
**Tools Needed:** Bottle Rocket (go.tesla.com/chat), VS Code with GitHub Copilot, Node.js
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
- **Structured output** -- Getting AI to produce tables, JSON, and formatted data
- **VS Code setup** -- IDE installation and configuration
- **Agent Mode** -- Autonomous multi-step task completion
- **MCP tools** -- Giving agents new capabilities (Playwright)
- **Plan-Execute-Iterate** -- Agent workflow pattern
- **Agent debugging** -- Redirecting and fixing agent mistakes
- **Diff reading** -- Understanding what agents changed (green = added, red = removed)

---

## Exercise 1: CoT + Data Analysis Sprint

**Type:** Guided Practice
**Difficulty:** 4/10
**Time:** 30 minutes (Part A = 15 min, Part B = 15 min)
**Tool:** Bottle Rocket (Tesla Data OK)

### Objective

Use Chain-of-Thought prompting to transform raw operations data into executive-ready analysis, and see the dramatic quality difference between a basic prompt and a structured CoT prompt.

### Prerequisites

- Laptop with browser access to go.tesla.com/chat (Bottle Rocket)
- Completed Week 1 (familiar with ROLE + CONTEXT + TASK + FORMAT formula)

### Part A: See the Difference (15 min)

You receive a week of DC performance data. First, try a basic prompt. Then, try a structured CoT prompt. Compare the quality.

**Step 1: Type the basic prompt first (3 min)**

> **TYPE THIS** (in Bottle Rocket at go.tesla.com/chat):
> ```
> What do you see in this data?
>
> Monday: 2,400 orders, 45 associates, 2 safety incidents
> Tuesday: 2,100 orders, 42 associates, 0 safety incidents
> Wednesday: 2,800 orders, 48 associates, 1 safety incident
> Thursday: 2,600 orders, 44 associates, 0 safety incidents
> Friday: 3,100 orders, 50 associates, 3 safety incidents
> ```

**Expected Output:** A vague summary -- "orders varied throughout the week" with generic observations. No calculations, no root cause analysis, no actionable recommendations.

Read the response. Note how shallow it is. Now try the upgrade.

**Step 2: Type the CoT version (7 min)**

> **TYPE THIS** (in Bottle Rocket):
> ```
> You are a distribution center operations analyst with 10 years of experience.
>
> Analyze this week's DC performance step by step:
> 1. First, calculate the daily orders-per-associate ratio
> 2. Then, identify which day had the best and worst efficiency
> 3. Next, look for a pattern between headcount and safety incidents
> 4. Finally, recommend two specific actions for next week
>
> Data:
> Monday: 2,400 orders, 45 associates, 2 safety incidents
> Tuesday: 2,100 orders, 42 associates, 0 safety incidents
> Wednesday: 2,800 orders, 48 associates, 1 safety incident
> Thursday: 2,600 orders, 44 associates, 0 safety incidents
> Friday: 3,100 orders, 50 associates, 3 safety incidents
>
> Format: Use a table for the daily breakdown, then bullet points for findings.
> ```

**Expected Output:** A structured table showing orders/associate for each day (~53.3 for Monday through ~62.0 for Friday), a clear finding that Friday had the highest volume AND highest incidents (possible fatigue pattern), and specific recommendations with numbers and timelines.

**Step 3: Compare (5 min)**

Side by side, look for these differences:
- The CoT prompt produces numbered reasoning steps, not just conclusions
- The analysis is deeper -- it finds correlations the basic prompt missed (e.g., highest headcount days correlate with more incidents)
- The output format matches what you asked for (table + bullet points)
- Recommendations include specific numbers, not just "hire more people"

### Part B: Your Own Data Analysis (15 min)

> **TYPE THIS** (in Bottle Rocket):
> ```
> You are a senior operations analyst specializing in distribution center performance trends.
>
> Analyze this 6-week performance data step by step:
> 1. First, identify the overall trend for each metric (improving, declining, flat)
> 2. Then, find correlations between metrics (e.g., does overtime rise when fill rate drops?)
> 3. Next, flag any weeks that are outliers and explain why
> 4. Finally, provide 3 specific action items ranked by impact
>
> Week 1: 14,200 orders | 97.2% fill rate | 180 overtime hrs | 48 headcount | 1 safety incident
> Week 2: 14,800 orders | 96.8% fill rate | 210 overtime hrs | 47 headcount | 2 safety incidents
> Week 3: 15,100 orders | 95.9% fill rate | 245 overtime hrs | 46 headcount | 0 safety incidents
> Week 4: 14,500 orders | 97.1% fill rate | 190 overtime hrs | 48 headcount | 1 safety incident
> Week 5: 15,600 orders | 95.2% fill rate | 280 overtime hrs | 45 headcount | 3 safety incidents
> Week 6: 16,000 orders | 94.8% fill rate | 310 overtime hrs | 44 headcount | 4 safety incidents
>
> Format: Trend summary table, then detailed analysis, then ranked action items.
> ```

**Expected Output:** A trend table showing orders rising while fill rate drops and overtime spikes. A finding that headcount is declining as volume grows, causing the quality and safety issues. Specific actions: hire 4 associates, cap overtime at 200 hours, investigate the fill rate drop.

### Success Criteria

- [ ] You can see a clear quality difference between the basic and CoT prompts
- [ ] Your Part B analysis identifies at least 2 correlations in the data (e.g., volume up + fill rate down, headcount down + overtime up)
- [ ] Your action items include specific numbers, not vague suggestions
- [ ] The AI showed its reasoning steps, not just conclusions

### Common Pitfalls

| # | Pitfall | Fix |
|---|---------|-----|
| 1 | Skipping Part A and going straight to Part B | Do Part A first -- seeing the quality difference IS the learning moment |
| 2 | Copying the prompt but not reading the AI's reasoning steps | Read the numbered analysis -- that is where the learning happens |
| 3 | AI gives generic recommendations like "hire more people" | Add "Include specific numbers and timelines" to your prompt |
| 4 | Output is one big paragraph instead of structured | Make sure you included the FORMAT section with the table instruction |

### For Fast Finishers

Try adding your own real DC data to the Part B prompt. Replace the sample numbers with your site's actual weekly metrics. Does the AI catch the same issues you already know about? Does it find anything new?

### Facilitator Notes

- Walk the room during this exercise. The most common issue: AGMs skip Part A and go straight to Part B. Redirect them -- seeing the quality difference is the core learning.
- If anyone finishes early, challenge them to use their own DC data.
- If the AI produces shallow analysis, check that the AGM included the numbered step-by-step instructions. The CoT steps are what force the deeper analysis.
- Watch for AGMs who get a great Part B result -- ask them to share with the group during the debrief.

---

## Exercise 2: Template Speed Build

**Type:** Independent Practice
**Difficulty:** 4/10
**Time:** 10 minutes (5 min build, 3 min test, 2 min save)
**Tool:** Bottle Rocket (Tesla Data OK)

### Objective

Upgrade one of your most-used weekly tasks into a reusable prompt template that incorporates Week 2 techniques (CoT, Few-Shot, or Enhanced Persona).

### Prerequisites

- Completed Exercise 1 (familiar with CoT prompting)
- Completed Week 1 (have at least one template from the prompt library)

### Step-by-Step Instructions

**Step 1: Pick your task (1 min)**

Choose your most frequent weekly task:
- Weekly KPI report for leadership
- Shift handoff summary
- Vendor performance email
- Labor planning analysis
- Safety incident summary

Pick the first one that comes to mind -- this is a speed exercise, not a deliberation.

**Step 2: Build the template (4 min)**

> **TYPE THIS** (in Bottle Rocket -- adapt to your own task):
> ```
> You are a [your role, e.g., distribution center AGM] with [X] years of experience managing [your specialty].
>
> I need a reusable template for [your weekly task]. Build it with these requirements:
> 1. Use [PLACEHOLDERS] for any data that changes each week
> 2. Include step-by-step analysis instructions (Chain-of-Thought)
> 3. Include one example of the expected output format
>
> The template should produce output that is ready to send to [your audience] without editing.
> ```

**Step 3: Test with realistic data (3 min)**

Take the template the AI generated and fill in the [PLACEHOLDERS] with real or realistic data from your DC. Run it. Does the output look like something you would actually send?

**Step 4: Save it (2 min)**

Copy the working template into a document or note you can access later. You will use this template throughout the rest of the course and at your DC.

### Expected Output

A prompt template with:
- A specific persona (not just "expert" but "distribution center AGM with 8 years managing high-volume fulfillment")
- Clear [PLACEHOLDERS] for variable data (dates, numbers, site names)
- Numbered CoT steps that guide the AI through the analysis
- An example of the expected output format (few-shot)

### Success Criteria

- [ ] Template uses at least one Week 2 technique (CoT, Few-Shot, or Enhanced Persona)
- [ ] Template has [PLACEHOLDERS] for variable data
- [ ] Tested with realistic data and produces work-ready output
- [ ] Output is something you would actually send to your audience without editing

### Common Pitfalls

| # | Pitfall | Fix |
|---|---------|-----|
| 1 | Spending too long choosing which task | Pick the first one that comes to mind -- this is a 10-minute speed exercise |
| 2 | Template is too generic (no DC context) | Add your specific DC context: site name, team size, typical metrics |
| 3 | Template produces output that is too long or too short | Add a length constraint: "Keep under 200 words" or "Fit on one page" |

### For Fast Finishers

Build a second template for a different task. Or take a peer's template and test it with your own data -- does it work for a different DC?

### Facilitator Notes

- This is intentionally short. One template, done well. They already built templates in Week 1 -- this is an upgrade pass.
- If someone is stuck choosing a task, point them to the KPI narrative or labor planning template from the Week 1 prompt library.
- Watch for templates that are missing the CoT step-by-step instructions -- remind them that is the Week 2 upgrade.
- Transition to break: "Take 10 minutes. When we come back, everything changes -- we are going from chatting with AI to commanding AI agents."

---

> **POLICY REMINDER:** From this point forward, we are using GitHub Copilot. **DO NOT** enter any Tesla-specific data, customer information, or internal processes. All exercises from here use generic or fictional data only. Tesla data stays in Bottle Rocket (go.tesla.com/chat). Reference: go.tesla.com/aitools

---

## Exercise 3: VS Code + Copilot Setup

**Type:** Guided Setup
**Difficulty:** 3/10
**Time:** 20 minutes (Steps 1-5 = 12 min, troubleshoot buffer = 8 min)
**Tool:** VS Code + GitHub Copilot

### Objective

Install VS Code, add the GitHub Copilot extension, sign in, select the Claude Opus 4.5 model, and verify everything works by sending a test message.

### Prerequisites

- Laptop with admin/install permissions
- A GitHub account (create one at github.com if you do not have one -- use personal email, not Tesla email)
- Internet access
- GitHub Copilot subscription (check with facilitator for access)

### Step-by-Step Instructions

**Step 1: Download and Install VS Code (3 min)**

> **DO THIS:**
> 1. Open your browser
> 2. Go to **code.visualstudio.com**
> 3. Click the big blue **"Download"** button (it auto-detects your operating system)
> 4. Run the installer -- accept all defaults, click "Next" through each screen
> 5. When it finishes, open VS Code

**What You Should See:** A dark-themed editor with a "Welcome" tab.

**Step 2: Install the GitHub Copilot Extension (2 min)**

> **DO THIS:**
> 1. Look at the left sidebar in VS Code. Find the icon that looks like four small squares (Extensions). Click it.
>    - Or press **Ctrl+Shift+X** on your keyboard
> 2. In the search box at the top, type: **GitHub Copilot**
> 3. Click the first result: "GitHub Copilot" by GitHub
> 4. Click the blue **"Install"** button
> 5. Wait for it to finish (10-15 seconds)

**What You Should See:** The Install button changes to a gear icon. A new Copilot icon (a small robot) appears in the left sidebar.

**Step 3: Sign In with Your GitHub Account (3 min)**

> **DO THIS:**
> 1. Click the Copilot icon in the left sidebar (or the chat icon at the top)
> 2. VS Code will prompt you to sign in to GitHub
> 3. Click **"Sign in to GitHub"**
> 4. Your browser opens to GitHub. Enter your GitHub username and password
> 5. Click **"Authorize"** when asked to give VS Code permission
> 6. Switch back to VS Code

**What You Should See:** Your GitHub username appears in the bottom-left corner of VS Code.

**Troubleshooting: No GitHub Account?**
- Go to **github.com** and click "Sign up"
- Use your personal email (not Tesla email)
- GitHub Copilot requires a paid subscription or a free trial -- check with your facilitator for access

**Step 4: Select the Claude Opus 4.5 Model (2 min)**

> **DO THIS:**
> 1. Click the Copilot chat icon in the left sidebar (speech bubble icon)
> 2. At the top of the chat panel, find the **model dropdown** (it may say "GPT-4.1" or similar)
> 3. Click it and select **"Claude Opus 4.5"**
>    - If you do not see Claude Opus 4.5, select **Claude Sonnet 4** (it works well and uses fewer premium requests)

**Why Claude Opus 4.5?** It is one of the best models for planning and executing multi-step tasks -- exactly what Agent Mode needs. It uses 3 premium requests per message (you get 300/month).

**Step 5: Verify -- Send Your First Message (2 min)**

> **TYPE THIS** (in the Copilot Chat panel):
> ```
> Hello! I'm an operations manager at a distribution center. Can you tell me three ways AI can help with daily shift planning?
> ```

**Expected Output:** A friendly response listing three practical suggestions for shift planning -- things like forecasting demand, optimizing headcount allocation, and identifying patterns in historical data.

**What to Look For:**
- You got a response (not an error message)
- The response is relevant to operations
- The chat panel shows the conversation

**Step 6: Troubleshoot (8 min buffer)**

Use this time to help anyone who got stuck. Raise your hand if you need help.

### Common Pitfalls

| # | Pitfall | Fix |
|---|---------|-----|
| 1 | "Sign in" keeps looping between browser and VS Code | Clear browser cookies, try again. Or use a private/incognito browser window. |
| 2 | Extension not showing after install | Close and reopen VS Code completely. Check that the extension says "Installed" in the Extensions panel. |
| 3 | "You don't have access to Copilot" error | Verify your GitHub account has a Copilot subscription. Check with your facilitator. |
| 4 | Chat not responding or model dropdown empty | Check your internet connection. Update VS Code to the latest version (Help > Check for Updates). VS Code 1.99+ is required. |

### Success Criteria

- [ ] VS Code is installed and open
- [ ] GitHub Copilot extension is installed (you can see the Copilot icon in the sidebar)
- [ ] You are signed in to GitHub (username visible in bottom-left corner)
- [ ] You sent a test message and received a response in the Copilot Chat panel

### For Fast Finishers

Try asking Copilot Chat a few more questions to get comfortable with the interface:
- "What is the difference between Chat mode and Agent mode in Copilot?"
- "How do I create a new file in VS Code?"
- Help a neighbor who is still setting up.

### Facilitator Notes

- This is a setup exercise, not a lecture. Walk the room constantly.
- Have IT support on standby for login issues. The biggest blocker will be GitHub account creation and sign-in.
- Have backup GitHub accounts ready if possible for AGMs who cannot create their own.
- **Do NOT move on until everyone has Copilot Chat working.** The 8-minute buffer is specifically for stragglers.
- If someone finishes early, ask them to help their neighbor.

---

## Exercise 4: Your First Agent Mode Task

**Type:** Guided Practice
**Difficulty:** 5/10
**Time:** 25 minutes (Setup = 2 min, run agent = 10 min, review = 5 min, iterate = 5 min, discussion = 3 min)
**Tool:** GitHub Copilot (Agent Mode) -- NO Tesla Data

### Objective

Experience the Agent Mode workflow for the first time: describe a goal in plain English, watch the agent plan and build a working HTML file, review the output, and iterate with feedback.

### Prerequisites

- Completed Exercise 3 (VS Code + Copilot installed and working)
- Copilot Chat panel open
- Model set to Claude Opus 4.5 (or Claude Sonnet 4)

### Step-by-Step Instructions

**Step 1: Switch to Agent Mode (2 min)**

> **DO THIS:**
> 1. In VS Code, open the Copilot Chat panel (Ctrl+Shift+I)
> 2. At the top of the chat panel, click the **mode dropdown**
> 3. Change it from "Chat" to **"Agent"**
> 4. Make sure your model is set to **Claude Opus 4.5** (or Claude Sonnet 4)

**Step 2: Give the agent its task (10 min)**

> **TYPE THIS** (in Copilot Agent Mode):
> ```
> Create a shift summary template for a distribution center that tracks headcount, safety incidents, and throughput for morning, afternoon, and night shifts. Make it an HTML file with a clean, professional design. Include input fields so a manager can fill it in each day.
> ```

**What Will Happen -- Watch For These Steps:**

1. **The agent writes a plan.** You will see it say something like: "I'll create an HTML file with a form for three shifts..." Read the plan. Does it make sense?
2. **The agent asks to create a file.** It will propose creating a file (like `shift-summary.html`). Click **"Accept"** to let it proceed.
3. **The agent writes the code.** You will see HTML and CSS appearing in the file. You do not need to understand the code -- just let it finish.
4. **The agent may ask to run a command.** If it wants to open the file in a browser or run a preview, you can approve that too.

**Step 3: Review the output (5 min)**

> **DO THIS:**
> 1. Find the file the agent created (it will appear in your VS Code file explorer on the left)
> 2. Right-click the HTML file and select **"Open in Default Browser"** (or copy the file path and open it in your browser)
> 3. Check the result:
>    - Does it have fields for all three shifts (morning, afternoon, night)?
>    - Does it track headcount, safety incidents, and throughput for each shift?
>    - Does it have a clean, professional look?

**Step 4: Iterate -- Ask for changes (5 min)**

Now ask the agent to improve it. Pick one of these, or write your own:

> **TYPE THIS** (in Copilot Agent Mode -- pick one):
> ```
> Add a section at the bottom that automatically calculates the total headcount and total throughput across all three shifts.
> ```
> OR:
> ```
> Add a notes field for each shift where the supervisor can add comments about issues or wins.
> ```
> OR:
> ```
> Change the color scheme to use a dark background with red accents.
> ```

**Expected Output:** The agent modifies the existing file. You see the changes appear. The file now has the improvement you asked for.

**Step 5: Discussion (3 min)**

Think about what just happened:
- You described what you wanted in plain English
- The agent planned, built, and delivered a working file
- You reviewed it and asked for changes -- just like working with a team member
- The whole process took minutes, not hours

### Expected Output

A working HTML file with:
- A form layout for three shifts (morning, afternoon, night)
- Input fields for headcount, safety incidents, and throughput per shift
- A clean, professional design
- After iteration: whatever improvement you requested

### Success Criteria

- [ ] The agent created a working HTML file on your computer
- [ ] The file has input fields for all three shifts with headcount, safety, and throughput
- [ ] You opened the file in a browser and it looks correct
- [ ] You successfully asked for one improvement and the agent delivered it

### Common Pitfalls

| # | Pitfall | Fix |
|---|---------|-----|
| 1 | The agent asks to run a terminal command and you are unsure | Read the command. If it says something like "create file" or "open," it is safe. If unsure, click "Reject" and ask the agent to explain. |
| 2 | The agent creates code you do not understand | You do not need to read the code. Focus on the final output in the browser. Does it look right? Does it work? |
| 3 | The agent gets stuck or produces an error | Type "Start over with a simpler approach" or "Try a different approach." |
| 4 | The HTML file looks broken in the browser | Tell the agent: "The page doesn't look right. Fix the layout so the three shifts are side by side." |

### For Fast Finishers

Ask the agent for a second improvement. Try: "Add conditional formatting so the safety incidents field turns red if the number is greater than zero." See how the agent handles a more complex request.

### Facilitator Notes

- This is the most important exercise of the day. Walk the room constantly.
- The biggest "aha" moment is when they see a real file appear on their screen that the agent created from a plain-English description.
- If someone's agent gets stuck, show them how to type "start over" or "try a different approach."
- Reassure them repeatedly: they do NOT need to understand the code. The output in the browser is what matters.
- If anyone finishes early, ask them to help a neighbor or try multiple iterations.

---

## Exercise 5: Install & Use First MCP Skill

**Type:** Guided Practice
**Difficulty:** 6/10
**Time:** 25 minutes (Install = 5 min, first task = 10 min, compare before/after = 5 min, discuss = 5 min)
**Tool:** GitHub Copilot (Agent Mode) + Playwright MCP -- NO Tesla Data

### Objective

Install the Playwright MCP tool to give your Copilot agent the ability to browse websites, then watch the agent use this new skill to pull live data from the internet.

### Prerequisites

- Completed Exercise 4 (comfortable with Agent Mode)
- VS Code open with Copilot working
- Node.js installed (download from nodejs.org if needed -- ask facilitator for help)

### Step-by-Step Instructions

**Step 1: Install Playwright MCP (5 min)**

> **DO THIS:**
> 1. In VS Code, press **Ctrl+Shift+P** to open the Command Palette (a search bar at the top)
> 2. Type: **MCP: Add Server**
> 3. Select **"MCP: Add Server"** from the dropdown
> 4. When asked for the server type, choose **"Command (stdio)"**
> 5. When asked for the command, type: `npx -y @anthropic-ai/mcp-playwright`
> 6. When asked for a name, type: `playwright`
> 7. When asked where to save, choose **"User Settings"**
> 8. VS Code may ask you to trust this MCP server. Click **"Allow"**

**What You Should See:** A notification that the MCP server was added. In the Chat panel, you may see Playwright listed as an available tool.

**Troubleshooting Install Issues:**

| Problem | Fix |
|---------|-----|
| "npx is not recognized" | You need Node.js installed. Download from **nodejs.org** (LTS version), install it, restart VS Code, try again. |
| Server fails to start | Check your internet connection. Try the command again. |
| No "MCP: Add Server" option in Command Palette | Update VS Code to the latest version (Help > Check for Updates). VS Code 1.99+ is required for MCP support. |

**Step 2: Use the new skill (10 min)**

Make sure you are in **Agent Mode** (not Chat mode). Now give your agent a task it could not do before:

> **TYPE THIS** (in Copilot Agent Mode):
> ```
> Go to weather.com and tell me the current weather forecast for Tampa, Florida. Include the temperature, conditions, and the 5-day outlook.
> ```

**What Will Happen:**
1. The agent will recognize it has Playwright available
2. It will ask permission to open a browser. Click **"Allow"** or **"Accept"**
3. You will see the agent navigate to weather.com (it may take a few seconds)
4. The agent reads the page content and reports back with the weather data

**Expected Output:** A summary of Tampa's current weather and 5-day forecast, pulled directly from the live website.

**What to Look For:**
- The agent actually browsed a website -- it did not just guess
- The data is current (today's date, not cached or old data)
- The agent asked for your permission before opening the browser

**If weather.com does not work,** try one of these alternatives:

> **TYPE THIS** (alternative -- pick one):
> ```
> Go to time.is and tell me what time it is right now in each US time zone.
> ```
> OR:
> ```
> Go to news.ycombinator.com and summarize the top 5 headlines.
> ```

**Step 3: Compare before vs after (5 min)**

Try the same task WITHOUT the MCP tool to see the difference:

> **DO THIS:**
> 1. Switch from Agent Mode back to **Chat** mode (use the mode dropdown at the top of the chat panel)
> 2. Type the same weather question in Chat mode

**Expected Result:** The chat mode either refuses ("I can't access the internet") or gives outdated/general information. It cannot pull live data.

**The Point:** MCP is what gives the agent real capabilities. Without it, the agent is limited to files on your computer. With it, the agent can interact with the outside world.

**Step 4: Discussion (5 min)**

Think about what other MCP skills would help with your work:
- A tool that reads spreadsheets and CSVs?
- A tool that connects to a database?
- A tool that sends formatted emails?
- A tool that monitors a website for changes?

### Expected Output

- Playwright MCP successfully installed
- The agent navigated to a public website, read the content, and reported back
- You saw the clear difference between what the agent can do with and without MCP

### Success Criteria

- [ ] Playwright MCP is installed and running in VS Code
- [ ] The agent successfully browsed a public website and reported back with real, current data
- [ ] You completed the before/after comparison and can explain the difference
- [ ] You can describe what MCP does in your own words (gives agents new abilities, like installing apps on a phone)

### Common Pitfalls

| # | Pitfall | Fix |
|---|---------|-----|
| 1 | The agent says it does not have browser access | Make sure you are in **Agent** mode (not Chat mode). Check that the Playwright MCP server is running (Command Palette > "MCP: List Servers"). |
| 2 | The browser opens but the page does not load | Check your internet connection. Some corporate firewalls may block automated browsing -- try a different website. |
| 3 | The agent navigates to the wrong page | Be more specific: "Go to weather.com/weather/today/l/Tampa+FL" instead of just "check the weather." |
| 4 | Node.js installation fails | Ask facilitator for help. If Node.js cannot be installed, pair with a neighbor and observe their screen. |

### For Fast Finishers

Try combining MCP with file creation. Ask the agent: "Go to news.ycombinator.com, get the top 10 headlines, and save them as a nicely formatted HTML page in my project folder." This combines Playwright (browsing) with the built-in file creation skill.

### Facilitator Notes

- Pre-test the weather.com URL before the session to make sure it works from the training room's network.
- The "aha" moment is when the agent opens a browser and navigates on its own. Give them a moment to react.
- If someone cannot install Playwright (Node.js issues), pair them with a neighbor to watch. Do not let setup issues eat the entire 25 minutes.
- Make sure everyone sees the before/after comparison -- that is the core teaching moment about why MCP matters.
- Remind everyone: visit only public websites. No Tesla internal sites or dashboards.

---

## Exercise 6: Agent Builds a Real Tool

**Type:** Independent Practice
**Difficulty:** 6/10
**Time:** 30 minutes (Describe task = 3 min, agent plans + builds = 12 min, test in browser = 5 min, iterate = 5 min, review diff = 5 min)
**Tool:** GitHub Copilot (Agent Mode) -- NO Tesla Data

### Objective

Have the agent build a fully working time-savings tracking dashboard -- an HTML page you can actually use going forward to measure how much time AI saves you each week.

### Prerequisites

- Completed Exercises 3-5 (comfortable with Agent Mode and MCP)
- VS Code open in Agent Mode with Claude Opus 4.5 (or Claude Sonnet 4)

> **POLICY REMINDER:** Use **generic/fictional data** for this exercise. Do not enter real Tesla metrics. This is a personal productivity tracker, not a Tesla reporting tool.

### Step-by-Step Instructions

**Step 1: Describe the task (3 min)**

Make sure you are in **Agent Mode** with **Claude Opus 4.5** (or Claude Sonnet 4) selected.

> **TYPE THIS** (in Copilot Agent Mode):
> ```
> Build an HTML dashboard that tracks daily time savings from AI tools. Include:
> 1. A form to log entries with fields for: date, task name, time without AI (minutes), time with AI (minutes)
> 2. Automatic calculation of time saved per entry
> 3. A running total showing weekly time savings
> 4. A simple bar chart showing daily savings for the current week
> 5. Use a dark background (#0a0a0a) with red accent color (#e82127) and white text
> 6. Save all data in the browser's local storage so it persists between sessions
> ```

**Step 2: Watch the agent plan and build (12 min)**

**What Will Happen:**
1. **The agent creates a plan.** It will outline the HTML structure, the form, the chart, and the styling. Read the plan -- does it cover all 6 requirements?
2. **The agent asks to create a file.** It will propose something like `time-savings-dashboard.html`. Click **"Accept"**.
3. **The agent writes the code.** HTML, CSS, and JavaScript will appear in the file. Let it finish -- this may take 2-3 minutes.
4. **The agent may iterate on its own.** If it spots an error, it will fix it automatically. This is the "self-healing" behavior.

**What to Watch For:**
- The agent is working through multiple steps without you having to prompt it again
- It is creating the form, the chart, and the styling all in one go
- It checks its own work and fixes issues

**Step 3: Test in your browser (5 min)**

> **DO THIS:**
> 1. Find the HTML file in your VS Code file explorer (left sidebar)
> 2. Right-click the file and choose **"Open in Default Browser"**
>    - If that option does not appear, find the file on your computer and double-click it
> 3. Test it:
>    - Enter a task: "Weekly KPI Report", without AI: 45 min, with AI: 15 min
>    - Click the submit/add button
>    - Check: does it show "30 minutes saved"?
>    - Add 2-3 more entries with different tasks
>    - Check: does the running total update? Does the chart show?
>    - Refresh the page -- is your data still there? (localStorage test)

**Expected Output:** A dark-themed dashboard with a form at the top, a list of entries showing time saved for each, a weekly total, and a bar chart.

**Step 4: Ask for an improvement (5 min)**

> **TYPE THIS** (in Copilot Agent Mode -- pick one):
> ```
> Add a weekly goal of 120 minutes. Show a progress bar at the top that fills up as I log more time savings. When I hit the goal, show a green "Goal Reached!" message.
> ```
> OR:
> ```
> Add a "Delete" button next to each entry so I can remove mistakes. Also add an "Export to CSV" button that downloads all entries as a spreadsheet.
> ```
> OR:
> ```
> Add a summary section that shows: total entries this week, average time saved per task, and the task where I saved the most time.
> ```

**Expected Output:** The agent modifies the existing file to add your requested feature. Refresh the browser to see the changes.

**Step 5: Review what changed (5 min)**

> **DO THIS:**
> 1. Look at the file in VS Code. You should see colored markers in the left margin (green = added lines, red = deleted lines)
> 2. Click the **Source Control** icon in the left sidebar (looks like a branch/fork)
> 3. Click on the changed file to see the full diff
> 4. Read through: what did the agent add? What did it change?

**What to Look For:**
- Can you identify the new code the agent added for your requested feature?
- Did the agent change anything you did not ask for? (If so, ask it why)
- The diff makes it easy to see exactly what was modified

### Expected Output

A fully working HTML dashboard with:
- A data entry form with date, task name, time without AI, and time with AI fields
- Automatic time-saved calculation per entry
- A running weekly total
- A bar chart visualization
- Dark theme with Tesla red accents
- Data persistence via localStorage
- One additional feature from the iteration step

### Success Criteria

- [ ] The agent created a working HTML dashboard
- [ ] You can add entries and see time savings calculated correctly
- [ ] The running total updates as you add entries
- [ ] Data persists after a page refresh (localStorage works)
- [ ] You successfully asked for one improvement and the agent delivered it
- [ ] You reviewed the diff and can point to what changed

### Common Pitfalls

| # | Pitfall | Fix |
|---|---------|-----|
| 1 | The dashboard opens but looks blank or broken | Tell the agent: "The dashboard doesn't display correctly. Check for JavaScript errors and fix them." The agent can debug its own code. |
| 2 | The chart does not show up | Tell the agent: "The chart is not rendering. Use a simpler approach -- maybe an HTML/CSS bar chart instead of a JavaScript library." |
| 3 | Data disappears when you refresh the page | Tell the agent: "The data is not persisting. Make sure you're using localStorage to save and load entries." |
| 4 | The agent creates multiple files instead of one | Tell the agent: "Put everything in a single HTML file -- CSS and JavaScript should be inline." |

### For Fast Finishers

Ask the agent to add a "tool used" dropdown (Bottle Rocket, Copilot Chat, Copilot Agent) to each entry, and then show a breakdown of time saved by tool in the summary section. This adds complexity while keeping the exercise on-topic.

### Facilitator Notes

- This exercise produces a tangible artifact they will use for the rest of the course (and for homework this week). Emphasize that this is THEIR tool now.
- Pre-build a reference version of the dashboard to show if anyone gets stuck.
- The biggest "wow" is when they open the HTML file in a browser and see a working dashboard with their data.
- If an agent generates something that does not work, use it as a teaching moment: "This is why we review before we accept."
- Keep the energy high -- they just built a real tool with plain English. That is the power of agents.

---

## Exercise 7: Debug & Redirect an Agent

**Type:** Scenario Challenge
**Difficulty:** 7/10
**Time:** 25 minutes (Part A = 10 min, Part B = 15 min)
**Tool:** GitHub Copilot (Agent Mode) -- NO Tesla Data

### Objective

Learn the most important agent management skill: recognizing when an agent makes a mistake or produces poor output, and redirecting it with specific instructions. The key lesson -- agents need clear instructions, just like the associates on your team.

### Prerequisites

- Completed Exercises 4-6 (comfortable giving agents tasks and reviewing output)
- VS Code open in Agent Mode

### Part A: What Happens with Vague Instructions (10 min)

**Step 1: Give a deliberately vague instruction**

> **TYPE THIS** (in Copilot Agent Mode):
> ```
> Make it better.
> ```

**What Will Happen:**
The agent will do one of two things:
- **Ask clarifying questions** (good behavior): "What would you like me to improve? The layout, the features, or the data display?"
- **Make assumptions and change things** (common behavior): It may randomly redesign the dashboard, add features you did not ask for, or change things that were already working.

**Either way, this is the lesson:** "Make it better" is not useful feedback -- for an agent OR for a team member.

**Step 2: Now redirect with specific instructions**

> **TYPE THIS** (in Copilot Agent Mode):
> ```
> Stop. Undo those changes. Instead, I need you to do one specific thing: add a field to each entry where I can note which AI tool I used (Bottle Rocket, Copilot Chat, or Copilot Agent). Make it a dropdown menu with those three options.
> ```

**What to Look For:**
- The specific instruction gets a specific result
- The agent undoes the vague changes and makes exactly what you asked for
- The output matches your request because your request was clear

### Part B: Catch and Fix a Mistake (15 min)

**Step 1: Give a task with a constraint the agent might miss**

> **TYPE THIS** (in Copilot Agent Mode):
> ```
> Build a one-page HTML summary of a fictional distribution center's weekly KPIs. Use this data:
> - Orders processed: 14,200
> - Fill rate: 97.2%
> - Overtime hours: 180
> - Headcount: 48
> - Safety incidents: 1
> - Customer complaints: 3
>
> Requirements:
> - Everything must fit on ONE screen without scrolling (max height 500px)
> - Use large, easy-to-read numbers
> - Use the dark theme (background #0a0a0a, text white, accent red #e82127)
> - Show each KPI in its own card with an icon or emoji
> ```

**Step 2: Review the output and look for problems**

Open the HTML file in your browser. Common agent mistakes:
- The page scrolls (missed the 500px constraint)
- Colors do not match the specification
- Cards are too small to read
- Added unnecessary elements (headers, footers, navigation bars)

**Step 3: Practice the fix workflow**

When you spot a problem, tell the agent specifically what is wrong:

> **TYPE THIS** (adapt to whatever problem you see):
> ```
> The page is too tall and requires scrolling. Fix this: reduce the padding, make the cards smaller, remove the footer, and make sure everything fits within 500px height.
> ```

Then:
1. Watch the agent fix it
2. Check the new version in the browser
3. Review the diff in VS Code -- what did the agent change?
4. If it is still wrong, give MORE specific feedback. Do not say "try again" -- say exactly what is wrong.

**Step 4: If the agent gets it right on the first try, try a harder challenge**

> **TYPE THIS:**
> ```
> Now add a second row of cards showing week-over-week change for each KPI. Use green arrows for improvement and red arrows for decline. Use this comparison data:
> - Orders: was 13,800 (up 2.9%)
> - Fill rate: was 96.5% (up 0.7%)
> - Overtime: was 210 (down 14.3% -- good)
> - Headcount: was 46 (up 4.3%)
> - Safety: was 2 (down 50% -- good)
> - Complaints: was 5 (down 40% -- good)
> Still must fit on one screen without scrolling.
> ```

### Expected Output

**Part A:** Two contrasting experiences -- a vague instruction producing poor or random results, followed by a specific instruction producing exactly what you asked for.

**Part B:** A compact, one-screen KPI dashboard in dark theme. After debugging, it should fit within 500px height with all 6 KPIs visible in card format.

### Success Criteria

- [ ] You gave a vague instruction ("Make it better") and saw the agent struggle or make assumptions
- [ ] You redirected with a specific instruction and got a better, targeted result
- [ ] You identified at least one mistake in the Part B output (scrolling, wrong colors, missing KPIs, etc.)
- [ ] You practiced the catch-and-fix workflow: identify problem > describe specifically > verify fix
- [ ] You can explain why specific instructions matter for agents (and for managing people)

### Common Pitfalls

| # | Pitfall | Fix |
|---|---------|-----|
| 1 | The agent keeps changing things you did not ask about | Tell it: "Only change what I asked about. Do not modify anything else." |
| 2 | You cannot tell what the agent changed | Use the Source Control panel to see the diff. Or ask the agent: "List every change you just made." |
| 3 | The undo does not work properly | Press Ctrl+Z multiple times, or tell the agent: "Revert the file to its state before your last set of changes." |
| 4 | The agent apologizes but makes the same mistake again | Be even more specific. Include exact numbers: "Maximum height 500 pixels. Each card must be exactly 80 pixels tall. Zero padding on the body." |

### For Fast Finishers

Try this meta-exercise: ask the agent to explain what it did wrong and why. Type: "Look at the first version you created and the corrected version. What mistakes did you make and how would you avoid them next time?" See if the agent can self-reflect.

### Facilitator Notes

- This exercise is intentionally frustrating at first. That IS the point. The learning happens when they realize vague instructions cause problems and specific redirects fix them.
- The key phrase to teach: **"Stop. I need you to..."** -- this is how you redirect an agent that is going in the wrong direction.
- If an AGM says "this is just like managing my team," they have gotten the lesson. Reinforce that connection.
- Pair this with the Week 1 lesson about iteration. The principle is the same: feedback must be specific to be useful.
- Some agents will nail the Part B task on the first try. That is fine -- the harder challenge (week-over-week comparison) gives them something to debug.

---

## Homework Extension

### Part 1: Agent Mode Practice (~15 min)

Use Agent Mode for one real task this week -- but remember: **NO Tesla data in Copilot**. Use it for something generic:
- A personal checklist template
- A time tracker or habit tracker
- A formatted report layout
- A simple calculator or converter tool

For the task:
- Use Agent Mode (not Chat)
- Read the plan before approving
- Iterate at least once
- Note: how long it took, quality of output, any issues

### Part 2: Daily Time Tracking (~5 min/day)

Use your time-savings dashboard from Exercise 6 every day this week. Log at least one entry per day. Target: 20-30 minutes saved per day.

### Part 3: MCP Exploration (~10 min)

In Copilot Chat, type "What MCP tools are available?" or search the VS Code Extensions view for `@mcp`. List 3 MCP tools that would help your DC work.

### Part 4: Think Ahead -- Your Capstone Project (~10 min)

What process at your DC would you most want to automate or build a tool for? Write a 2-sentence description. This seeds your Week 4 final project.

> **TYPE THIS** (in a note or document -- save this for next week):
> ```
> My Week 4 project idea:
> Process I want to improve: [describe it]
> What the tool would do: [describe it]
> ```

---

## Exercise Validation Log

| Exercise | Difficulty | Duration | Type | Tool | Policy |
|----------|------------|----------|------|------|--------|
| 1: CoT + Data Analysis Sprint | 4/10 | 30 min | Guided Practice | Bottle Rocket | Tesla data OK |
| 2: Template Speed Build | 4/10 | 10 min | Independent Practice | Bottle Rocket | Tesla data OK |
| 3: VS Code + Copilot Setup | 3/10 | 20 min | Guided Setup | VS Code + Copilot | NO Tesla data |
| 4: Your First Agent Mode Task | 5/10 | 25 min | Guided Practice | Copilot Agent | NO Tesla data |
| 5: Install & Use First MCP Skill | 6/10 | 25 min | Guided Practice | Copilot Agent + MCP | NO Tesla data |
| 6: Agent Builds a Real Tool | 6/10 | 30 min | Independent Practice | Copilot Agent | NO Tesla data |
| 7: Debug & Redirect an Agent | 7/10 | 25 min | Scenario Challenge | Copilot Agent | NO Tesla data |

---

## Quality Checklist

| Check | Requirement | Status |
|-------|-------------|--------|
| Exercise count | 3+ exercises per week | 7 exercises |
| Difficulty range | Progressive (3-7/10) | 3, 4, 4, 5, 6, 6, 7 |
| Tool coverage | Correct tool per exercise | Bottle Rocket (1-2), Copilot (3-7) |
| Policy compliance | NO Tesla data in Copilot exercises | Verified -- all Copilot exercises use generic/fictional data |
| Policy reminder box | Before Exercise 3 | Included between Exercise 2 and Exercise 3 |
| TYPE THIS boxes | Exact prompts from content.md | Matched for all 7 exercises |
| Success criteria | Per exercise | Included for all 7 exercises |
| Common pitfalls | 3+ per exercise | 3-4 per exercise |
| Fast finishers | Bonus challenge per exercise | Included for all 7 exercises |
| Facilitator notes | Per exercise | Included for all 7 exercises |
| Expected output | Per exercise | Included for all 7 exercises |
| Prerequisites | Per exercise | Included for all 7 exercises |
| Time realistic | Total fits in session | 165 min hands-on within 240 min session |
| Hands-on ratio | 80%+ target | 81% achieved |

---

*Exercises designed for Week 2: Advanced Prompts & Your First Agent*
*Primary Tools: Bottle Rocket (Exercises 1-2), GitHub Copilot Agent Mode (Exercises 3-7)*
*Difficulty Progression: 3 -> 4 -> 4 -> 5 -> 6 -> 6 -> 7*
