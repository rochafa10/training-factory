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

*See `exercises.md` Exercise 1 for full instructions, data, and troubleshooting.*

### Summary

This exercise combines chain-of-thought prompting with data analysis in two parts:

**Part A (15 min): CoT Productivity Analysis**
- AGMs receive a week of DC performance data (daily breakdown)
- First: try a simple prompt ("What do you see in this data?")
- Then: use a structured CoT prompt with numbered analysis steps
- Compare the depth and quality of both outputs

**Part B (15 min): Structured Data Analysis**
- AGMs receive 6 weeks of operations data (orders, fill rate, overtime, headcount, safety)
- Use CoT + enhanced persona to extract trends, correlations, and recommendations
- Output must include a trend summary table and specific action items

**Key Teaching Point:** The difference between "asking AI a question" and "instructing AI to analyze systematically." CoT transforms vague observations into actionable analysis.

> **SPEAKER NOTES:** Walk the room during this exercise. Common issue: AGMs will skip Part A and go straight to Part B. Encourage them to do Part A first -- seeing the quality difference is the learning moment. If anyone finishes early, challenge them to add their own DC data. Transition: "Now let's build templates you'll use every week."

---

## Section 4: Exercise 2 -- Template Speed Build

**Duration:** 10 minutes
**Activity:** Hands-On (Bottle Rocket)

*See `exercises.md` Exercise 2 for full instructions.*

### Summary

Quick exercise: build 1-2 reusable prompt templates using the advanced techniques just practiced.

**Instructions:**
1. Pick your most frequent weekly task (KPI report, shift handoff, vendor email, labor plan)
2. Build a template using ENHANCED ROLE + CoT TASK + FORMAT with examples
3. Test it with real or realistic data
4. Save it to your prompt library

**Success Criteria:**
- Template uses at least one Week 2 technique (CoT, Few-Shot, or enhanced persona)
- Template has [PLACEHOLDERS] for variable data
- Tested and produces work-ready output

> **SPEAKER NOTES:** This is intentionally short. One template, done well. They already built templates in Week 1 -- this is an upgrade pass. If someone is stuck, point them to the labor planning or KPI narrative template from the prompt library. Transition to break: "Take 10 minutes. When we come back, everything changes -- we're going from chatting with AI to commanding AI agents."

---

## BREAK (10 minutes)

---

## Section 5: What Is an AI Agent?

**Duration:** 5 minutes
**Activity:** Concept Intro

### Content

**The Big Idea:** Until now, you've been *chatting* with AI -- asking questions, getting answers. An AI agent is different. An agent can *do work* autonomously.

**Chat vs Agent:**

| | Chat (Bottle Rocket) | Agent (Copilot Agent Mode) |
|---|---|---|
| **You say** | "Write me a report" | "Build me a reporting tool" |
| **AI does** | Writes text in the chat window | Creates files, writes code, runs commands |
| **Output** | Text you copy-paste | Working files on your computer |
| **Steps** | One response | Multiple steps, asks for approval |
| **Autonomy** | None -- you do everything | High -- agent plans and executes |

**The Plan-Execute-Iterate Loop:**
1. **Plan** -- Agent reads your request and creates a step-by-step plan
2. **Execute** -- Agent carries out each step (creating files, writing code, running commands)
3. **Iterate** -- You review the output, provide feedback, agent adjusts

**Real-World Analogy:** Chat AI is like asking a colleague for advice. An agent is like delegating a task to a capable assistant who goes and does it, checking in with you at key decision points.

**Why This Matters for You:**
- Agents can build tools you'll use daily (dashboards, trackers, report generators)
- Agents can process data across multiple files
- Agents can automate multi-step workflows
- You stay in control -- agents ask before taking action

*Source: GitHub Copilot Agent Mode documentation; Anthropic Claude Code documentation -- Research Reference 4*

> **SPEAKER NOTES:** This is the "aha moment" slide. The key insight: agents DO work, chat SUGGESTS work. Use the analogy heavily -- asking for advice vs. delegating a task. Don't go deep on technical details. They'll experience it hands-on in 5 minutes. Transition: "Let's set up the tool that makes this possible."

---

## Section 6: Exercise 3 -- VS Code + Copilot Setup

**Duration:** 20 minutes
**Activity:** Guided Setup

*See `exercises.md` Exercise 3 for full step-by-step instructions and troubleshooting.*

### Summary

Guided setup with the entire group. Everyone finishes with a working VS Code + Copilot installation.

**Steps:**
1. Download and install VS Code (3 min)
2. Install GitHub Copilot extension (2 min)
3. Sign in with GitHub account (3 min)
4. Select Opus 4.5 model (2 min)
5. Verify: send first Copilot Chat message (2 min)
6. Troubleshoot any issues (8 min buffer)

**Critical Policy Reminder:**
> **GitHub Copilot is CONDITIONALLY approved. NO Tesla Data in Copilot -- ever.**
> - No Tesla metrics, employee names, vendor details, or internal processes
> - Use generic/fictional data for all Copilot exercises
> - Bottle Rocket (go.tesla.com/chat) remains the tool for Tesla data
> - Reference: go.tesla.com/aitools

> **SPEAKER NOTES:** This is a setup exercise, not a lecture. Walk the room. Have IT support on standby for login issues. The biggest blocker will be GitHub account creation/sign-in. Have backup accounts ready. Do NOT move on until everyone has Copilot Chat working. The 8-min buffer handles stragglers. Transition: "Now let me show you the three things Copilot can do."

---

## Section 7: Copilot Modes -- Chat vs Edit vs Agent

**Duration:** 5 minutes
**Activity:** Concept Intro

### Content

GitHub Copilot has three modes. Each is right for different situations.

**Chat Mode** (like Bottle Rocket)
- Ask questions, get answers
- "How do I calculate overtime cost?"
- Output: text in a chat panel
- Use when: you need information or ideas

**Edit Mode** (targeted changes)
- Highlight code/text, ask for specific changes
- "Make this table sort by date"
- Output: changes to specific files
- Use when: you know exactly what to change

**Agent Mode** (autonomous work)
- Describe a task, agent plans and executes
- "Build me a dashboard that tracks weekly KPIs"
- Output: multiple files created, code written, commands run
- Use when: you want something *built*, not just *written about*

**How to Switch Modes:**
- Chat: click the chat icon in the sidebar (or Ctrl+Shift+I)
- Edit: select text, right-click, "Copilot > Edit"
- Agent: in Chat panel, select "Agent" from the mode dropdown at the top

**Model Selection:**
- Select **Claude Opus 4.5** for best results (premium model, 300 requests/month)
- Available in the model dropdown within the Chat panel

*Source: GitHub Copilot documentation -- Research Reference 5*

> **SPEAKER NOTES:** Quick demo showing all three modes. Don't dwell -- they'll use Agent Mode hands-on next. The key point: Chat is what they know, Agent is what they're about to learn. Edit is for later. Transition: "Let's put Agent Mode to work."

---

## Section 8: Exercise 4 -- Your First Agent Mode Task

**Duration:** 25 minutes
**Activity:** Hands-On (Copilot Agent Mode)

*See `exercises.md` Exercise 4 for full instructions and troubleshooting.*

### Summary

First hands-on experience with Agent Mode. The agent creates something real.

**The Task:** Ask the agent to create a shift summary template.

**What AGMs Will Experience:**
1. Type a task description in Agent Mode
2. Watch the agent create a plan
3. Read the plan before approving
4. Watch the agent create files step by step
5. Review the finished output
6. Iterate: ask the agent to improve something

**Key Teaching Points:**
- Agents show you their plan BEFORE executing -- you're always in control
- You can approve or reject each step
- The output is real files on your computer, not just chat text
- Iteration works just like Bottle Rocket -- "make the header bigger" or "add a section for safety"

**Comparison Moment:** "You spent 25 minutes building templates in Bottle Rocket (Exercise 2). The agent just built a more complex template in 5 minutes. That's the power of agents."

> **SPEAKER NOTES:** This is the most important exercise of the day. Walk the room constantly. Common issues: (1) Agent asks to run terminal commands -- guide AGMs to approve "safe" commands like creating files. (2) Agent creates code they don't understand -- reassure them they don't need to read code, just review the output. (3) Someone's agent gets stuck -- show them how to type "start over" or "try a different approach." The "aha" is when they see a file appear on their screen that the agent created. Transition: "The agent just did something impressive. But it was limited to writing files. What if we could give it new abilities?"

---

## BREAK (10 minutes)

---

## Section 9: MCP Tools -- Giving Agents Skills

**Duration:** 5 minutes
**Activity:** Concept Intro

### Content

**The Big Idea:** Right now, your Copilot agent can read files, write files, and run commands. That's it. MCP tools give it new abilities -- like installing apps on your phone.

**What is MCP?**
- MCP stands for **Model Context Protocol**
- It's a standard way to give AI agents new skills
- Think of it as a plug-in system: each MCP tool adds a new capability
- Created by Anthropic, now an open standard used across the industry

*Source: Anthropic MCP documentation -- Research Reference 6*

**The Phone Analogy:**

| Phone | AI Agent |
|-------|----------|
| Out of the box: calls, texts, camera | Out of the box: read files, write files, run commands |
| Install Maps app: can navigate | Install Playwright MCP: can browse websites |
| Install banking app: can transfer money | Install Database MCP: can query databases |
| Install Slack: can message teams | Install API MCP: can connect to services |

**MCP Tools Available:**

| MCP Tool | What It Does | Example Use |
|----------|-------------|-------------|
| **Playwright** | Browse websites, fill forms, extract data | Check a public dashboard, pull data from a website |
| **Filesystem** | Read/write files in a directory | Organize reports, process CSV data |
| **Memory** | Remember facts across sessions | Store DC conventions, remember KPIs |
| **Fetch** | Call web APIs | Pull data from external services |

**Before vs After:**

Without MCP:
> "Check the weather forecast for our DC locations" --> Agent: "I can't access the internet."

With Playwright MCP:
> "Check the weather forecast for our DC locations" --> Agent opens weather site, reads forecast, creates a summary.

*Source: Model Context Protocol specification, Anthropic -- Research Reference 6*

> **SPEAKER NOTES:** The phone analogy is the key teaching tool. Everyone understands installing apps. The before/after example makes it concrete. Don't explain the technical details of MCP -- just the concept of "giving agents new abilities." They'll install one themselves next. Transition: "Let's install your agent's first skill."

---

## Section 10: Exercise 5 -- Install & Use First MCP Skill

**Duration:** 25 minutes
**Activity:** Hands-On (VS Code + MCP)

*See `exercises.md` Exercise 5 for full step-by-step instructions and troubleshooting.*

### Summary

AGMs install the Playwright MCP tool and watch their agent gain browser automation capabilities.

**The Experience:**
1. Install Playwright MCP in VS Code (5 min guided)
2. Give agent a task it couldn't do before: "Go to [public website] and get [information]" (10 min)
3. Watch the agent navigate a real website, extract data, and report back
4. Compare: try the same task WITHOUT the MCP tool (5 min)
5. Discuss: what other skills would help your DC work? (5 min)

**Key Teaching Points:**
- MCP tools are easy to install -- one configuration step
- Each tool gives the agent a genuinely new capability
- You can mix multiple tools (Playwright + Filesystem = browse + save)
- The agent asks for permission before using new skills

> **SPEAKER NOTES:** Pre-test the public website URL before the session to make sure it works. A good choice: a public logistics or weather site. The "aha" moment is when the agent opens a browser and navigates on its own. Common issue: Playwright installation may require npm -- have instructions ready. If someone can't install, pair them with a neighbor to watch. Transition: "Your agent now has a skill. Let me show you how to review what agents do."

---

## Section 11: Reading Agent Plans & Git Basics

**Duration:** 5 minutes
**Activity:** Concept Intro

### Content

**Why This Matters:** Agents can create and modify many files at once. You need to know what they changed before you accept it.

**Reading Agent Plans:**
- Before executing, agents show you what they plan to do
- Read the plan like a to-do list: "I will create file X, then modify file Y, then run command Z"
- You can say: "Yes, go ahead" or "No, change your approach" or "Do step 1 but skip step 3"

**What Is Git? (30-second version)**
- Git tracks changes to files -- like "Track Changes" in Word, but for everything
- When an agent modifies files, git shows you exactly what changed
- Green = added, Red = removed
- You can undo any change the agent made

**Reading a Diff (What Changed):**
```
- Old text that was removed (shown in red)
+ New text that was added (shown in green)
```

**The Approval Workflow:**
1. Agent proposes changes
2. You review the diff (what changed)
3. You accept (keep changes) or reject (undo changes)
4. If rejected, tell the agent what to do differently

**Key Rule:** Never accept changes you don't understand. Ask the agent to explain what it did and why.

*Source: Git documentation, GitHub Copilot documentation -- Research Reference 7*

> **SPEAKER NOTES:** This is intentionally surface-level. They don't need to learn git commands -- just the concept of reviewing changes. Show one example diff on screen. The key message: "You can always undo." This builds confidence for the next two exercises where agents will do more complex work. Transition: "Now let's have the agent build something real."

---

## Section 12: Exercise 6 -- Agent Builds a Real Tool

**Duration:** 30 minutes
**Activity:** Hands-On (Copilot Agent Mode)

*See `exercises.md` Exercise 6 for full instructions and troubleshooting.*

### Summary

The flagship exercise of the day. The agent builds a time-savings tracking dashboard -- a real HTML page that AGMs can actually use going forward.

**The Task:**
Ask the agent to build a simple HTML dashboard that:
- Has a form to enter: Task name, time without AI, time with AI
- Calculates time saved automatically
- Shows a running total of weekly savings
- Uses Tesla branding (red accent, clean design)

**What AGMs Will Experience:**
1. Describe the tool to the agent in plain English (3 min)
2. Watch the agent create a plan (review and approve) (2 min)
3. Agent creates HTML, CSS, and JavaScript files (10 min)
4. Open the dashboard in a browser and test it (5 min)
5. Ask the agent to improve it: "Add a weekly goal of 30 minutes" (5 min)
6. Review what the agent changed (git diff concept) (5 min)

**Key Teaching Points:**
- You described what you wanted in English. The agent built it.
- Multi-step: plan, create files, write code, test -- all autonomous
- Iteration: you can refine just like with Bottle Rocket
- The result is a working tool you keep and use

> **SPEAKER NOTES:** This exercise produces a tangible artifact they'll use for the rest of the course. Pre-build a reference version to show if anyone gets stuck. The biggest "wow" is when they open the HTML file in a browser and see a working dashboard. If an agent generates something that doesn't work, use it as a teaching moment: "This is why we review before we accept." Transition: "The agent did great work. But what happens when it doesn't?"

---

## Section 13: Exercise 7 -- Debug & Redirect an Agent

**Duration:** 25 minutes
**Activity:** Hands-On (Copilot Agent Mode)

*See `exercises.md` Exercise 7 for full instructions and troubleshooting.*

### Summary

Agents make mistakes. This exercise teaches AGMs how to handle it.

**Part A (10 min): Deliberately Vague Instructions**
Give the agent a task with intentionally vague instructions:
> "Make me a tool for my DC"

Watch what happens:
- Agent will ask clarifying questions (good behavior)
- Or agent will make assumptions and build something generic (common behavior)
- Review the output: is this what you wanted? Probably not.

Then redirect:
> "Stop. I need a tool that specifically tracks daily headcount by shift. It should have fields for each shift (Day, Swing, Night) and calculate total vs. target."

Watch how the agent adjusts.

**Part B (15 min): Catch and Fix a Mistake**
Give the agent a clear task but with a constraint it might miss:
> "Build an HTML page that shows our DC's KPIs. Use these numbers: [provide data]. Make sure the page fits on one screen without scrolling."

The agent may:
- Create a page that scrolls (missed the constraint)
- Use wrong colors (didn't know Tesla palette)
- Include unnecessary complexity

Practice the fix workflow:
1. Identify what's wrong
2. Tell the agent specifically: "The page scrolls -- reduce the font size and remove the footer"
3. Watch the agent fix it
4. Review the diff: what changed?

**Key Teaching Points:**
- Vague instructions = vague results (same as Bottle Rocket, but higher stakes)
- You can always redirect: "Stop. Instead, do X"
- You can always undo: "Revert those changes"
- Specific feedback gets specific fixes
- Agents learn from your corrections within the same session

> **SPEAKER NOTES:** This is intentionally frustrating at first. That's the point. The learning happens when they realize vague instructions cause problems and specific redirects fix them. Pair this with the Week 1 lesson about iteration. Key phrase to teach: "Stop. I need you to..." -- this is how you redirect. Transition to final sharing session.

---

## Section 14: Share Results + Key Takeaways + Homework

**Duration:** 20 minutes
**Activity:** Peer Discussion

### Content

**Show & Tell (12 min):**
Each AGM shows the most impressive thing their agent built today:
- The time-savings dashboard from Exercise 6
- Any improvements they made
- One thing that surprised them about agents

**Key Takeaways (3 min):**

1. **CoT + Few-Shot + Persona** upgrade your prompts from good to great
2. **Agents DO work, chat SUGGESTS work** -- that's the fundamental difference
3. **MCP tools give agents new skills** -- like installing apps on a phone
4. **You stay in control** -- agents plan, you approve
5. **Specific instructions = specific results** -- same rule as prompting, higher stakes with agents

**Week 2 Skills Summary:**

| Skill | Practiced In |
|-------|-------------|
| Chain-of-thought prompting | Exercise 1 |
| Data analysis with AI | Exercise 1 |
| Template creation | Exercise 2 |
| VS Code + Copilot setup | Exercise 3 |
| Agent Mode basics | Exercise 4 |
| MCP tool installation | Exercise 5 |
| Multi-step agent builds | Exercise 6 |
| Agent debugging | Exercise 7 |

**Homework (5 min):**

**Time Required:** ~45 minutes

1. **Use Agent Mode for 2 tasks** (non-Tesla data): create a report template, build a simple calculator, or generate a formatted checklist (~20 min)
2. **Track time savings daily** using your new dashboard (target: 20-30 min/day) (~5 min/day)
3. **Explore MCP tools**: research what other MCP skills exist. List 3 that would help your DC work (~10 min)
4. **Think ahead**: what project would you automate if you could? Write a 2-sentence description (~10 min)

**Looking Ahead -- Week 3:**
Next week goes deeper into agents:
- Voice Mode for rapid dictation (3-5x faster than typing)
- Advanced Agent Mode workflows
- Multi-skill agent configurations
- Agent file access and workspace context
- Building more complex tools

> **SPEAKER NOTES:** The show-and-tell is important -- it builds confidence and cross-pollinates ideas. If time is short, have each AGM show their dashboard in 1 minute. The homework is designed to build muscle memory with Agent Mode before Week 3 goes deeper. The "think ahead" question seeds the Week 4 personal project. End on energy: "You went from chatting with AI to commanding an AI agent -- in one afternoon."

---

## Content Citation Log

| Section | Citations from research.md | Verified |
|---------|---------------------------|----------|
| Section 2: Advanced Prompting | CoT (Wei et al.), Few-Shot (PromptHub, DigitalOcean), Persona (ExpertPrompting) | Yes |
| Section 3: Exercise 1 | CoT improvement 20-40% (Prompt Engineering Guide), Few-shot 2-5 optimal | Yes |
| Section 5: What Is an Agent? | Agent architectures (GitHub Copilot docs, Anthropic docs) | Yes |
| Section 7: Copilot Modes | GitHub Copilot documentation | Yes |
| Section 9: MCP Tools | Anthropic MCP specification, Model Context Protocol docs | Yes |
| Section 11: Git Basics | Git documentation, GitHub Copilot documentation | Yes |

---

## Policy Compliance Verification

| Check | Status |
|-------|--------|
| Approved tools correctly identified | Bottle Rocket (Exercises 1-2) |
| Conditional tools noted | GitHub Copilot - NO Tesla Data (Exercises 3-7) |
| Policy reminder embedded | In Exercise 3 setup, repeated before each Copilot exercise |
| Prohibited tools not recommended | ChatGPT, Claude.ai not mentioned as alternatives |
| go.tesla.com/aitools referenced | Yes, in Exercise 3 |
| Agent exercises use non-Tesla data | Yes, all Copilot exercises use generic/fictional data |

---

*Content created for Week 2: Advanced Prompts & Your First Agent*
*Session length: 240 minutes | Hands-on: 81% | Concept intros: 10% | Breaks: 8%*
*Primary Tools: Bottle Rocket (go.tesla.com/chat), GitHub Copilot (VS Code), Playwright MCP*
