# Slide Plan — Week 2: Advanced Prompts & Your First Agent

**Total slides:** 79
**Source:** outputs/week-2/content.md
**Dimensions:** 960x540px (16:9)
**Theme:** Tesla dark (#0a0a0a background, #e82127 accent red, #ffffff text)

---

## Slide 01
- **Type:** title
- **Section:** --
- **Title:** Week 2: Advanced Prompts & Your First Agent
- **Subtitle:** AI Productivity Training for Tesla Operations Leaders
- **Meta:** 240 minutes | Hands-On Workshop | 81% hands-on time
- **Notes:** Opening slide. Display on screen as participants enter. Tesla logo placement top-right.

---

## Slide 02
- **Type:** content
- **Section:** --
- **Title:** Today's Agenda
- **Content:**
  - 0:00 -- Homework Review & Wins (10 min)
  - 0:10 -- Advanced Prompting: CoT, Few-Shot, Persona (5 min)
  - 0:15 -- Exercise 1: Data Analysis Sprint (30 min)
  - 0:45 -- Exercise 2: Template Speed Build (10 min)
  - 0:55 -- BREAK (10 min)
  - 1:05 -- What Is an AI Agent? (5 min)
  - 1:10 -- Exercise 3: VS Code + Copilot Setup (20 min)
  - 1:30 -- Copilot Modes: Chat vs Edit vs Agent (5 min)
  - 1:35 -- Exercise 4: Your First Agent Mode Task (25 min)
  - 2:00 -- BREAK (10 min)
  - 2:10 -- MCP: Giving Agents Skills (5 min)
  - 2:15 -- Exercise 5: Install First MCP Skill (25 min)
  - 2:40 -- Reading Agent Plans & Git Basics (5 min)
  - 2:45 -- Exercise 6: Agent Builds a Real Tool (30 min)
  - 3:15 -- Exercise 7: Debug & Redirect an Agent (25 min)
  - 3:40 -- Takeaways + Homework (20 min)
- **Notes:** Walk through the agenda quickly. Emphasize: "First hour is leveling up your prompting. After Break 1, everything changes -- we go from chatting with AI to commanding AI agents."

---

## Slide 03
- **Type:** divider
- **Section:** 1
- **Title:** Homework Review & Wins
- **Content:**
  - Duration: 10 minutes
  - Activity: Peer Sharing
- **Notes:** Keep energy high. Two minutes per AGM. Ask for best prompt, worst prompt, and time saved.

---

## Slide 04
- **Type:** content
- **Section:** 1
- **Title:** Quick Round: Share Your Wins
- **Content:**
  - What was your best prompt this week? What made it work?
  - What was your worst prompt? What went wrong?
  - How much time did you save? (Target was 15-20 min/day)
  - If you saved 30+ min/day -- tell us how
- **Notes:** Celebrate specific wins publicly. Note common challenges. If someone struggled, pair them with a successful peer. If time runs short, ask for best prompt only.

---

## Slide 05
- **Type:** divider
- **Section:** 2
- **Title:** Advanced Prompting Techniques
- **Content:**
  - Duration: 5 minutes
  - Activity: Concept Intro -- 90 seconds per technique
- **Notes:** Speed round. Show one technique per slide. Transition: "You already know the formula. These three upgrades make it dramatically better."

---

## Slide 06
- **Type:** content
- **Section:** 2
- **Title:** Three Techniques That Level Up Your Prompts
- **Content:**
  - Chain-of-Thought (CoT) -- Force step-by-step reasoning. Add "Analyze step by step." AI shows its work: calculations, logic, conclusions. 20-40% accuracy improvement.
  - Few-Shot -- Teach by example. Show 2-3 examples of the exact output format you want. AI learns your pattern and replicates it. 2-5 examples is the sweet spot.
  - Enhanced Persona -- Assign specific expertise. "You are a warehouse safety specialist with 10 years of experience." More specific role = better output.
- **Notes:** One concept per bullet. Do not teach deeply here -- they learn by doing in Exercise 1.

---

## Slide 07
- **Type:** content
- **Section:** 2
- **Title:** The Formula Upgrade
- **Content:**
  - Week 1 formula: ROLE + CONTEXT + TASK + FORMAT
  - Week 2 upgrade: ENHANCED ROLE + CONTEXT + STRUCTURED TASK (with CoT) + FORMAT (with examples)
  - The same four pieces -- just stronger versions of each
- **Notes:** Visual comparison of Week 1 vs Week 2 formula. Use a before/after layout. Transition directly to Exercise 1.

---

## Slide 08
- **Type:** divider
- **Section:** 3
- **Title:** Exercise 1: CoT + Data Analysis Sprint
- **Content:**
  - Duration: 30 minutes
  - Activity: Hands-On in Bottle Rocket
  - Part A: See the Difference (15 min) | Part B: Your Own Data (15 min)
- **Notes:** Everyone opens Bottle Rocket (go.tesla.com/chat). Walk the room during this exercise. Common issue: AGMs skip Part A -- encourage them to do it first.

---

## Slide 09
- **Type:** exercise
- **Section:** 3
- **Title:** Part A, Step 1: The Basic Prompt
- **Content:**
  - TYPE THIS in Bottle Rocket (go.tesla.com/chat):
  - "What do you see in this data?"
  - Then paste the five days of DC performance data
  - Monday: 2,400 orders, 45 associates, 2 safety incidents
  - Tuesday: 2,100 orders, 42 associates, 0 safety incidents
  - Wednesday: 2,800 orders, 48 associates, 1 safety incident
  - Thursday: 2,600 orders, 44 associates, 0 safety incidents
  - Friday: 3,100 orders, 50 associates, 3 safety incidents
- **Notes:** Expected output: a vague summary -- "orders varied throughout the week" with generic observations. Do NOT skip this step -- seeing the contrast is the learning.

---

## Slide 10
- **Type:** exercise
- **Section:** 3
- **Title:** Part A, Step 2: The CoT Prompt
- **Content:**
  - TYPE THIS in Bottle Rocket:
  - "You are a distribution center operations analyst with 10 years of experience."
  - "Analyze this week's DC performance step by step:"
  - "1. Calculate daily orders-per-associate ratio"
  - "2. Identify best and worst efficiency day"
  - "3. Look for pattern between headcount and safety incidents"
  - "4. Recommend two specific actions for next week"
  - Same data as Step 1 -- plus "Format: table for daily breakdown, then bullet points for findings"
- **Notes:** Expected output: structured table, Friday fatigue pattern identified, specific recommendations. Compare this with Step 1 -- the quality difference is the lesson.

---

## Slide 11
- **Type:** content
- **Section:** 3
- **Title:** What to Look For: Basic vs CoT
- **Content:**
  - The CoT prompt produces numbered reasoning steps, not just conclusions
  - The analysis finds correlations the basic prompt missed
  - The output format matches what you asked for
  - Key insight: "Step by step" unlocks the AI's ability to reason through data
- **Notes:** Pause here briefly. Ask: "Who saw a real difference?" Show of hands. This validates the technique before moving to Part B.

---

## Slide 12
- **Type:** exercise
- **Section:** 3
- **Title:** Part B: Your Own 6-Week Data Analysis
- **Content:**
  - TYPE THIS in Bottle Rocket:
  - "You are a senior operations analyst specializing in DC performance trends."
  - "Analyze this 6-week data step by step: 1) Identify trend for each metric 2) Find correlations 3) Flag outlier weeks 4) Provide 3 action items ranked by impact"
  - 6 weeks of data: orders rising (14,200 to 16,000), fill rate dropping (97.2% to 94.8%), overtime spiking (180 to 310 hrs), headcount declining (48 to 44), safety incidents rising (1 to 4)
  - Format: Trend summary table, detailed analysis, ranked action items
- **Notes:** The AI should identify staffing-volume mismatch as root cause. Recommendations should include specific numbers. If anyone finishes early, challenge them to add their own DC data.

---

## Slide 13
- **Type:** content
- **Section:** 3
- **Title:** Exercise 1: Success Checklist
- **Content:**
  - You see a clear quality difference between basic and CoT prompts
  - Your Part B analysis identifies at least 2 data correlations
  - Your action items include specific numbers, not vague suggestions
  - Common fix: if AI gives generic recommendations, add "Include specific numbers and timelines"
- **Notes:** Quick check before moving on. Transition: "Now let's build templates you'll use every week."

---

## Slide 14
- **Type:** divider
- **Section:** 4
- **Title:** Exercise 2: Template Speed Build
- **Content:**
  - Duration: 10 minutes
  - Activity: Hands-On in Bottle Rocket
  - 5 min build | 3 min test | 2 min save
- **Notes:** This is intentionally short. One template, done well. They already built templates in Week 1 -- this is an upgrade pass.

---

## Slide 15
- **Type:** exercise
- **Section:** 4
- **Title:** Upgrade One Template
- **Content:**
  - TYPE THIS in Bottle Rocket (adapt to your task):
  - "You are a [your role] with [X] years of experience managing [your specialty]."
  - "I need a reusable template for [your weekly task]. Build it with:"
  - "1. Use [PLACEHOLDERS] for data that changes each week"
  - "2. Include step-by-step analysis instructions (Chain-of-Thought)"
  - "3. Include one example of the expected output format"
  - "The template should produce output ready to send to [your audience] without editing."
- **Notes:** Pick your most frequent task: KPI report, shift handoff, vendor email, labor plan. If stuck, point to the labor planning template from Week 1's prompt library.

---

## Slide 16
- **Type:** content
- **Section:** 4
- **Title:** Template Success Check
- **Content:**
  - Uses at least one Week 2 technique (CoT, Few-Shot, or enhanced persona)
  - Has [PLACEHOLDERS] for variable data
  - Tested and produces work-ready output
  - Save it to your prompt library -- you will use it this week
- **Notes:** Transition to break: "Take 10 minutes. When we come back, everything changes -- we go from chatting with AI to commanding AI agents."

---

## Slide 17
- **Type:** divider
- **Section:** --
- **Title:** BREAK
- **Content:**
  - Duration: 10 minutes
  - Back at 1:05
- **Notes:** Break slide. Leave on screen during break.

---

## Slide 18
- **Type:** divider
- **Section:** 5
- **Title:** What Is an AI Agent?
- **Content:**
  - Duration: 5 minutes
  - Activity: Concept Intro
- **Notes:** This is the "aha moment" section. The key insight: agents DO work, chat SUGGESTS work. Use the new-hire analogy heavily.

---

## Slide 19
- **Type:** comparison
- **Section:** 5
- **Title:** Chat vs Agent -- The Core Difference
- **Content:**
  - Left Column (Chat / Bottle Rocket):
    - You say: "Write me a report"
    - AI does: Writes text in the chat window
    - Output: Text you copy-paste
    - Steps: One response
    - Autonomy: None -- you do everything
  - Right Column (Agent / Copilot Agent Mode):
    - You say: "Build me a reporting tool"
    - AI does: Creates files, writes code, runs commands
    - Output: Working files on your computer
    - Steps: Multiple steps, asks for your approval
    - Autonomy: High -- agent plans and executes
- **Notes:** This is the most important comparison of the day. Make it land.

---

## Slide 20
- **Type:** diagram
- **Section:** 5
- **Title:** Prompts vs AI Agents
- **Diagram:** prompts-vs-agents--slide-embed.png
- **Content:**
  - Two paths: Prompts flow (You Type -> AI Responds -> You Copy-Paste) vs Agents flow (You Describe a Goal -> Agent Plans -> Agent Executes -> Working Files)
  - The agent path has an iterate loop -- the prompt path does not
- **Notes:** Walk through both paths on the diagram. Highlight the iterate loop as the key differentiator. Source: diagram-contracts.json "prompts-vs-agents"

---

## Slide 21
- **Type:** diagram
- **Section:** 5
- **Title:** The Plan-Execute-Iterate Loop
- **Diagram:** plan-execute-iterate--slide-embed.png
- **Content:**
  - Think of delegating to a capable new hire:
  - 1. Plan -- Agent creates a step-by-step plan (new hire writes down what to do)
  - 2. Execute -- Agent carries out each step (new hire does the work)
  - 3. Check -- You review the output and give feedback (checking in on progress)
  - Loop continues until task is done
- **Notes:** The new-hire analogy resonates with every AGM. They all manage 30-50 associates and understand delegation. Source: diagram-contracts.json "plan-execute-iterate"

---

## Slide 22
- **Type:** content
- **Section:** 5
- **Title:** Why Agents Matter for Your Work
- **Content:**
  - Agents can build tools you will use daily -- dashboards, trackers, report generators
  - Agents can process data across multiple files at once
  - Agents can automate multi-step workflows that used to take hours
  - You stay in control -- agents ask before taking action
  - 79% of companies already adopting AI agents (PwC 2025)
- **Notes:** Transition: "Let's set up the tool that makes this possible."

---

## Slide 23
- **Type:** divider
- **Section:** 6
- **Title:** Exercise 3: VS Code + Copilot Setup
- **Content:**
  - Duration: 20 minutes
  - Activity: Guided Setup (Steps 1-6 = 12 min, Verify + Troubleshoot = 8 min)
- **Notes:** This is a setup exercise, not a lecture. Walk the room. Have IT support on standby for login issues. Do NOT move on until everyone has Copilot Chat working.

---

## Slide 24
- **Type:** content
- **Section:** 6
- **Title:** POLICY REMINDER -- Read This Aloud
- **Content:**
  - GitHub Copilot is CONDITIONALLY approved at Tesla
  - NO Tesla data in Copilot -- ever. No metrics, employee names, vendor details, internal processes
  - Use generic or fictional data for all Copilot exercises today
  - Bottle Rocket (go.tesla.com/chat) remains the tool for Tesla data
  - Reference: go.tesla.com/aitools
- **Notes:** Read this slide aloud before proceeding. This is a compliance requirement. Pause for questions.

---

## Slide 25
- **Type:** exercise
- **Section:** 6
- **Title:** Step 1: Download VS Code
- **Content:**
  - DO THIS:
  - 1. Open your browser
  - 2. Go to code.visualstudio.com
  - 3. Click the big blue "Download" button
  - 4. Run the installer -- accept all defaults, click "Next"
  - 5. When finished, open VS Code
  - You should see: A dark-themed editor with a "Welcome" tab
- **Notes:** Allow 3 minutes. Most laptops will auto-detect the OS. If download is slow, have USB drives with the installer ready.

---

## Slide 26
- **Type:** exercise
- **Section:** 6
- **Title:** Step 2: Install the Copilot Extension
- **Content:**
  - DO THIS:
  - 1. Find the Extensions icon in the left sidebar (four small squares) -- or press Ctrl+Shift+X
  - 2. Search for: GitHub Copilot
  - 3. Click the first result: "GitHub Copilot" by GitHub
  - 4. Click the blue "Install" button
  - 5. Wait 10-15 seconds for it to finish
  - You should see: A new Copilot icon (small robot) in the left sidebar
- **Notes:** Allow 2 minutes. If the extension does not appear, restart VS Code.

---

## Slide 27
- **Type:** exercise
- **Section:** 6
- **Title:** Step 3: Sign In with GitHub
- **Content:**
  - DO THIS:
  - 1. Click the Copilot icon in the left sidebar
  - 2. Click "Sign in to GitHub"
  - 3. Browser opens -- enter your GitHub username and password
  - 4. Click "Authorize" when asked
  - 5. Switch back to VS Code
  - You should see: Your GitHub username in the bottom-left corner
  - No GitHub account? Go to github.com and sign up with personal email
- **Notes:** Allow 3 minutes. Biggest blocker is GitHub account issues. Have backup accounts ready if possible. "Sign in" looping? Clear browser cookies or use incognito window.

---

## Slide 28
- **Type:** exercise
- **Section:** 6
- **Title:** Step 4: Select Claude Opus 4.5 Model
- **Content:**
  - DO THIS:
  - 1. Click the Copilot chat icon in the left sidebar (speech bubble)
  - 2. Find the model dropdown at the top of the chat panel
  - 3. Select "Claude Opus 4.5"
  - If you do not see Claude Opus 4.5, select Claude Sonnet 4
  - Why Claude Opus 4.5? Best model for planning and executing multi-step tasks -- exactly what Agent Mode needs
  - Uses 3 premium requests per message (you get 300/month)
- **Notes:** Allow 2 minutes. If the model dropdown is empty, update VS Code (Help > Check for Updates).

---

## Slide 29
- **Type:** exercise
- **Section:** 6
- **Title:** Step 5: Verify -- Send Your First Message
- **Content:**
  - TYPE THIS in the Copilot Chat panel:
  - "Hello! I'm an operations manager at a distribution center. Can you tell me three ways AI can help with daily shift planning?"
  - You should see: A friendly response listing three practical suggestions
  - What to check: You got a response (not an error), the response is relevant, the chat panel shows the conversation
- **Notes:** Allow 2 minutes. If someone gets an error, move to the troubleshooting slide. This is the moment of truth -- if they get a response, setup is complete.

---

## Slide 30
- **Type:** content
- **Section:** 6
- **Title:** Troubleshooting Common Issues
- **Content:**
  - "Sign in" keeps looping: Clear browser cookies, try incognito window
  - Extension not showing: Close and reopen VS Code
  - "You don't have access to Copilot": Verify GitHub subscription with facilitator
  - Chat not responding: Check internet, try a different model
  - Model dropdown empty: Update VS Code (Help > Check for Updates)
- **Notes:** Use the 8-minute buffer to help stragglers. Do NOT move on until everyone has a working Copilot Chat. Transition: "Now let me show you the three things Copilot can do."

---

## Slide 31
- **Type:** divider
- **Section:** 7
- **Title:** Copilot Modes: Chat vs Edit vs Agent
- **Content:**
  - Duration: 5 minutes
  - Activity: Concept Intro -- Three levels of help
- **Notes:** Quick demo showing all three modes. Do not dwell -- they will use Agent Mode hands-on next.

---

## Slide 32
- **Type:** diagram
- **Section:** 7
- **Title:** GitHub Copilot: Three Modes
- **Diagram:** copilot-three-modes--slide-embed.png
- **Content:**
  - Chat Mode (Ctrl+Shift+I): Ask questions, get text answers. Like Bottle Rocket.
  - Edit Mode (Select > Right-click): Point at something, ask for targeted changes. File changes directly.
  - Agent Mode (Mode dropdown > Agent): Describe a goal, agent plans and builds. Working files on your PC.
  - Autonomy increases left to right: Chat < Edit < Agent
- **Notes:** Walk through the three modes on the diagram. Source: diagram-contracts.json "copilot-three-modes"

---

## Slide 33
- **Type:** content
- **Section:** 7
- **Title:** Which Mode to Use When
- **Content:**
  - "I have a question about..." -- use Chat
  - "Change this specific thing in this file..." -- use Edit
  - "Build me a..." / "Create a..." / "Set up a..." -- use Agent
  - Rule of thumb: if the result is text, use Chat. If the result is a file, use Agent.
- **Notes:** Simple decision framework. They will internalize this through practice in the next exercises.

---

## Slide 34
- **Type:** content
- **Section:** 7
- **Title:** Keyboard Shortcuts to Remember
- **Content:**
  - Chat Mode: Ctrl+Shift+I (or click chat icon in sidebar)
  - Edit Mode: Select text > right-click > Copilot > Edit
  - Agent Mode: In Chat panel, change mode dropdown to "Agent"
  - Today we focus on Agent Mode -- the most powerful option
- **Notes:** Transition: "Let's put Agent Mode to work."

---

## Slide 35
- **Type:** divider
- **Section:** 8
- **Title:** Exercise 4: Your First Agent Mode Task
- **Content:**
  - Duration: 25 minutes
  - Activity: Hands-On with Copilot Agent Mode
  - Setup: 2 min | Run agent: 10 min | Review: 5 min | Iterate: 5 min | Discussion: 3 min
- **Notes:** This is the most important exercise of the day. Walk the room constantly. The biggest "aha" is when they see a file appear on their screen that the agent created.

---

## Slide 36
- **Type:** exercise
- **Section:** 8
- **Title:** Setup: Switch to Agent Mode
- **Content:**
  - POLICY REMINDER: Use generic data only -- no Tesla metrics, employee names, or internal processes
  - DO THIS:
  - 1. Open Copilot Chat panel (Ctrl+Shift+I)
  - 2. Click the mode dropdown at the top
  - 3. Change from "Chat" to "Agent"
  - 4. Make sure model is set to Claude Opus 4.5 (or Claude Sonnet 4)
- **Notes:** Quick setup step. Make sure everyone is in Agent Mode before moving on.

---

## Slide 37
- **Type:** exercise
- **Section:** 8
- **Title:** TYPE THIS: Your First Agent Task
- **Content:**
  - TYPE THIS in Copilot Agent Mode:
  - "Create a shift summary template for a distribution center that tracks headcount, safety incidents, and throughput for morning, afternoon, and night shifts. Make it an HTML file with a clean, professional design. Include input fields so a manager can fill it in each day."
- **Notes:** Let the agent work. Watch for: 1) Agent writes a plan, 2) Agent asks to create a file, 3) Agent writes the code, 4) Agent may ask to run a command. Approve each step.

---

## Slide 38
- **Type:** content
- **Section:** 8
- **Title:** What to Watch For
- **Content:**
  - The agent writes a plan BEFORE executing -- read it. Does it make sense?
  - The agent asks to create a file -- click "Accept" to proceed
  - The agent writes HTML and CSS -- you do NOT need to understand the code
  - The agent may ask to run a command -- if it says "open file," it is safe
  - The agent may iterate on its own -- self-healing behavior
- **Notes:** Walk the room. If someone's agent gets stuck, show them "start over" or "try a different approach."

---

## Slide 39
- **Type:** exercise
- **Section:** 8
- **Title:** Review and Iterate
- **Content:**
  - Find the file in VS Code file explorer (left sidebar)
  - Right-click the HTML file > "Open in Default Browser"
  - Check: Fields for all three shifts? Headcount, safety, throughput? Clean look?
  - Now pick one improvement to ask for:
  - "Add a section that automatically calculates total headcount and throughput across all shifts"
  - OR: "Add a notes field for each shift for supervisor comments"
  - OR: "Change the color scheme to dark background with red accents"
- **Notes:** The iteration is key -- they experience the agent modifying existing work, not just creating from scratch.

---

## Slide 40
- **Type:** content
- **Section:** 8
- **Title:** What Just Happened
- **Content:**
  - You described what you wanted in plain English
  - The agent planned, built, and delivered a working file
  - You reviewed it and asked for changes -- just like working with a team member
  - The whole process took minutes, not hours
  - Comparison: Exercise 2 took 10 minutes for a text template. The agent built an interactive tool in less time.
- **Notes:** This is the reflection moment. Let it sink in. Ask: "Who has a working file on their computer that the agent built?" Transition: "The agent just did something impressive. But it was limited to writing files. What if we could give it new abilities?"

---

## Slide 41
- **Type:** divider
- **Section:** --
- **Title:** BREAK
- **Content:**
  - Duration: 10 minutes
  - Back at 2:10
- **Notes:** Break slide. Leave on screen during break.

---

## Slide 42
- **Type:** divider
- **Section:** 9
- **Title:** MCP Tools: Giving Agents Skills
- **Content:**
  - Duration: 5 minutes
  - Activity: Concept Intro
- **Notes:** The phone analogy is the key teaching tool. Everyone understands installing apps.

---

## Slide 43
- **Type:** content
- **Section:** 9
- **Title:** The Big Idea: Agents Can Learn New Skills
- **Content:**
  - Right now, your Copilot agent can: read files, write files, run commands. That is it.
  - MCP (Model Context Protocol) gives agents new abilities
  - Think of it as installing apps on your phone
  - Each MCP tool = a new skill the agent can use
  - Created by Anthropic in November 2024, now an open industry standard
  - Over 10,000 MCP tools available and growing fast
- **Notes:** Do not explain the technical details of how MCP works -- just the concept of "giving agents new abilities by installing plug-ins."

---

## Slide 44
- **Type:** comparison
- **Section:** 9
- **Title:** The Phone Analogy
- **Content:**
  - Left Column (Your Phone):
    - Out of the box: calls, texts, camera
    - Install Google Maps: it can navigate
    - Install banking app: it can check balances
    - Install Slack: it can message your team
  - Right Column (Your AI Agent):
    - Out of the box: read files, write files, run commands
    - Install Playwright MCP: it can browse websites
    - Install Database MCP: it can query databases
    - Install API MCP: it can connect to services
- **Notes:** This comparison makes MCP immediately understandable. Each row is a parallel.

---

## Slide 45
- **Type:** diagram
- **Section:** 9
- **Title:** MCP: Giving Agents New Skills
- **Diagram:** mcp-architecture--slide-embed.png
- **Content:**
  - BEFORE MCP: Agent can only read/write files. No browser. No web data.
  - AFTER MCP: Agent connects to Playwright (browse websites), Filesystem (organize files), Memory (remember facts), Fetch (connect to services)
  - Each tool = a new skill
- **Notes:** Walk through the before/after on the diagram. The "before" side shows the limitations. The "after" side shows the possibilities. Source: diagram-contracts.json "mcp-architecture"

---

## Slide 46
- **Type:** content
- **Section:** 9
- **Title:** Before MCP vs After MCP
- **Content:**
  - Without Playwright MCP -- You: "Check the weather for Tampa FL" -- Agent: "I can't access the internet."
  - With Playwright MCP installed -- You: "Check the weather for Tampa FL" -- Agent: Opens weather.com, reads the forecast, reports back: "Tampa FL: 78 degrees, partly cloudy"
  - The same agent, the same question -- but with a new skill, it can actually do the job
- **Notes:** This before/after example makes the value concrete. They will experience this themselves in Exercise 5.

---

## Slide 47
- **Type:** content
- **Section:** 9
- **Title:** Types of MCP Skills
- **Content:**
  - Playwright: Browse any website -- pull data from public dashboards
  - Filesystem: Organize files and folders -- create folder structures
  - Memory: Remember facts between sessions -- store your DC's target KPIs
  - Fetch: Connect to web services -- pull data from APIs
  - 28% of Fortune 500 companies already use MCP
- **Notes:** Transition: "Let's install your agent's first skill."

---

## Slide 48
- **Type:** divider
- **Section:** 10
- **Title:** Exercise 5: Install & Use First MCP Skill
- **Content:**
  - Duration: 25 minutes
  - Activity: Hands-On (VS Code + MCP)
  - Install: 5 min | First task: 10 min | Compare: 5 min | Discuss: 5 min
- **Notes:** POLICY REMINDER: Visit only public websites. Do NOT navigate to Tesla internal sites. No Tesla data in Copilot.

---

## Slide 49
- **Type:** exercise
- **Section:** 10
- **Title:** Step 1: Install Playwright MCP
- **Content:**
  - DO THIS:
  - 1. Press Ctrl+Shift+P to open Command Palette
  - 2. Type: MCP: Add Server
  - 3. Choose "Command (stdio)"
  - 4. Command: npx -y @anthropic-ai/mcp-playwright
  - 5. Name: playwright
  - 6. Save to: User Settings
  - 7. Click "Allow" when asked to trust the server
- **Notes:** Pre-test this before the session. Node.js must be installed. If "npx not recognized," download from nodejs.org, install, restart VS Code.

---

## Slide 50
- **Type:** content
- **Section:** 10
- **Title:** Troubleshooting MCP Install
- **Content:**
  - "npx is not recognized": Install Node.js from nodejs.org, restart VS Code, try again
  - Server fails to start: Check internet connection, try the command again
  - No MCP option in Command Palette: Update VS Code to latest version (Help > Check for Updates). VS Code 1.99+ required.
- **Notes:** Spend up to 3 minutes on troubleshooting. If someone cannot install Playwright (Node.js issues), pair them with a neighbor to watch.

---

## Slide 51
- **Type:** exercise
- **Section:** 10
- **Title:** Step 2: Use the New Skill
- **Content:**
  - TYPE THIS in Copilot Agent Mode:
  - "Go to weather.com and tell me the current weather forecast for Tampa, Florida. Include the temperature, conditions, and the 5-day outlook."
  - What will happen: Agent asks to open a browser > click "Allow" > agent navigates to weather.com > reads the page > reports back
  - If weather.com does not work, try: "Go to time.is and tell me the time in each US time zone" or "Go to news.ycombinator.com and summarize the top 5 headlines"
- **Notes:** The "aha" moment is when the agent opens a browser and navigates on its own. Make sure everyone sees it happen.

---

## Slide 52
- **Type:** exercise
- **Section:** 10
- **Title:** Step 3: Compare Before vs After
- **Content:**
  - DO THIS:
  - 1. Switch from Agent Mode back to Chat mode (use mode dropdown)
  - 2. Type the same weather question in Chat mode
  - Expected result: Chat mode refuses ("I can't browse the internet") or gives outdated info
  - The point: MCP is what gives the agent real capabilities
  - Without MCP: limited to files on your computer. With MCP: can interact with the outside world
- **Notes:** This comparison is the teaching moment. Make sure everyone sees the difference.

---

## Slide 53
- **Type:** content
- **Section:** 10
- **Title:** What Other MCP Skills Would Help?
- **Content:**
  - A tool that reads spreadsheets and CSVs?
  - A tool that connects to a database?
  - A tool that sends formatted emails?
  - A tool that monitors a website for changes?
  - Think about what would save the most time at your DC
- **Notes:** Brief discussion. No hands-on needed. Transition: "Your agent now has a skill. Let me show you how to review what agents do."

---

## Slide 54
- **Type:** divider
- **Section:** 11
- **Title:** Reading Agent Plans & Git Basics
- **Content:**
  - Duration: 5 minutes
  - Activity: Concept Intro
- **Notes:** Intentionally surface-level. They do not need git commands -- just green = added, red = removed, and the ability to undo.

---

## Slide 55
- **Type:** content
- **Section:** 11
- **Title:** Reading an Agent's Plan
- **Content:**
  - Before an agent acts, it tells you what it plans to do. Read it like a to-do list:
  - "I will create a new file called dashboard.html"
  - "I will modify template.html to add a totals row"
  - "I will run the command open dashboard.html to preview it"
  - Your responses: "Yes, go ahead" | "Do step 1 but skip step 3" | "No, instead do X"
- **Notes:** Reinforce that they are always in control. The agent proposes, they approve.

---

## Slide 56
- **Type:** content
- **Section:** 11
- **Title:** What Is a Diff? ("Track Changes" for Code)
- **Content:**
  - When an agent modifies a file, VS Code shows exactly what changed using colors:
  - Green lines = new content that was ADDED
  - Red lines = old content that was REMOVED
  - Red + Green together = content was CHANGED (old in red, new in green)
  - Example: "- Orders processed: 2,500" (red) / "+ Orders processed: 2,800" (green) / "+ Quality rate: 99.1%" (green)
- **Notes:** Show one example diff on screen. Everyone has used Track Changes in Word -- this is the same concept.

---

## Slide 57
- **Type:** diagram
- **Section:** 11
- **Title:** The Review Workflow
- **Diagram:** agent-workflow--slide-embed.png
- **Content:**
  - 1. Agent proposes changes (shows you the plan)
  - 2. You review the diff (green = added, red = removed)
  - 3. You accept or reject
  - 4. If you reject, tell the agent what to do differently
  - Key rule: Never accept changes you do not understand. Ask: "Explain what you changed and why."
- **Notes:** Walk through the agent-workflow diagram. Highlight the "You Review" and "You Approve?" steps. Source: diagram-contracts.json "agent-workflow"

---

## Slide 58
- **Type:** content
- **Section:** 11
- **Title:** How to Undo
- **Content:**
  - Ctrl+Z -- undo the last change (works in any file)
  - Tell the agent: "Undo those changes" or "Revert that file"
  - VS Code Source Control panel: click the undo icon next to any changed file
  - Key message: You can always undo. Nothing is permanent.
- **Notes:** This builds confidence for Exercises 6 and 7 where agents do more complex work. Transition: "Now let's have the agent build something real."

---

## Slide 59
- **Type:** divider
- **Section:** 12
- **Title:** Exercise 6: Agent Builds a Real Tool
- **Content:**
  - Duration: 30 minutes
  - Activity: Hands-On with Copilot Agent Mode
  - Describe: 3 min | Agent builds: 12 min | Test: 5 min | Iterate: 5 min | Review diff: 5 min
- **Notes:** Flagship exercise of the day. The agent builds a working time-savings tracking dashboard. POLICY REMINDER: Use generic/fictional data only.

---

## Slide 60
- **Type:** exercise
- **Section:** 12
- **Title:** TYPE THIS: Build a Dashboard
- **Content:**
  - Make sure you are in Agent Mode with Claude Opus 4.5 selected.
  - TYPE THIS in Copilot Agent Mode:
  - "Build an HTML dashboard that tracks daily time savings from AI tools. Include: 1) Form to log date, task name, time without AI (min), time with AI (min) 2) Automatic calculation of time saved 3) Running weekly total 4) Bar chart showing daily savings 5) Dark background #0a0a0a with red accent #e82127 6) Save data in browser's local storage"
- **Notes:** Let the agent work for 2-3 minutes. Watch for: plan creation, file creation request, code writing, possible self-healing iterations.

---

## Slide 61
- **Type:** content
- **Section:** 12
- **Title:** What to Watch the Agent Do
- **Content:**
  - Agent creates a plan -- does it cover all 6 requirements?
  - Agent asks to create a file (like time-savings-dashboard.html) -- click "Accept"
  - Agent writes HTML, CSS, and JavaScript -- let it finish (2-3 min)
  - Agent may iterate on its own -- if it spots an error, it fixes it automatically
  - This is the "self-healing" behavior -- the agent checks its own work
- **Notes:** Walk the room. The biggest "wow" is when they open the HTML file and see a working dashboard.

---

## Slide 62
- **Type:** exercise
- **Section:** 12
- **Title:** Test It in Your Browser
- **Content:**
  - DO THIS:
  - 1. Find the HTML file in VS Code file explorer (left sidebar)
  - 2. Right-click > "Open in Default Browser"
  - 3. Test: Enter "Weekly KPI Report", without AI: 45 min, with AI: 15 min
  - 4. Click submit -- does it show "30 minutes saved"?
  - 5. Add 2-3 more entries
  - 6. Check: running total updates? Chart shows?
- **Notes:** Allow 5 minutes for testing. If the dashboard looks blank, tell the agent: "The dashboard doesn't display correctly. Check for JavaScript errors and fix them."

---

## Slide 63
- **Type:** exercise
- **Section:** 12
- **Title:** Ask for an Improvement
- **Content:**
  - TYPE THIS (pick one):
  - "Add a weekly goal of 120 minutes. Show a progress bar that fills up. When I hit the goal, show a green 'Goal Reached!' message."
  - OR: "Add a Delete button next to each entry and an Export to CSV button."
  - OR: "Add a summary section: total entries, average time saved per task, task with most savings."
- **Notes:** The iteration reinforces the plan-approve-review cycle from Section 5. They are now doing it naturally.

---

## Slide 64
- **Type:** content
- **Section:** 12
- **Title:** Review What Changed (The Diff)
- **Content:**
  - Look at the file in VS Code -- colored markers in the left margin (green = added, red = removed)
  - Click the Source Control icon in the left sidebar (branch/fork icon)
  - Click the changed file to see the full diff
  - Can you identify the new code for your requested feature?
  - Did the agent change anything you did not ask for?
- **Notes:** This is where the git basics from Section 11 become practical. They are reading their first real diff. Transition: "The agent did great work. But what happens when it doesn't?"

---

## Slide 65
- **Type:** divider
- **Section:** 13
- **Title:** When Agents Don't Deliver
- **Content:**
  - Duration: 5 minutes
  - Activity: Concept Intro (with real-world case study)
- **Notes:** Transition from Exercise 6: "The agent did great work. But what happens when it doesn't?" This section teaches the root cause analysis framework before they practice it in Exercise 7.

---

## Slide 66
- **Type:** content
- **Section:** 13
- **Title:** The Root Cause Framework
- **Content:**
  - When an agent says "Done!" but the work is wrong, follow these 5 steps:
  - 1. NOTICE -- Compare what you asked for vs what you got
  - 2. INVESTIGATE -- Look at the actual output, not just the summary
  - 3. DIAGNOSE -- Why did the agent miss? (unclear instructions? task too big? skipped steps?)
  - 4. FIX -- Give a corrected, specific instruction
  - 5. PREVENT -- Change the process: smaller batches + quality checks at each step
- **Notes:** This is the same framework used for managing people. Walk through each step slowly. The "Investigate" step is where most people fail -- they trust the status update instead of checking the work.

---

## Slide 67
- **Type:** content
- **Section:** 13
- **Title:** Real Case Study: The 75-Slide Problem
- **Content:**
  - Task: "Generate 75 slides with professional graphics and branded visuals"
  - Agent reported: "Done! 75 slides created and committed."
  - Reality: All 75 slides were plain text on black backgrounds. Zero graphics. Zero visuals.
  - Root cause: Task was too big. Agent spent all its capacity writing text and never got to the quality steps.
  - Fix: Break into batches of 5. Validate each batch visually BEFORE moving to the next.
  - Lesson: Quality inspection at each station, not end of line.
- **Notes:** This actually happened during the creation of this training. The parallel to DC operations is exact: quality checks happen at each station in the fulfillment line, not in one big batch at shipping. Ask: "Has anyone had a team member say 'done!' when the work wasn't right?"

---

## Slide 68
- **Type:** content
- **Section:** 13
- **Title:** Managing Agents = Managing People
- **Content:**
  - "Check the work, not the status update" → Check the output, not the "Done!" message
  - Break big projects into milestones with reviews → Break big tasks into small batches with validation
  - Quality inspection at each station, not end of line → Validate each piece BEFORE moving to the next
  - "Show me, don't tell me" → Open the files and verify visually
  - Give specific feedback when quality is off → Give specific instructions when redirecting
  - Coach to prevent repeat mistakes → Adjust the process AND the prompt
- **Notes:** This table is the takeaway from the concept section. If AGMs say "this is just like managing my team" -- they got it. Transition: "Now let's practice this framework."

---

## Slide 69
- **Type:** divider
- **Section:** 13b
- **Title:** Exercise 7: Debug & Redirect an Agent
- **Content:**
  - Duration: 25 minutes
  - Activity: Hands-On with Copilot Agent Mode
  - Part A: Vague Instructions (10 min) | Part B: Catch a Mistake (15 min)
- **Notes:** This exercise is intentionally frustrating at first. The learning happens when they realize vague instructions cause problems and specific redirects fix them.

---

## Slide 70
- **Type:** exercise
- **Section:** 13b
- **Title:** Part A: What Happens with Vague Instructions
- **Content:**
  - TYPE THIS in Copilot Agent Mode:
  - "Make it better."
  - What will happen: Agent either asks clarifying questions (good) or makes random assumptions and changes things (common)
  - Either way, this is the lesson: "Make it better" is not useful feedback -- for an agent OR for a team member
- **Notes:** Let them experience the frustration for 2-3 minutes before moving to the redirect step.

---

## Slide 71
- **Type:** exercise
- **Section:** 13b
- **Title:** Now Redirect with Specific Instructions
- **Content:**
  - TYPE THIS in Copilot Agent Mode:
  - "Stop. Undo those changes. Instead, I need you to do one specific thing: add a field to each entry where I can note which AI tool I used (Bottle Rocket, Copilot Chat, or Copilot Agent). Make it a dropdown menu with those three options."
  - What to look for: The specific instruction gets a specific result. The agent undoes vague changes and makes exactly what you asked for.
- **Notes:** Key phrase to teach: "Stop. I need you to..." -- this is how you redirect. Same phrase works for managing team members.

---

## Slide 72
- **Type:** content
- **Section:** 13b
- **Title:** The Lesson: Specific Beats Vague
- **Content:**
  - "Make it better" = vague result
  - "Add a dropdown with three options" = specific result
  - This is true for agents AND for the people on your team
  - Specific feedback gets specific fixes -- every time
- **Notes:** Let this sink in. Ask: "Who has given a vague instruction to a team member and gotten a vague result?" Everyone raises their hand.

---

## Slide 73
- **Type:** exercise
- **Section:** 13b
- **Title:** Part B: Catch and Fix a Mistake
- **Content:**
  - TYPE THIS in Copilot Agent Mode:
  - "Build a one-page HTML summary of a fictional DC's weekly KPIs. Data: 14,200 orders, 97.2% fill rate, 180 overtime hrs, 48 headcount, 1 safety incident, 3 complaints."
  - Requirements: Everything fits on ONE screen (max 500px height), large easy-to-read numbers, dark theme (#0a0a0a bg, #e82127 accent), each KPI in its own card
  - Watch for issues: page scrolls (missed 500px), wrong colors, cards too small, unnecessary extras
- **Notes:** The constraint (500px max height) is designed to be easy for the agent to miss. This creates a natural teaching moment.

---

## Slide 74
- **Type:** content
- **Section:** 13b
- **Title:** The Fix Workflow
- **Content:**
  - 1. Identify -- What is wrong? ("The page scrolls -- it's too tall")
  - 2. Tell the agent specifically -- "Reduce the padding, make cards smaller, remove the footer, fit within 500px"
  - 3. Watch the agent fix it -- review the new version
  - 4. Check the diff -- what did the agent change?
  - 5. If still wrong, be even more specific. Include exact numbers: "Each card must be exactly 80px tall"
- **Notes:** Practice this workflow at least once. The key lesson: do not say "try again" -- say exactly what is wrong.

---

## Slide 75
- **Type:** exercise
- **Section:** 13b
- **Title:** Challenge: Week-Over-Week Comparison
- **Content:**
  - If the agent got it right on the first try, add this challenge:
  - TYPE THIS: "Add a second row of cards showing week-over-week change. Green arrows for improvement, red arrows for decline."
  - Comparison data: Orders was 13,800 (up 2.9%), Fill rate was 96.5% (up 0.7%), Overtime was 210 (down 14.3% -- good), Headcount was 46 (up 4.3%), Safety was 2 (down 50% -- good), Complaints was 5 (down 40% -- good)
  - Still must fit on one screen without scrolling
- **Notes:** This stretch goal adds complexity. Only for AGMs who finish Part B quickly. If the agent struggles, use it as another redirect practice opportunity.

---

## Slide 76
- **Type:** divider
- **Section:** 14
- **Title:** Share Results + Key Takeaways + Homework
- **Content:**
  - Duration: 20 minutes
  - Activity: Peer Discussion
  - Show & tell: 12 min | Takeaways: 3 min | Homework: 5 min
- **Notes:** The show-and-tell builds confidence and cross-pollinates ideas. If time is short, 1 minute per AGM.

---

## Slide 77
- **Type:** takeaway
- **Section:** 14
- **Title:** Five Things to Remember from Today
- **Content:**
  - 1. CoT + Few-Shot + Persona upgrade your prompts from good to great -- always add "step by step" for complex analysis
  - 2. Agents DO work, chat SUGGESTS work -- that is the fundamental difference
  - 3. MCP tools give agents new skills -- like installing apps on a phone
  - 4. Check the output, not the count -- an agent that says "Done!" may have cut corners. Always verify the actual work.
  - 5. Specific instructions + right-sized tasks -- break big jobs into small batches with checkpoints
- **Chart:** skill-progression--chart.png
- **Notes:** Read each takeaway aloud. Pause after #5 -- it is the most important lesson.

---

## Slide 78
- **Type:** content
- **Section:** 14
- **Title:** Homework (45 min over the week)
- **Content:**
  - 1. Use Agent Mode for 1 real task (NO Tesla data in Copilot) -- checklist, time tracker, report layout (~15 min)
  - 2. Track AI time savings daily using your dashboard -- at least 1 entry/day, target 20-30 min saved/day (~5 min/day)
  - 3. Explore MCP tools: type "What MCP tools are available?" in Copilot Chat. List 3 that would help your DC work (~10 min)
  - 4. Think ahead -- capstone project: What process would you most want to automate? Write 2 sentences. (~10 min)
- **Chart:** time-savings--chart.png
- **Notes:** Homework is designed to build muscle memory with Agent Mode before Week 3.

---

## Slide 79
- **Type:** title
- **Section:** 14
- **Title:** Week 3 Preview: Voice Mode & Advanced Agents
- **Content:**
  - Voice Mode for rapid dictation (3-5x faster than typing)
  - Advanced Agent Mode workflows (multi-file projects)
  - Multi-skill agent configurations (combining MCP tools)
  - Agent file access and workspace context
  - Building more complex, multi-page tools
- **Notes:** End on energy: "You went from chatting with AI to commanding an AI agent -- in one afternoon. Next week, you'll teach that agent to listen to your voice and handle bigger projects." Closing slide.

---

## Slide Distribution Summary

| Section | Topic | Slides | Slide Numbers |
|---------|-------|--------|---------------|
| -- | Title + Agenda | 2 | 01-02 |
| 1 | Homework Review | 2 | 03-04 |
| 2 | Advanced Prompting | 3 | 05-07 |
| 3 | Exercise 1: CoT Sprint | 6 | 08-13 |
| 4 | Exercise 2: Templates | 3 | 14-16 |
| -- | Break 1 | 1 | 17 |
| 5 | What Is an Agent? | 5 | 18-22 |
| 6 | VS Code Setup | 8 | 23-30 |
| 7 | Copilot Modes | 4 | 31-34 |
| 8 | Exercise 4: Agent Mode | 6 | 35-40 |
| -- | Break 2 | 1 | 41 |
| 9 | MCP Concept | 6 | 42-47 |
| 10 | Exercise 5: MCP | 6 | 48-53 |
| 11 | Git Basics | 5 | 54-58 |
| 12 | Exercise 6: Build | 6 | 59-64 |
| 13 | Root Cause Analysis | 4 | 65-68 |
| 13b | Exercise 7: Debug | 7 | 69-75 |
| 14 | Takeaways + Homework | 4 | 76-79 |
| **TOTAL** | | **79** | |

## Available Visual Assets

### Diagrams (from diagram-contracts.json)
- `prompts-vs-agents--slide-embed.png` -- Used in Slide 20
- `plan-execute-iterate--slide-embed.png` -- Used in Slide 21
- `mcp-architecture--slide-embed.png` -- Used in Slide 45
- `copilot-three-modes--slide-embed.png` -- Used in Slide 32
- `agent-workflow--slide-embed.png` -- Used in Slide 57

### Charts (from images/)
- `time-savings--chart.png` -- Used in Slide 78
- `skill-progression--chart.png` -- Used in Slide 77

### All diagram/chart references verified against outputs/week-2/images/ directory listing.
