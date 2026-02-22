# Week 2: Advanced Prompts & Your First Agent

**Duration:** 240 minutes (4 hours)
**Prerequisites:** Week 1 - AI Foundations & Policy Compliance
**Tools Needed:** Laptop with browser access to go.tesla.com/chat (Bottle Rocket), VS Code installation capability

---

## Content Sources

This content is based on:
- `outputs/week-2/research.md` (primary source)
- `outputs/syllabus.md` (objectives)
- `inputs/requirements.md` (learning goals 2, 5, 6, 7, 9)

---

## Learning Objectives

By the end of this session, participants will be able to:
1. Apply Chain-of-Thought, Few-Shot, and Persona prompting to operations data analysis
2. Set up VS Code with GitHub Copilot (Chat, Edit, Agent modes)
3. Understand what AI agents are and how they differ from chat
4. Use Agent Mode to complete multi-step tasks autonomously
5. Understand MCP (Model Context Protocol) and install a first skill
6. Read agent plans and review agent-generated changes
7. Debug and redirect agents when they make mistakes

---

## Session Agenda

| Time | Section | Topic | Activity | Duration |
|------|---------|-------|----------|----------|
| 0:00 - 0:10 | 1 | Homework Review & Wins | Peer Sharing | 10 min |
| 0:10 - 0:15 | 2 | Advanced Prompting Techniques | Concept Intro | 5 min |
| 0:15 - 0:45 | 3 | **Exercise 1:** CoT + Data Analysis Sprint | Hands-On | 30 min |
| 0:45 - 0:55 | 4 | **Exercise 2:** Template Speed Build | Hands-On | 10 min |
| **0:55 - 1:05** | -- | **BREAK** | | **10 min** |
| 1:05 - 1:10 | 5 | What Is an AI Agent? | Concept Intro | 5 min |
| 1:10 - 1:30 | 6 | **Exercise 3:** VS Code + Copilot Setup | Guided Setup | 20 min |
| 1:30 - 1:35 | 7 | Copilot Modes: Chat vs Edit vs Agent | Concept Intro | 5 min |
| 1:35 - 2:00 | 8 | **Exercise 4:** Your First Agent Mode Task | Hands-On | 25 min |
| **2:00 - 2:10** | -- | **BREAK** | | **10 min** |
| 2:10 - 2:15 | 9 | MCP Tools: Giving Agents Skills | Concept Intro | 5 min |
| 2:15 - 2:40 | 10 | **Exercise 5:** Install & Use First MCP Skill | Hands-On | 25 min |
| 2:40 - 2:45 | 11 | Reading Agent Plans & Git Basics | Concept Intro | 5 min |
| 2:45 - 3:15 | 12 | **Exercise 6:** Agent Builds a Real Tool | Hands-On | 30 min |
| 3:15 - 3:40 | 13 | **Exercise 7:** Debug & Redirect an Agent | Hands-On | 25 min |
| 3:40 - 4:00 | 14 | Share Results + Key Takeaways + Homework | Peer Discussion | 20 min |
| **TOTAL** | | | | **240 min** |

**Time Validation:** 10 + 5 + 30 + 10 + 10 + 5 + 20 + 5 + 25 + 10 + 5 + 25 + 5 + 30 + 25 + 20 = **240 min**

**Hands-on Time:** ~195 min (81%)
**Concept Intros:** ~25 min (10%)
**Breaks:** ~20 min (8%)

---

## Section 1: Homework Review & Wins

**Duration:** 10 minutes
**Activity:** Peer Sharing

### Content

Welcome back! Before we dive into today's session, let's hear about your wins from last week.

**Quick Round (2 minutes each x 5 AGMs):**
- What was your **best prompt** this week? What made it work?
- What was your **worst prompt**? What went wrong?
- How much time did you save? (Target was 15-20 min/day)

**Facilitator Notes:**
- Celebrate specific wins publicly
- Note common challenges for the group
- If anyone saved 30+ min/day, ask them to explain how
- If someone struggled, pair them with a successful peer

> **SPEAKER NOTES:** Keep this fast. Two minutes per person, strict timekeeper. The energy from sharing wins sets the tone. If time runs short, ask for best prompt only. Transition: "Now let's level up your prompting with three powerful techniques."

---

## Section 2: Advanced Prompting Techniques

**Duration:** 5 minutes
**Activity:** Concept Intro

### Content

Three techniques that take your prompts from good to great -- 90 seconds each.

**1. Chain-of-Thought (CoT)** -- Force step-by-step reasoning
- Add "Analyze step by step" or number your analysis steps
- AI shows its work: calculations, logic, conclusions
- Best for: complex analysis, root cause investigation, planning
- *Source: Wei et al. research shows 20-40% accuracy improvement on complex reasoning -- Research Reference 1*

**2. Few-Shot** -- Teach by example
- Show 2-3 examples of the exact output format you want
- AI learns your pattern and replicates it consistently
- Best for: reports, shift handoffs, standardized communications
- *Source: Research shows 2-5 examples optimal, quality beats quantity -- Research Reference 2*

**3. Enhanced Persona** -- Assign specific expertise
- "You are a [specific role] with [X years] experience, known for [trait]"
- More specific = better output ("warehouse safety specialist" > "expert")
- Best for: communications, analysis, planning documents
- *Source: Specific roles outperform generic ones -- Research Reference 3*

**The Formula Upgrade:**
```
Week 1: ROLE + CONTEXT + TASK + FORMAT
Week 2: ENHANCED ROLE + CONTEXT + STRUCTURED TASK (with CoT) + FORMAT (with examples)
```

> **SPEAKER NOTES:** This is a 5-minute speed round. Show one slide per technique with a before/after example. Don't teach deeply -- they'll learn by doing in Exercise 1. The key message: "You already know the formula. These three upgrades make it dramatically better." Transition directly to Exercise 1.

---

## Section 3: Exercise 1 -- CoT + Data Analysis Sprint

**Duration:** 30 minutes
**Activity:** Hands-On (Bottle Rocket)
**Time Allocation:** Part A = 15 min, Part B = 15 min

### Part A: See the Difference (15 min)

AGMs receive a week of DC performance data. First, try a basic prompt. Then, try a structured CoT prompt. Compare the quality.

**Step 1 -- Type the basic prompt first:**

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

**Expected Output:** A vague summary -- "orders varied throughout the week" with generic observations.

**Step 2 -- Now try the CoT version:**

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

**Expected Output:** A structured table showing orders/associate for each day, a clear finding that Friday had highest volume AND highest incidents (possible fatigue pattern), and specific recommendations.

**What to Look For:**
- The CoT prompt produces numbered reasoning steps, not just conclusions
- The analysis is deeper -- it finds correlations the basic prompt missed
- The output format matches what you asked for

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

**What to Look For:**
- AI identifies the staffing-volume mismatch as the root cause
- Recommendations include specific numbers, not just "hire more people"
- The step-by-step reasoning is visible in the response

**Common Pitfalls and Fixes:**
- *Pitfall:* Skipping Part A and going straight to Part B. *Fix:* Do Part A first -- seeing the quality difference IS the learning.
- *Pitfall:* Copying the prompt but not reading the AI's reasoning steps. *Fix:* Read the numbered analysis -- that's where the learning is.
- *Pitfall:* AI gives generic recommendations. *Fix:* Add "Include specific numbers and timelines" to your prompt.

**Success Criteria:**
- You can see a clear quality difference between the basic and CoT prompts
- Your Part B analysis identifies at least 2 correlations in the data
- Your action items include specific numbers, not vague suggestions

> **SPEAKER NOTES:** Walk the room during this exercise. Common issue: AGMs will skip Part A and go straight to Part B. Encourage them to do Part A first -- seeing the quality difference is the learning moment. If anyone finishes early, challenge them to add their own DC data. Transition: "Now let's build templates you'll use every week."

---

## Section 4: Exercise 2 -- Template Speed Build

**Duration:** 10 minutes
**Activity:** Hands-On (Bottle Rocket)
**Time Allocation:** 10 min total (5 min build, 3 min test, 2 min save)

### Content

Quick exercise: upgrade one of your Week 1 templates using today's techniques.

**Instructions:**
1. Pick your most frequent weekly task (KPI report, shift handoff, vendor email, labor plan)
2. Build a template using ENHANCED ROLE + CoT TASK + FORMAT with examples
3. Test it with real or realistic data
4. Save it to your prompt library

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

**Expected Output:** A prompt template with clear placeholders, structured analysis steps, and an example output showing the format.

**Success Criteria:**
- Template uses at least one Week 2 technique (CoT, Few-Shot, or enhanced persona)
- Template has [PLACEHOLDERS] for variable data
- Tested and produces work-ready output

**Common Pitfalls and Fixes:**
- *Pitfall:* Spending too long choosing which task. *Fix:* Pick the first one that comes to mind -- this is a speed exercise.
- *Pitfall:* Template is too generic. *Fix:* Add your specific DC context (site name, team size, typical metrics).

> **SPEAKER NOTES:** This is intentionally short. One template, done well. They already built templates in Week 1 -- this is an upgrade pass. If someone is stuck, point them to the labor planning or KPI narrative template from the prompt library. Transition to break: "Take 10 minutes. When we come back, everything changes -- we're going from chatting with AI to commanding AI agents."

---

## BREAK (10 minutes)

---

## Section 5: What Is an AI Agent?

**Duration:** 5 minutes
**Activity:** Concept Intro

### Content

**The Big Idea:** Until now, you have been *chatting* with AI -- asking questions, getting answers. An AI agent is different. An agent can *do work* on its own.

**Chat vs Agent -- the core difference:**

| | Chat (Bottle Rocket) | Agent (Copilot Agent Mode) |
|---|---|---|
| **You say** | "Write me a report" | "Build me a reporting tool" |
| **AI does** | Writes text in the chat window | Creates files, writes code, runs commands |
| **Output** | Text you copy-paste | Working files on your computer |
| **Steps** | One response | Multiple steps, asks for your approval |
| **Autonomy** | None -- you do everything | High -- agent plans and executes |

**The Plan-Execute-Iterate Loop:**

Think of delegating a task to a capable new hire:
1. **Plan** -- The agent reads your request and creates a step-by-step plan (like the new hire writing down what they need to do)
2. **Execute** -- The agent carries out each step: creating files, writing code, running commands (like the new hire doing the work)
3. **Iterate** -- You review the output. If something is off, you give feedback and the agent adjusts (like checking in on the new hire's progress)

The agent keeps going in this loop until the task is done or it needs your input. You approve every major step.

**Why This Matters for You:**
- Agents can build tools you will use daily -- dashboards, trackers, report generators
- Agents can process data across multiple files at once
- Agents can automate multi-step workflows that used to take hours
- You stay in control -- agents ask before taking action

**The Industry Is Moving Here:**
- 79% of companies are already adopting AI agents (PwC 2025)
- 66% report measurable productivity gains
- 88% of executives are increasing AI budgets because of agents

*Source: PwC AI Agent Survey 2025; Anthropic "Building Effective Agents"; GitHub Copilot documentation -- Research References 4, 26, 27*

> **SPEAKER NOTES:** This is the "aha moment" slide. The key insight: agents DO work, chat SUGGESTS work. Use the new-hire analogy heavily -- every AGM has onboarded someone and understands the plan-execute-check-in cycle. Don't go deep on technical details. They will experience it hands-on in 5 minutes. Transition: "Let's set up the tool that makes this possible."

---

## Section 6: Exercise 3 -- VS Code + Copilot Setup

**Duration:** 20 minutes
**Activity:** Guided Setup
**Time Allocation:** Steps 1-6 = 12 min, verify + troubleshoot = 8 min

### Content

Everyone finishes this exercise with a working VS Code + Copilot installation. Follow each step together as a group.

> **POLICY REMINDER -- READ THIS ALOUD:**
> GitHub Copilot is **CONDITIONALLY** approved at Tesla. That means:
> - **NO Tesla data in Copilot -- ever.** No metrics, employee names, vendor details, internal processes, or proprietary information.
> - Use **generic or fictional data** for all Copilot exercises today.
> - **Bottle Rocket** (go.tesla.com/chat) remains the tool for anything involving Tesla data.
> - Reference: go.tesla.com/aitools

### Step-by-Step Setup

**Step 1: Download VS Code (3 min)**

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

**Expected Output:** A friendly response listing three practical suggestions for shift planning -- things like forecasting demand, optimizing headcount, and identifying patterns.

**What to Look For:**
- You got a response (not an error message)
- The response is relevant to operations
- The chat panel shows the conversation

**Step 6: Troubleshoot (8 min buffer)**

**Common Issues and Fixes:**

| Problem | Fix |
|---------|-----|
| "Sign in" keeps looping | Clear browser cookies, try again. Or use a private/incognito browser window. |
| Extension not showing | Close and reopen VS Code. Check that the extension says "Installed" in the Extensions panel. |
| "You don't have access to Copilot" | Verify your GitHub account has a Copilot subscription. Check with your facilitator. |
| Chat not responding | Check your internet connection. Try switching to a different model in the dropdown. |
| Model dropdown empty | Update VS Code to the latest version (Help > Check for Updates). |

**Success Criteria:**
- VS Code is installed and open
- GitHub Copilot extension is installed
- You are signed in to GitHub
- You sent a message and received a response in the Copilot Chat panel

> **SPEAKER NOTES:** This is a setup exercise, not a lecture. Walk the room. Have IT support on standby for login issues. The biggest blocker will be GitHub account creation/sign-in. Have backup accounts ready if possible. Do NOT move on until everyone has Copilot Chat working. The 8-min buffer handles stragglers. Transition: "Now let me show you the three things Copilot can do."

---

## Section 7: Copilot Modes -- Chat vs Edit vs Agent

**Duration:** 5 minutes
**Activity:** Concept Intro

### Content

GitHub Copilot has three modes. Think of them as three levels of help:

**Chat Mode** -- Ask questions, get answers (like Bottle Rocket)
- Click the chat icon in the sidebar, or press **Ctrl+Shift+I**
- "How do I calculate overtime cost per associate?"
- Output: text in the chat panel -- you read it, copy what you need
- Use when: you need information, explanations, or ideas

**Edit Mode** -- Point at something specific and ask for changes
- Select text or code in a file, right-click, choose "Copilot > Edit"
- "Make this table sort by date instead of name"
- Output: the agent changes the file directly -- you see a preview and accept or reject
- Use when: you know exactly what file and what change you want

**Agent Mode** -- Describe a goal, the agent plans and builds it
- In the Chat panel, click the **mode dropdown** at the top and select **"Agent"**
- "Build me a dashboard that tracks weekly KPIs for my distribution center"
- Output: multiple files created, code written, terminal commands run -- all with your approval
- Use when: you want something *built*, not just *talked about*

**How to Switch:**
- Chat: Ctrl+Shift+I (or click chat icon)
- Edit: Select text > right-click > Copilot > Edit
- Agent: In Chat panel, change mode dropdown from "Chat" to **"Agent"**

**Which to Use When:**

| Situation | Mode |
|-----------|------|
| "I have a question about..." | Chat |
| "Change this specific thing in this file..." | Edit |
| "Build me a..." / "Create a..." / "Set up a..." | Agent |

*Source: GitHub Copilot documentation; VS Code Blog -- Research References 5, 30, 31*

> **SPEAKER NOTES:** Quick demo showing all three modes. Don't dwell -- they will use Agent Mode hands-on next. The key point: Chat is what they know from Bottle Rocket. Agent is what they are about to learn. Edit is for later. Transition: "Let's put Agent Mode to work."

---

## Section 8: Exercise 4 -- Your First Agent Mode Task

**Duration:** 25 minutes
**Activity:** Hands-On (Copilot Agent Mode)
**Time Allocation:** Setup = 2 min, run agent = 10 min, review output = 5 min, iterate = 5 min, discussion = 3 min

### Content

Your first hands-on experience with Agent Mode. The agent will create a real, usable file on your computer.

> **POLICY REMINDER:** We are using Copilot for this exercise. Use **generic data only** -- no Tesla metrics, employee names, or internal processes. The scenario is fictional.

### Setup (2 min)

> **DO THIS:**
> 1. In VS Code, open the Copilot Chat panel (Ctrl+Shift+I)
> 2. At the top of the chat panel, click the **mode dropdown**
> 3. Change it from "Chat" to **"Agent"**
> 4. Make sure your model is set to **Claude Opus 4.5** (or Claude Sonnet 4)

### Run the Agent (10 min)

> **TYPE THIS** (in Copilot Agent Mode):
> ```
> Create a shift summary template for a distribution center that tracks headcount, safety incidents, and throughput for morning, afternoon, and night shifts. Make it an HTML file with a clean, professional design. Include input fields so a manager can fill it in each day.
> ```

**What Will Happen -- Watch For These Steps:**

1. **The agent writes a plan.** You will see it say something like: "I'll create an HTML file with a form for three shifts..." Read the plan. Does it make sense?
2. **The agent asks to create a file.** It will propose creating a file (like `shift-summary.html`). Click **"Accept"** to let it proceed.
3. **The agent writes the code.** You will see HTML and CSS appearing in the file. You do not need to understand the code -- just let it finish.
4. **The agent may ask to run a command.** If it wants to open the file in a browser or run a preview, you can approve that too.

### Review the Output (5 min)

> **DO THIS:**
> 1. Find the file the agent created (it will appear in your VS Code file explorer on the left)
> 2. Right-click the HTML file and select **"Open in Default Browser"** (or copy the file path and open it in your browser)
> 3. Look at the result. Does it have:
>    - Fields for all three shifts (morning, afternoon, night)?
>    - Headcount, safety incidents, and throughput for each shift?
>    - A clean, professional look?

### Iterate -- Ask for Changes (5 min)

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

### Discussion (3 min)

Think about what just happened:
- You described what you wanted in plain English
- The agent planned, built, and delivered a working file
- You reviewed it and asked for changes -- just like working with a team member
- The whole process took minutes, not hours

**Comparison Moment:** In Exercise 2, you spent 10 minutes building a text template in Bottle Rocket. The agent just built a working interactive tool in less time.

**What to Look For:**
- The agent showed you its plan BEFORE executing -- you were always in control
- You could approve or reject each step
- The output is a real file on your computer, not just chat text
- Iteration works the same as with Bottle Rocket -- "add this" or "change that"

**Common Pitfalls and Fixes:**
- *Pitfall:* The agent asks to run a terminal command and you are unsure. *Fix:* Read the command. If it says something like "open file" or "create directory," it is safe. If unsure, click "Reject" and ask the agent to explain what the command does.
- *Pitfall:* The agent creates code you do not understand. *Fix:* You do not need to read the code. Focus on the final output in the browser. Does it look right? Does it work?
- *Pitfall:* The agent gets stuck or produces an error. *Fix:* Type "Start over with a simpler approach" or "Try a different approach."
- *Pitfall:* The HTML file looks broken in the browser. *Fix:* Tell the agent: "The page doesn't look right. Fix the layout so the three shifts are side by side."

**Success Criteria:**
- The agent created a working HTML file
- The file has input fields for all three shifts with the required data points
- You successfully asked for one improvement and the agent delivered it

> **SPEAKER NOTES:** This is the most important exercise of the day. Walk the room constantly. The biggest "aha" is when they see a file appear on their screen that the agent created. If someone's agent gets stuck, show them how to type "start over" or "try a different approach." Reassure them they do not need to understand the code -- just the output. Transition: "The agent just did something impressive. But it was limited to writing files. What if we could give it new abilities?"

---

## BREAK (10 minutes)

---

## Section 9: MCP Tools -- Giving Agents Skills

**Duration:** 5 minutes
**Activity:** Concept Intro

### Content

**The Big Idea:** Right now, your Copilot agent can read files, write files, and run commands. That is it. MCP tools give it new abilities -- like installing apps on your phone.

**What is MCP?**
- MCP stands for **Model Context Protocol**
- It is a standard way to give AI agents new skills
- Think of it as a plug-in system: each MCP tool adds a new capability
- Created by Anthropic in November 2024, now an open standard used across the industry
- Over 10,000 MCP tools available -- and growing fast

*Source: Anthropic MCP documentation; Pento "A Year of MCP" -- Research References 36, 38*

**The Phone Analogy:**

| Your Phone | Your AI Agent |
|------------|---------------|
| Out of the box: calls, texts, camera | Out of the box: read files, write files, run commands |
| Install Google Maps: it can navigate | Install Playwright MCP: it can browse websites |
| Install your banking app: it can check balances | Install Database MCP: it can query databases |
| Install Slack: it can message your team | Install API MCP: it can connect to services |

**Before MCP vs After MCP:**

*Without Playwright MCP:*
> You: "Check the weather forecast for Tampa FL"
> Agent: "I can't access the internet. I can only work with files on your computer."

*With Playwright MCP installed:*
> You: "Check the weather forecast for Tampa FL"
> Agent: Opens weather.com, navigates to Tampa, reads the forecast, and reports back: "Tampa FL: 78 degrees, partly cloudy, 20% chance of rain."

**Types of MCP Skills:**

| MCP Tool | What It Adds | Example |
|----------|-------------|---------|
| **Playwright** | Browse any website | Pull data from a public dashboard |
| **Filesystem** | Organize files and folders | Create a folder structure for quarterly reports |
| **Memory** | Remember facts between sessions | Store your DC's target KPIs |
| **Fetch** | Connect to web services | Pull data from an API |

**The Industry Shift:**
- 28% of Fortune 500 companies already use MCP
- 97 million monthly downloads of MCP tools
- Every major AI platform now supports MCP (Copilot, ChatGPT, Gemini, Claude)

*Source: Model Context Protocol specification; Guptadeepak.com MCP adoption data; MCP Manager statistics -- Research References 37, 39, 40*

> **SPEAKER NOTES:** The phone analogy is the key teaching tool. Everyone understands installing apps. The before/after weather example makes it concrete. Do not explain the technical details of how MCP works -- just the concept of "giving agents new abilities by installing plug-ins." They will install one themselves next. Transition: "Let's install your agent's first skill."

---

## Section 10: Exercise 5 -- Install & Use First MCP Skill

**Duration:** 25 minutes
**Activity:** Hands-On (VS Code + MCP)
**Time Allocation:** Install = 5 min, first task = 10 min, compare before/after = 5 min, discuss = 5 min

### Content

You are going to install the Playwright MCP tool and watch your agent gain the ability to browse websites.

> **POLICY REMINDER:** We are using Copilot with a browser tool. Visit only **public websites** (weather sites, news, etc.). Do NOT navigate to any Tesla internal sites or dashboards. No Tesla data in Copilot.

### Step 1: Install Playwright MCP (5 min)

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

**Troubleshooting:**

| Problem | Fix |
|---------|-----|
| "npx is not recognized" | You need Node.js installed. Download from **nodejs.org**, install, restart VS Code, try again. |
| Server fails to start | Check your internet connection. Try the command again. |
| No MCP option in Command Palette | Update VS Code to the latest version (Help > Check for Updates). VS Code 1.99+ required. |

### Step 2: Use the New Skill (10 min)

Now give your agent a task it could not do before:

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
- The data is current (today's date, not cached/old data)
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

### Step 3: Compare Before vs After (5 min)

Try the same task WITHOUT the MCP tool to see the difference:

> **DO THIS:**
> 1. Switch from Agent Mode back to **Chat** mode (use the mode dropdown at the top of the chat panel)
> 2. Type the same weather question in Chat mode

**Expected Result:** The chat mode either refuses ("I can't browse the internet") or gives outdated/general information. It cannot pull live data.

**The Point:** MCP is what gives the agent real capabilities. Without it, the agent is limited to files on your computer. With it, the agent can interact with the outside world.

### Step 4: Discussion (5 min)

Think about what other MCP skills would help with your work:
- A tool that reads spreadsheets and CSVs?
- A tool that connects to a database?
- A tool that sends formatted emails?
- A tool that monitors a website for changes?

**Common Pitfalls and Fixes:**
- *Pitfall:* The agent says it does not have browser access. *Fix:* Make sure you are in **Agent** mode (not Chat mode). Check that the Playwright MCP server is running (look for it in the Command Palette under "MCP: List Servers").
- *Pitfall:* The browser opens but the page does not load. *Fix:* Check your internet connection. Some corporate firewalls may block automated browsing -- try a different website.
- *Pitfall:* The agent navigates to the wrong page. *Fix:* Be more specific: "Go to weather.com/weather/today/l/Tampa+FL" instead of just "check the weather."

**Success Criteria:**
- Playwright MCP is installed and running
- The agent successfully browsed a public website and reported back with real data
- You can explain the difference between what the agent could do before and after installing MCP

> **SPEAKER NOTES:** Pre-test the public website URL before the session to make sure it works from the training room's network. The "aha" moment is when the agent opens a browser and navigates on its own. If someone cannot install Playwright (Node.js issues), pair them with a neighbor to watch. Make sure everyone sees the before/after comparison -- that is the teaching moment. Transition: "Your agent now has a skill. Let me show you how to review what agents do."

---

## Section 11: Reading Agent Plans & Git Basics

**Duration:** 5 minutes
**Activity:** Concept Intro

### Content

**Why This Matters:** As agents get more capable, they change more files. You need to know what they changed before you accept it -- just like reviewing a report before signing off.

**Reading Agent Plans:**

Before an agent takes action, it tells you what it plans to do. Read it like a to-do list:
- "I will create a new file called `dashboard.html`"
- "I will modify the existing `template.html` to add a totals row"
- "I will run the command `open dashboard.html` to preview it"

You can respond:
- **"Yes, go ahead"** -- approve the whole plan
- **"Do step 1 but skip step 3"** -- partial approval
- **"No, instead do X"** -- redirect the agent

**What Is a Diff? (The "Track Changes" of Code)**

When an agent modifies a file, VS Code shows you exactly what changed using colors:
- **Green lines** = new content that was **added**
- **Red lines** = old content that was **removed**
- **Red + Green together** = content was **changed** (old version in red, new version in green)

**Example:**
```
- Orders processed: 2,500
+ Orders processed: 2,800
+ Quality rate: 99.1%
```
This means: the orders number was updated from 2,500 to 2,800, and a new line about quality rate was added.

**The Review Workflow:**
1. Agent proposes changes (shows you the plan)
2. You review the diff (green = added, red = removed)
3. You accept or reject
4. If you reject, tell the agent what to do differently

**How to Undo:**
- **Ctrl+Z** -- undo the last change (works in any file)
- **Tell the agent:** "Undo those changes" or "Revert that file"
- **VS Code Source Control panel:** Click the undo icon next to any changed file to restore the original

**Key Rule:** Never accept changes you do not understand. Ask the agent: "Explain what you changed and why."

*Source: Git documentation; GitHub Copilot documentation; GitBook "What Is a Diff?" -- Research References 7, 46, 47*

> **SPEAKER NOTES:** This is intentionally surface-level. They do not need to learn git commands -- just the concept of green = added, red = removed, and the ability to undo. Show one example diff on screen. The key message: "You can always undo." This builds confidence for the next two exercises where agents will do more complex work. Transition: "Now let's have the agent build something real."

---

## Section 12: Exercise 6 -- Agent Builds a Real Tool

**Duration:** 30 minutes
**Activity:** Hands-On (Copilot Agent Mode)
**Time Allocation:** Describe task = 3 min, agent plans + builds = 12 min, test in browser = 5 min, iterate = 5 min, review diff = 5 min

### Content

The flagship exercise of the day. The agent builds a working time-savings tracking dashboard -- an HTML page you can actually use going forward to track how much time AI saves you each week.

> **POLICY REMINDER:** Use **generic/fictional data** for this exercise. Do not enter real Tesla metrics. This is a personal productivity tracker, not a Tesla reporting tool.

### Step 1: Describe the Task (3 min)

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

### Step 2: Watch the Agent Plan and Build (12 min)

**What Will Happen:**

1. **The agent creates a plan.** It will outline the HTML structure, the form, the chart, and the styling. Read the plan -- does it cover all 6 requirements?
2. **The agent asks to create a file.** It will propose something like `time-savings-dashboard.html`. Click **"Accept"**.
3. **The agent writes the code.** HTML, CSS, and JavaScript will appear in the file. Let it finish -- this may take 2-3 minutes.
4. **The agent may iterate on its own.** If it spots an error, it will fix it automatically. This is the "self-healing" behavior.

**What to Watch For:**
- The agent is working through multiple steps without you having to prompt it again
- It is creating the form, the chart, and the styling all in one go
- It checks its own work and fixes issues

### Step 3: Test in Your Browser (5 min)

> **DO THIS:**
> 1. Find the HTML file in your VS Code file explorer (left sidebar)
> 2. Right-click the file and choose **"Open in Default Browser"**
>    - If that option does not appear, find the file on your computer and double-click it
> 3. Test it:
>    - Enter a task: "Weekly KPI Report", without AI: 45 min, with AI: 15 min
>    - Click the submit/add button
>    - Check: does it show "30 minutes saved"?
>    - Add 2-3 more entries
>    - Check: does the running total update? Does the chart show?

**Expected Output:** A dark-themed dashboard with a form at the top, a list of entries showing time saved for each, a weekly total, and a bar chart.

### Step 4: Ask for an Improvement (5 min)

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

**Expected Output:** The agent modifies the existing file to add your requested feature.

### Step 5: Review What Changed (5 min)

> **DO THIS:**
> 1. Look at the file in VS Code. You should see colored markers in the left margin (green = added lines, red = deleted lines)
> 2. Click the **Source Control** icon in the left sidebar (looks like a branch/fork)
> 3. Click on the changed file to see the full diff
> 4. Read through: what did the agent add? What did it change?

**What to Look For:**
- Can you identify the new code the agent added for your requested feature?
- Did the agent change anything you did not ask for? (If so, ask it why)
- The diff makes it easy to see exactly what was modified

**Common Pitfalls and Fixes:**
- *Pitfall:* The dashboard opens but looks blank or broken. *Fix:* Tell the agent: "The dashboard doesn't display correctly. Check for JavaScript errors and fix them." The agent can debug its own code.
- *Pitfall:* The chart does not show up. *Fix:* Tell the agent: "The chart is not rendering. Use a simpler approach -- maybe an HTML/CSS bar chart instead of a JavaScript library."
- *Pitfall:* Data disappears when you refresh the page. *Fix:* Tell the agent: "The data is not persisting. Make sure you're using localStorage to save and load entries."
- *Pitfall:* The agent creates multiple files instead of one. *Fix:* Tell the agent: "Put everything in a single HTML file -- CSS and JavaScript should be inline."

**Success Criteria:**
- The agent created a working HTML dashboard
- You can add entries and see time savings calculated
- You successfully asked for one improvement and the agent delivered it
- You reviewed the diff and can point to what changed

> **SPEAKER NOTES:** This exercise produces a tangible artifact they will use for the rest of the course (and beyond). Pre-build a reference version to show if anyone gets stuck. The biggest "wow" is when they open the HTML file in a browser and see a working dashboard with their data. If an agent generates something that does not work, use it as a teaching moment: "This is why we review before we accept." Keep the energy high -- they just built a real tool. Transition: "The agent did great work. But what happens when it doesn't?"

---

## Section 13: Exercise 7 -- Debug & Redirect an Agent

**Duration:** 25 minutes
**Activity:** Hands-On (Copilot Agent Mode)
**Time Allocation:** Part A (vague instructions) = 10 min, Part B (catch a mistake) = 15 min

### Content

Agents make mistakes -- just like people. This exercise teaches you how to catch problems, redirect the agent, and undo when needed. The key lesson: **agents need clear instructions, just like the associates on your team.**

### Part A: What Happens with Vague Instructions (10 min)

Give the agent a deliberately vague instruction and watch what happens.

> **TYPE THIS** (in Copilot Agent Mode):
> ```
> Make it better.
> ```

**What Will Happen:**
The agent will do one of two things:
- **Ask clarifying questions** (good behavior): "What would you like me to improve? The layout, the features, or the data display?"
- **Make assumptions and change things** (common behavior): It may randomly redesign the dashboard or add features you did not ask for.

**Either way, this is the lesson:** "Make it better" is not useful feedback -- for an agent OR for a team member.

Now redirect with specific instructions:

> **TYPE THIS** (in Copilot Agent Mode):
> ```
> Stop. Undo those changes. Instead, I need you to do one specific thing: add a field to each entry where I can note which AI tool I used (Bottle Rocket, Copilot Chat, or Copilot Agent). Make it a dropdown menu with those three options.
> ```

**What to Look For:**
- The specific instruction gets a specific result
- The agent undoes the vague changes and makes exactly what you asked for
- The output matches your request because your request was clear

### Part B: Catch and Fix a Mistake (15 min)

Now give the agent a clear task, but include a constraint it might miss:

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

**Expected Issues (on purpose):**
The agent may:
- Create a page that scrolls (missed the 500px constraint)
- Use colors that do not match (ignored the dark theme specification)
- Make the cards too small to read
- Add unnecessary elements (headers, footers, navigation)

**When You See a Problem, Practice the Fix Workflow:**

1. **Identify** -- What is wrong? (e.g., "The page scrolls -- it's too tall")
2. **Tell the agent specifically:**

> **TYPE THIS** (adapt to whatever problem you see):
> ```
> The page is too tall and requires scrolling. Fix this: reduce the padding, make the cards smaller, remove the footer, and make sure everything fits within 500px height.
> ```

3. **Watch the agent fix it** -- review the new version
4. **Check the diff** -- what did the agent change?
5. **If it is still wrong,** give more specific feedback. Do not say "try again" -- say exactly what is wrong.

**If the Agent Gets It Right on the First Try:**
Challenge yourself: ask for something harder.

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

**Key Teaching Points:**
- Vague instructions = vague results. This is true for agents AND for the people on your team.
- **"Stop. I need you to..."** is the magic phrase for redirecting an agent.
- You can always undo: Ctrl+Z, or tell the agent "Revert that change."
- Specific feedback gets specific fixes. "Make it better" fails. "Reduce the padding and remove the footer" works.
- Agents learn from your corrections within the same conversation. The more specific you are, the better the agent gets.

**Common Pitfalls and Fixes:**
- *Pitfall:* The agent keeps changing things you did not ask about. *Fix:* "Only change what I asked about. Do not modify anything else."
- *Pitfall:* You cannot tell what the agent changed. *Fix:* Use the Source Control panel to see the diff. Ask the agent: "List every change you just made."
- *Pitfall:* The undo does not work. *Fix:* Ctrl+Z multiple times, or tell the agent: "Revert the file to its state before your last set of changes."
- *Pitfall:* The agent apologizes but makes the same mistake. *Fix:* Be even more specific. Include exact numbers: "Maximum height 500 pixels. Each card must be exactly 80 pixels tall."

**Success Criteria:**
- You gave a vague instruction and saw the agent struggle or make assumptions
- You redirected with a specific instruction and got a better result
- You practiced the catch-and-fix workflow at least once
- You can explain why specific instructions matter

> **SPEAKER NOTES:** This is intentionally frustrating at first. That is the point. The learning happens when they realize vague instructions cause problems and specific redirects fix them. Pair this with the Week 1 lesson about iteration. Key phrase to teach: "Stop. I need you to..." -- this is how you redirect. If an AGM says "this is just like managing my team," they have gotten the lesson. Transition to final sharing session.

---

## Section 14: Share Results + Key Takeaways + Homework

**Duration:** 20 minutes
**Activity:** Peer Discussion
**Time Allocation:** Show & tell = 12 min, takeaways = 3 min, homework = 5 min

### Content

**Show & Tell (12 min):**

Each AGM shows the most impressive thing their agent built today (2-3 minutes each):
- The time-savings dashboard from Exercise 6
- Any improvements they made
- One thing that surprised them about agents
- One thing that frustrated them

> **DO THIS:**
> Open your dashboard in the browser and walk the group through it. Show:
> 1. The entries you added
> 2. The improvement you asked for
> 3. How the agent handled your redirect in Exercise 7

**Key Takeaways (3 min):**

Five things to remember from today:

1. **CoT + Few-Shot + Persona** upgrade your prompts from good to great -- always add "step by step" for complex analysis
2. **Agents DO work, chat SUGGESTS work** -- that is the fundamental difference between Bottle Rocket and Copilot Agent Mode
3. **MCP tools give agents new skills** -- like installing apps on a phone. Playwright lets agents browse websites. More tools are coming.
4. **You stay in control** -- agents plan, you approve. You can always reject, redirect, or undo.
5. **Specific instructions = specific results** -- this is the #1 rule for agents. "Make it better" fails. "Add a totals row to the bottom of the table" works.

**Week 2 Skills Summary:**

| Skill | Practiced In |
|-------|-------------|
| Chain-of-thought prompting | Exercise 1 |
| Data analysis with structured AI output | Exercise 1 |
| Reusable template creation | Exercise 2 |
| VS Code + Copilot installation | Exercise 3 |
| Agent Mode basics (plan-approve-review) | Exercise 4 |
| MCP tool installation (Playwright) | Exercise 5 |
| Multi-step agent builds (dashboard) | Exercise 6 |
| Agent debugging and redirection | Exercise 7 |

**Homework (5 min):**

**Time Required:** ~45 minutes over the week

1. **Use Agent Mode for 1 real task at your DC this week** -- but remember: **NO Tesla data in Copilot**. Use it for something generic: a checklist template, a personal time tracker, a formatted report layout. (~15 min)

2. **Track your AI time savings daily** using the dashboard you built today. Log at least one entry per day. Target: 20-30 minutes saved per day. (~5 min/day)

3. **Explore MCP tools**: In Copilot Chat, type "What MCP tools are available?" or search the VS Code Extensions view for `@mcp`. List 3 MCP tools that would help your DC work. (~10 min)

4. **Think ahead -- your capstone project**: What process at your DC would you most want to automate or build a tool for? Write a 2-sentence description. This seeds your Week 4 final project. (~10 min)

> **TYPE THIS** (in a note or document -- save this for next week):
> ```
> My Week 4 project idea:
> Process I want to improve: [describe it]
> What the tool would do: [describe it]
> ```

**Looking Ahead -- Week 3:**
Next week goes deeper into agents and voice:
- Voice Mode for rapid dictation (3-5x faster than typing prompts)
- Advanced Agent Mode workflows (multi-file projects)
- Multi-skill agent configurations (combining MCP tools)
- Agent file access and workspace context
- Building more complex, multi-page tools

> **SPEAKER NOTES:** The show-and-tell is important -- it builds confidence and cross-pollinates ideas. If time is short, have each AGM show their dashboard in 1 minute. The homework is designed to build muscle memory with Agent Mode before Week 3 goes deeper. The "think ahead" question seeds the Week 4 personal project. End on energy: "You went from chatting with AI to commanding an AI agent -- in one afternoon. Next week, you'll teach that agent to listen to your voice and handle bigger projects."

---

## Content Citation Log

| Section | Citations from research.md | Verified |
|---------|---------------------------|----------|
| Section 2: Advanced Prompting | CoT (Wei et al.), Few-Shot (PromptHub, DigitalOcean), Persona (ExpertPrompting) | Yes |
| Section 3: Exercise 1 | CoT improvement 20-40% (Prompt Engineering Guide), Few-shot 2-5 optimal | Yes |
| Section 5: What Is an Agent? | Agent architectures (Anthropic "Building Effective Agents"), PwC adoption 79%, GitHub Copilot docs | Yes |
| Section 6: Exercise 3 | GitHub Copilot documentation, VS Code documentation | Yes |
| Section 7: Copilot Modes | GitHub Copilot documentation, VS Code Blog, 4sysops | Yes |
| Section 8: Exercise 4 | Agent Mode self-healing (VS Code Blog), approval model (GitHub Docs) | Yes |
| Section 9: MCP Tools | Anthropic MCP specification, Model Context Protocol docs, Pento adoption data | Yes |
| Section 10: Exercise 5 | VS Code MCP documentation, Playwright MCP | Yes |
| Section 11: Git Basics | Git documentation, GitBook "What Is a Diff?", GeeksforGeeks | Yes |
| Section 12: Exercise 6 | Agent Mode multi-step (GitHub Docs), self-healing behavior (VS Code Blog) | Yes |
| Section 13: Exercise 7 | Copilot approval model (GitHub Docs), redirect patterns (Anthropic) | Yes |

---

## Policy Compliance Verification

| Check | Status |
|-------|--------|
| Approved tools correctly identified | Bottle Rocket (Exercises 1-2) |
| Conditional tools noted | GitHub Copilot - NO Tesla Data (Exercises 3-7) |
| Policy reminder embedded -- occurrence 1 | Section 6: Full policy box read aloud before Copilot setup |
| Policy reminder embedded -- occurrence 2 | Section 8: Reminder before first Agent Mode exercise |
| Policy reminder embedded -- occurrence 3 | Section 10: Reminder before MCP browser exercise |
| Policy reminder embedded -- occurrence 4 | Section 12: Reminder before dashboard exercise |
| Policy reminder embedded -- occurrence 5 | Section 14: Homework reminder about no Tesla data |
| Prohibited tools not recommended | ChatGPT, Claude.ai not mentioned as alternatives |
| go.tesla.com/aitools referenced | Yes, in Section 6 |
| All Copilot exercises use non-Tesla data | Yes -- generic/fictional scenarios throughout |

---

*Content created for Week 2: Advanced Prompts & Your First Agent*
*Session length: 240 minutes | Hands-on: 81% | Concept intros: 10% | Breaks: 8%*
*Primary Tools: Bottle Rocket (go.tesla.com/chat), GitHub Copilot (VS Code), Playwright MCP*
