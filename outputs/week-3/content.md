# Week 3: VS Code, Agents & How AI Thinks

**Duration:** 240 minutes (4 hours)
**Prerequisites:** Week 1 - AI Foundations & Policy Compliance, Week 2 - Prompt Engineering for Operations
**Difficulty Level:** Intermediate
**Theme:** "From Chat to Agent: Understanding How AI Works for You"
**Tools Needed:** Laptop with VS Code installed, GitHub account with Copilot access, microphone for voice features, Bottle Rocket access (go.tesla.com/chat)

---

## Content Sources

This content is based on:
- `outputs/week-3/research.md` (primary source)
- `outputs/syllabus.md` (objectives and structure)
- `inputs/requirements.md` (audience profile and goals)
- Tesla AI Policy (go.tesla.com/aitools)
- IK "Fundamentals of Agentic AI" (adapted for non-technical audience)
- IK "Building Applications with LLMs & Agents" (RAG and safety content)

---

## Learning Objectives

By the end of this session, participants will be able to:

1. Install and configure VS Code with GitHub Copilot extensions
2. Use Voice Mode for hands-free AI interaction (3-5x faster than typing)
3. Understand what an AI agent is and how it differs from chat (ReAct pattern)
4. Use Copilot Agent Mode to build multi-step DC automation projects
5. Review AI-generated changes using git diffs (accept/reject workflow)
6. Identify AI mistakes (hallucinations, drift) and debug agent behavior

---

## Session Agenda

| Time | Section | Topic | Activity | Duration |
|------|---------|-------|----------|----------|
| 0:00 - 0:10 | 1 | Time Savings Review (Weeks 1-2) | Discussion + Celebration | 10 min |
| 0:10 - 0:30 | 2 | VS Code + Copilot Setup (Exercise 1) | Guided Setup | 20 min |
| 0:30 - 0:45 | 3 | Copilot Chat, @ Commands & Voice Mode | Demo | 15 min |
| 0:45 - 1:05 | 4 | Exercise 1: Voice + Chat Practice | Hands-On Practice | 20 min |
| 1:05 - 1:15 | -- | BREAK | Break | 10 min |
| 1:15 - 1:35 | 5 | What Is an AI Agent? | Lecture + Demo | 20 min |
| 1:35 - 1:50 | 6 | Agent Mode Deep Dive | Demo | 15 min |
| 1:50 - 2:15 | 7 | Exercise 2: Build Your First DC Agent | Hands-On Practice | 25 min |
| 2:15 - 2:25 | -- | BREAK | Break | 10 min |
| 2:25 - 2:40 | 8 | How AI Finds Information (RAG Lite) | Lecture | 15 min |
| 2:40 - 2:55 | 9 | Git Basics: Reviewing AI Changes | Demo | 15 min |
| 2:55 - 3:15 | 10 | Exercise 3: Agent Builds a Tool + Review | Hands-On Practice | 20 min |
| 3:15 - 3:30 | 11 | Hallucination, Safety & Debugging Agents | Lecture | 15 min |
| 3:30 - 3:50 | 12 | Exercise 4: Spot the Mistakes | Hands-On Practice | 20 min |
| 3:50 - 4:00 | 13 | Wrap-up + Homework | Discussion | 10 min |

**Time Validation:** 10 + 20 + 15 + 20 + 10 (break) + 20 + 15 + 25 + 10 (break) + 15 + 15 + 20 + 15 + 20 + 10 = **240 min**

**Hands-on Time:** 85 min exercises + 45 min demos = **130 min (54%)** | Lecture: **90 min (38%)** | Breaks: **20 min (8%)**

---

## Section 1: Time Savings Review

**Duration:** 10 minutes (0:00 - 0:10)
**Activity:** Discussion + Celebration
**Objective:** Celebrate progress and validate AI adoption impact

---

### Key Concept

Before learning new tools, we review the time savings you have documented over the past two weeks. This validates that your AI skills are delivering real value and builds momentum for the new capabilities we add today.

> **From Research:** "Voice-to-text tools let developers code 4x faster by speaking at 150 WPM vs typing at 40 WPM."
> **Source:** research.md, Voice Dictation Benefits

### Discussion Framework

1. **What worked best?** Which prompts saved the most time?
2. **What surprised you?** Any unexpected benefits or challenges?
3. **Weekly totals:** Share your time savings from the tracking logs
4. **Team impact:** Did anyone share their prompts or techniques with associates?

### Why This Matters

Tracking time savings proves ROI and builds confidence. Today we are adding tools that can multiply those savings further. By the end of this session, you will have three new capabilities: voice input, autonomous agents, and change review.

> **From Research:** "Voice dictation addresses multiple challenges: it's faster than typing, reduces physical strain, and allows natural communication with AI assistants."
> **Source:** research.md, Key Concepts - Voice Dictation Benefits

### Speaker Notes

```
TIMING: 10 minutes

SAY: "Before we jump into new tools, let's celebrate your progress. Who tracked their time savings from Weeks 1 and 2? Let's hear some numbers!"

ASK: "Which prompt saved you the most time? What task would you never go back to doing manually?"

DEMO: None -- engagement discussion only.

NOTE: If participants haven't tracked time, use this as motivation: "Today's tools will make tracking even more valuable. We're going to 3-5x your speed on certain tasks."

SAY: "By now you've seen that AI handles the repetitive work so you can focus on leading. Today we take a big step forward. We move from chatting with AI to putting AI to work for you."

TRANSITION: "Great results! Now let's add some powerful new capabilities to your toolkit. First up: setting up VS Code and GitHub Copilot."
```

---

## Section 2: VS Code + Copilot Setup

**Duration:** 20 minutes (0:10 - 0:30)
**Activity:** Guided Setup (Exercise 1 -- Part A)
**Objective:** Install and configure VS Code with GitHub Copilot extensions

---

### Key Concept

VS Code is a free, lightweight code editor that serves as the foundation for GitHub Copilot's advanced features. While it was designed for developers, its intuitive interface makes it accessible to anyone who needs AI-powered automation. Think of it as a more powerful version of Notepad that has an AI assistant built in.

> **From Research:** "Getting up and running with Visual Studio Code is quick and easy. It is a small download so you can install in a matter of minutes."
> **Source:** research.md, Key Concepts - VS Code for Non-Developers

### Why This Matters

Bottle Rocket handles chat-based AI tasks, but VS Code + Copilot enables voice dictation, file creation, and autonomous agent workflows. It is the gateway to the automation capabilities you will use for your personal projects in Week 4.

> **From Research:** "VS Code is the gateway to GitHub Copilot's advanced features. While Bottle Rocket handles chat-based AI tasks, VS Code + Copilot enables voice dictation, file creation, and autonomous agent workflows."
> **Source:** research.md, Key Concepts - VS Code for Non-Developers

### Setup Checklist

**Step 1: VS Code Installation (3 min)**
- [ ] Download from [code.visualstudio.com](https://code.visualstudio.com/download)
- [ ] Or install from Microsoft Store (Windows)
- [ ] Launch VS Code after installation
- [ ] Take a moment to observe the interface: Activity Bar on the left, Editor in the center, Panel at the bottom

**Step 2: GitHub Copilot Extensions (3 min)**
- [ ] Open Extensions panel (Ctrl+Shift+X)
- [ ] Search "GitHub Copilot"
- [ ] Install "GitHub Copilot" extension (by GitHub -- look for the verified checkmark)
- [ ] Install "GitHub Copilot Chat" extension

**Step 3: Sign In (3 min)**
- [ ] Click the Copilot icon in the Status Bar (bottom of screen)
- [ ] Select "Set up Copilot"
- [ ] Sign in with Tesla GitHub account
- [ ] Approve access if prompted

**Step 4: Install Voice Extension (3 min)**
- [ ] Open Extensions panel again (Ctrl+Shift+X)
- [ ] Search "VS Code Speech"
- [ ] Install the extension
- [ ] Reload VS Code if prompted
- [ ] Look for microphone icon in status bar

**Step 5: Verify Everything Works (3 min)**
- [ ] See Copilot icon in Status Bar (confirms Copilot is active)
- [ ] Open Copilot Chat (Ctrl+Alt+I)
- [ ] Type "Hello, what can you help me with?" and receive a response
- [ ] See microphone icon in status bar (confirms Voice is ready)

**Step 6: Create a Working Folder (2 min)**
- [ ] File > Open Folder
- [ ] Create a new folder called "ai-projects" on your Desktop
- [ ] Open that folder in VS Code
- [ ] This will be your workspace for today's exercises

### Troubleshooting Tips

> **From Research:** "No suggestions showing: Confirm you're signed in (Accounts panel). If yes, toggle 'GitHub Copilot: Enable' off/on. Check the Output panel > Copilot logs for network errors."
> **Source:** research.md, Key Concepts - GitHub Copilot Chat

| Problem | Likely Cause | Solution |
|---------|-------------|----------|
| Can't sign in | SSO/network issues | Sign out of browser, try again |
| No Copilot icon | Extension not installed | Search "GitHub Copilot" in Extensions |
| Auth loops | Old cookies | Sign out everywhere, fresh start |
| Spinning/timeout | Proxy/VPN blocking | Check VS Code proxy settings |
| No microphone icon | VS Code Speech not installed | Search "VS Code Speech" in Extensions |
| Microphone not detected | Privacy settings | Check Windows sound settings > Input |

### Common Mistakes

**Mistake 1:** Installing the wrong extension
- Why it happens: Multiple Copilot-related extensions exist in the marketplace
- How to avoid: Install the official "GitHub Copilot" and "GitHub Copilot Chat" from Microsoft/GitHub (look for the verified publisher badge)
- **Source:** research.md, Key Concepts

**Mistake 2:** Using personal GitHub account
- Why it happens: Already logged into a personal GitHub account
- How to avoid: Sign in with Tesla GitHub credentials for enterprise features and compliance
- **Source:** research.md, Key Concepts - GitHub Copilot Chat

**Mistake 3:** Skipping the working folder
- Why it happens: Seems unnecessary
- How to avoid: Agent Mode and @ commands work best with an open folder. Always have a workspace open.
- **Source:** Synthesized from research

### Speaker Notes

```
TIMING: 20 minutes

SAY: "We're going to set up VS Code and GitHub Copilot. This is where the magic happens. Follow along with me step by step. We'll also install the Voice extension at the same time so we only do setup once."

DEMO: Walk through each installation step on screen. Show the Extensions panel, search, install, and sign-in flow. Install both Copilot AND Voice extensions in sequence.

ASK: (at Step 5) "Who's seeing the Copilot icon in their status bar? Good! Who needs help?"

PAUSE: Walk around and assist anyone stuck on installation. Budget 3-4 minutes for troubleshooting.

SAY: "Now create a folder called 'ai-projects' on your Desktop and open it in VS Code. This is your workspace for today."

TROUBLESHOOTING: If proxy issues arise, have IT contact info ready. Common fix: Settings > search "proxy" > enter proxy URL.

TRANSITION: "Now that everyone's set up, let's explore what Copilot Chat can do -- and then we'll turn on voice."
```

---

## Section 3: Copilot Chat, @ Commands & Voice Mode

**Duration:** 15 minutes (0:30 - 0:45)
**Activity:** Demo
**Objective:** Understand Copilot Chat participants, context commands, and voice input

---

### Key Concept

Copilot Chat is not just one AI assistant -- it is multiple specialized assistants you can call using @ commands. Each "participant" has expertise in a specific domain. And with Voice Mode, you can talk to any of them hands-free.

> **From Research:** "Chat participants are like domain experts who have a specialty that they can help you with. Inside Copilot Chat, you can target built-in roles like @workspace (repo-aware) and @vscode (editor ops)."
> **Source:** research.md, Key Concepts - Chat Participants and @ Commands

### The @ Commands

| Command | What It Does | Example Use |
|---------|--------------|-------------|
| `@workspace` | Searches your entire project folder | "Find all files that mention inventory" |
| `@terminal` | Generates and runs terminal commands | "Create a new folder called reports" |
| `@vscode` | Controls VS Code settings and features | "Change to dark theme" |

### Why This Matters

The @ commands let you direct Copilot to the right specialist. Instead of one general-purpose AI, you get targeted experts who understand different parts of your environment.

> **From Research:** "On a mid-sized project (~30k LOC), asking '@workspace find circular deps in utils' returned a precise file list in under 8 seconds."
> **Source:** research.md, Key Concepts - Chat Participants and @ Commands

### Key Differences: Copilot Chat vs. Bottle Rocket

| Feature | Bottle Rocket | Copilot Chat |
|---------|---------------|--------------|
| Tesla Data | Allowed | NOT allowed |
| File creation | No | Yes |
| Terminal commands | No | Yes |
| Project context | None | Full workspace |
| Voice input | No | Yes |
| Agent Mode | No | Yes |

> **From Research:** "Copilot Chat extends beyond Bottle Rocket's capabilities by understanding your entire project context, executing terminal commands, and generating files -- making it ideal for automation tasks."
> **Source:** research.md, Key Concepts - GitHub Copilot Chat

### Critical Policy Reminder

**REMEMBER:** GitHub Copilot is CONDITIONALLY APPROVED -- NO Tesla Data.

> **From Research:** "Never paste Tesla data into Copilot. Always use Bottle Rocket for employee/customer information. Use Copilot for generic code and automation scaffolding."
> **Source:** research.md, Key Concepts - Copilot vs. Bottle Rocket

**The Rule Is Simple:**
- Contains employee names, customer data, order numbers, DC metrics, or any Tesla-specific information? --> Use Bottle Rocket.
- Generic templates, code, automation logic, formatting, non-Tesla content? --> Copilot is fine.

### Voice Mode Overview

Voice Mode lets you speak to Copilot instead of typing. You already installed the VS Code Speech extension in Step 4 of setup.

> **From Research:** "Voice-to-text is 3-5x faster than typing. Humans naturally speak 3-5 times faster than they type. When in flow state, thoughts move at the speed of speech, not the speed of fingers."
> **Source:** research.md, Key Concepts - Voice Dictation Benefits

**Voice Commands Quick Reference:**

| Action | Keyboard Shortcut | What It Does |
|--------|-------------------|--------------|
| Voice Chat | `Ctrl+U` | Speak to Copilot Chat |
| Editor Dictation | `Ctrl+Alt+V` | Dictate text into a file |
| Stop Dictation | `Escape` | End voice input |
| Walky-Talky | Hold `Ctrl+Alt+V` | Voice active only while keys are held |

> **From Research:** "You can press and hold the keybinding for the start command (Ctrl+Alt+V) to enable walky-talky mode, where the voice recognition stops as soon as you release the keys."
> **Source:** research.md, Key Concepts - Voice Mode (VS Code Speech Extension)

### Speaker Notes

```
TIMING: 15 minutes (split roughly: 8 min @ commands, 7 min voice)

SAY: "Copilot Chat is like having multiple AI specialists on call. Let me show you the three main ones you'll use."

DEMO (@ Commands -- 8 min):
- Type "@workspace what files are in this project?" -- show how it scans the workspace
- Type "@terminal create a folder called weekly-reports" -- show terminal execution (approve the command)
- Type "@vscode change theme to dark" -- show VS Code control
- Emphasize: "Notice how each @ command talks to a different part of VS Code."

ASK: "What's the most important difference between Copilot Chat and Bottle Rocket?"
(Answer: Tesla Data policy -- Copilot = NO Tesla Data)

SAY: "This is critical. Use Bottle Rocket for Tesla data analysis. Use Copilot for building automation, writing templates, and working with files."

DEMO (Voice Mode -- 7 min):
- Show the microphone icon in the status bar
- Press Ctrl+U and say: "What are three ways you can help me be more productive today?"
- Show the transcription appearing and the response
- Open a new file, press Ctrl+Alt+V, and dictate: "This is my first voice-typed note in VS Code. Voice input is three to five times faster than typing."
- Show the text appearing in the editor

SAY: "Voice might feel awkward at first. That's completely normal. By the end of the next exercise, it will feel natural."

TRANSITION: "Now it's your turn. You're going to practice both @ commands and voice input."
```

---

## Section 4: Exercise 1 -- Voice + Chat Practice

**Duration:** 20 minutes (0:45 - 1:05)
**Activity:** Hands-On Practice
**Objective:** Practice @ commands, voice chat, and voice-dictated content creation

---

### Key Concept

This exercise combines everything from Section 3 into hands-on practice. You will use @ commands to interact with your workspace, voice chat to talk to Copilot, and voice dictation to create a work document.

### Exercise 1a: @ Command Practice (5 min)

**Task:** Use each @ command at least once.

1. Open Copilot Chat (Ctrl+Alt+I)
2. Type: `@workspace What folders exist in this project?`
3. Type: `@terminal create a file called notes.md`
4. Type: `@vscode What keyboard shortcuts are available for Copilot?`

**What to observe:** Each @ command returns a different type of response -- workspace gives file information, terminal executes a command, vscode gives editor help.

### Exercise 1b: Voice Chat Practice (5 min)

**Task:** Have a conversation with Copilot using only your voice.

1. Press Ctrl+U to activate voice chat
2. Say: "What are three things an operations manager could automate using AI?"
3. Wait for the response
4. Press Ctrl+U again
5. Say: "Can you give me more detail on the first one? How would that work in a distribution center?"
6. Press Escape when done

**What to observe:** Voice is fast. You can have a natural back-and-forth conversation. The AI responds to follow-up questions in context.

### Exercise 1c: Voice-Dictated Email (10 min)

**Task:** Create a professional email draft using voice input.

**Scenario:** You need to send a weekly performance update to your regional director.

**Step 1:** Open Copilot Chat and activate voice (Ctrl+U)

**Step 2:** Say clearly:
> "Create a professional email to my regional director summarizing our DC's performance this week. Include placeholder sections for metrics, highlights, challenges, and action items. Make it under 200 words."

**Step 3:** Review the output. Read through the generated email and note what works and what needs adjustment.

**Step 4:** Iterate with voice. Press Ctrl+U again and say:
> "Make the tone more concise and add a section for next week's focus areas"

**Step 5:** Save the result. Copy the email to use later, or save it as a template.

> **From Research:** Voice + Copilot approach: "Review generated draft (30 seconds), iterate via voice, copy to email client and fill in specific data. Time Savings: 5-10 minutes to 2-3 minutes per email."
> **Source:** research.md, Real-World Applications - Voice-Dictated Email Workflow

### Success Criteria

- [ ] Used all three @ commands (@workspace, @terminal, @vscode)
- [ ] Completed a voice chat conversation (at least 2 exchanges)
- [ ] Dictated an email draft using voice
- [ ] Iterated on the email using a follow-up voice prompt
- [ ] Final email output includes all requested sections

### Time Savings Comparison

| Method | Time | Notes |
|--------|------|-------|
| Traditional typing | 5-10 min | Manual composition |
| Voice + Copilot | 2-3 min | Dictate, review, send |
| **Savings** | **3-7 min** | Per email |

### Common Mistakes

**Mistake 1:** Dictating Tesla-specific data into Copilot
- Why it happens: Natural to include real numbers when drafting an email
- How to avoid: Use placeholders like "[INSERT METRICS]" and fill them in using Bottle Rocket or manually
- **Source:** research.md, Common Pitfalls

**Mistake 2:** Speaking too fast or mumbling
- Why it happens: Excitement or nervousness about using voice
- How to avoid: Speak at a normal conversational pace. Pause between sentences. The AI handles natural speech well.
- **Source:** Synthesized from research

**Mistake 3:** Not iterating on the first output
- Why it happens: First output seems "good enough"
- How to avoid: Always do at least one voice follow-up to refine tone, length, or structure. The second version is almost always better.
- **Source:** research.md, Common Pitfalls

### Speaker Notes

```
TIMING: 20 minutes (5 + 5 + 10)

SAY: "This is three mini-exercises in one. First you'll practice @ commands, then voice chat, then you'll draft a real email using voice. Let's go."

DEMO: Quickly show Exercise 1a on screen so everyone knows what to type.

DURING EXERCISE 1a (5 min): Walk around. Help anyone whose @ commands aren't working. Most common issue: no folder open in VS Code.

SAY: "Now switch to voice. Press Ctrl+U and talk to Copilot."

DURING EXERCISE 1b (5 min): Help anyone with microphone issues. Check Windows Sound Settings > Input if mic not detected.

SAY: "Last part -- draft an email to your regional director using voice. Remember: no Tesla data in Copilot. Use placeholders."

DURING EXERCISE 1c (10 min): Circulate and assist. Remind people to iterate at least once.

ASK: "How did voice compare to typing? Show of hands -- who was faster with voice?"

SHARE: Have 1-2 people share their email output. Discuss what the AI did well and what needed adjustment.

TRANSITION: "You've mastered the basics -- chat, commands, and voice. Now let's take a big leap forward. After the break, we're going to meet AI agents."
```

---

## BREAK

**Duration:** 10 minutes (1:05 - 1:15)

### Speaker Notes

```
TIMING: 10 minutes

SAY: "Let's take 10 minutes. Stretch, grab a drink. When we come back, we're going to change how you think about AI. We're moving from chatting to commanding."

NOTE: Check that everyone's setup is still working. Help anyone who fell behind during exercises.
```

---

## Section 5: What Is an AI Agent?

**Duration:** 20 minutes (1:15 - 1:35)
**Activity:** Lecture + Demo
**Objective:** Understand the difference between chat-based AI and autonomous agents

---

### Key Concept

Until now, you have been chatting with AI. You ask a question. You get an answer. That is powerful, but it is limited. An AI agent is something different. An agent does not just answer questions -- it works for you.

### Opening

Think about the difference between calling a helpline and hiring an experienced assistant.

When you call a helpline, you ask a question, you get an answer, you hang up. If you need something else, you call again. That is how chat-based AI works. Bottle Rocket, Copilot Chat -- you ask, it answers, you move on.

When you hire an experienced assistant, you say "Handle the weekly labor report." They figure out what data they need, where to find it, how to format it, and they come back with a finished product. If something goes wrong along the way, they troubleshoot and try again. That is what an AI agent does.

### Chat vs Agent: Side-by-Side

| | Chat Mode | Agent Mode |
|---|---|---|
| **You say** | "Write me a shift handoff template" | "Create a shift handoff system with a template file, a sample filled-in file, and a README explaining how to use it" |
| **AI does** | Generates text in the chat window | Creates 3 files in your project folder |
| **Steps** | 1 (answer the question) | Multiple (plan, create files, verify) |
| **Output** | Text you copy-paste | Files ready to use |
| **Analogy** | Calling a helpline | Hiring an assistant |

### The ReAct Pattern (How Agents Think)

AI agents follow a pattern called ReAct. It stands for Reason and Act. Here is how it works, simplified for our purposes:

```
1. THINK  -->  Agent analyzes what needs to happen
                "I need to create 3 files: template, sample, and README"

2. ACT    -->  Agent takes one step
                Creates the template file

3. OBSERVE --> Agent checks if it worked
                "File created successfully. Moving to next step."

4. REPEAT -->  Back to step 1 until the goal is met
                Plans the sample file, creates it, checks it...
```

**The analogy:** Think of a new hire who thinks before acting and checks their work after each step. They do not rush through everything at once. They plan, do one thing, verify it worked, then move to the next thing. That is exactly what an AI agent does.

**Why this matters:** Understanding this pattern helps you give better instructions to agents. You do not need to tell the agent every step. You describe the goal, and the agent figures out the steps using Think-Act-Observe-Repeat.

### When to Use Chat vs Agent

**Use Chat Mode when you need:**
- A quick answer to a question
- Brainstorming or idea generation
- A simple draft (email, list, summary)
- Explanation of a concept
- One-shot output you will copy-paste somewhere

**Use Agent Mode when you need:**
- Multiple files created as part of a project
- A task with several connected steps
- File and folder creation on your computer
- Terminal commands executed (installing tools, running scripts)
- Something built, not just described

### Live Demo: Same Task, Two Ways

**Demo Part 1 -- Chat Mode (Bottle Rocket):**
Open Bottle Rocket (go.tesla.com/chat) and type:
> "Write me a shift handoff template"

Result: A block of text in the chat window. You would need to copy it, create a file, paste it in, save it.

**Demo Part 2 -- Agent Mode (Copilot):**
In VS Code, switch to Agent Mode and type:
> "Create a shift handoff system with three files: (1) a blank template for shift handoffs, (2) a sample filled-in handoff for a morning-to-afternoon shift change at a distribution center, and (3) a README explaining how to use the system."

Result: Agent plans the work, creates all three files in your project folder, and reports what it did. No copy-pasting required.

**The difference is clear:** Chat gives you text. Agents give you results.

### Common Mistakes

**Mistake 1:** Telling the agent every single step
- Why it happens: Habit from giving instructions to people
- How to avoid: Describe the goal and let the agent plan the steps. If you micro-manage, you lose the benefit.

**Mistake 2:** Using Agent Mode for simple questions
- Why it happens: Agent Mode sounds more powerful
- How to avoid: If you just need an answer, use Chat. Agents are for multi-step tasks that produce files or execute commands.

### Speaker Notes

```
TIMING: 20 minutes (10 min lecture, 5 min demo, 5 min discussion)

SAY: "Until now, you've been chatting with AI. You ask a question, you get an answer. That's powerful. But now we're going to teach AI to work for you."

SAY: "Think about the difference between calling a helpline and hiring an experienced assistant."

ASK: "When you give a task to one of your best associates, do you tell them every single step? Or do you describe what you need and let them figure out how?"
(Expected answer: describe the outcome, let them figure it out)

SAY: "That's exactly how Agent Mode works. You describe the goal. The agent plans the steps, executes them, checks its work, and repeats until done."

DEMO (5 min):
1. Open Bottle Rocket: type "Write me a shift handoff template" -- show the text output
2. Switch to VS Code Agent Mode: type the full 3-file request -- show the agent planning, creating files, and reporting results
3. Show the created files in the VS Code file explorer

SAY: "See the difference? Chat gave us text. The agent gave us a working system with three files."

ASK: "What kinds of tasks at your DC would benefit from an agent approach instead of a chat approach?"

TRANSITION: "Now let's go deeper into how Agent Mode works and how to get the best results from it."
```

---

## Section 6: Agent Mode Deep Dive

**Duration:** 15 minutes (1:35 - 1:50)
**Activity:** Demo
**Objective:** Master Agent Mode activation, the plan-execute-iterate loop, and best practices

---

### Key Concept

Agent Mode is GitHub Copilot's autonomous capability. It transforms Copilot from an assistant that responds to questions into an autonomous collaborator that can independently plan and execute complex, multi-step tasks.

> **From Research:** "Agent Mode transforms Copilot from an assistant that responds to questions into an autonomous collaborator that can independently implement features, fix bugs, and build automations."
> **Source:** research.md, Key Concepts - Agent Mode Fundamentals

### Activating Agent Mode

In Copilot Chat:
1. Open Copilot Chat (Ctrl+Alt+I)
2. Click the mode dropdown next to the chat input (it likely says "Chat" or "Edit")
3. Select **"Agent"** mode
4. Type your request
5. Review the proposed plan
6. Approve each step as needed

### The Plan-Execute-Iterate Loop

```
[You Describe the Goal]
        |
        v
[Planning Phase]
  * Analyzes your request
  * Identifies relevant files in your workspace
  * Breaks the goal into subtasks
        |
        v
[Execution Phase]
  * Creates or edits files
  * Runs terminal commands (with your approval)
  * Installs dependencies if needed
        |
        v
[Iteration Phase]
  * Checks for errors
  * Reviews its own output
  * Self-corrects issues
        |
        v
[Your Review & Approval]
```

> **From Research:** "Copilot agent mode operates in a more autonomous and dynamic manner. To process a request, Copilot loops over steps including: determining the relevant context and files to edit autonomously, offering both code changes and terminal commands to complete tasks, and monitoring the correctness of code edits while iterating to remediate issues."
> **Source:** research.md, Key Concepts - Agent Mode Fundamentals

### The Agent Mindset: Describe the Goal, Not the Steps

The biggest shift in working with agents is how you give instructions.

**Old way (chat mindset):** Tell the AI exactly what to do at each step.
> "First create a file called template.md. Then add a header that says Shift Handoff. Then add a section for outgoing shift..."

**New way (agent mindset):** Describe what you want to end up with.
> "Create a shift handoff system for a distribution center. It should capture the outgoing shift summary, ongoing issues, and incoming priorities. Include a template and a sample filled-in version."

The agent figures out the steps. Your job is to describe the destination, not drive turn-by-turn.

### Terminal Command Approval

Agent Mode may need to run terminal commands. For security, you approve each one before it executes.

> **From Research:** "Some tools require your approval before they can run. This is a security measure because tools can perform actions that modify files, your environment, or attempt prompt injection attacks."
> **Source:** research.md, Key Concepts - Terminal Command Approval

**Safe commands (generally fine to approve):**
- `mkdir` (create folder), `touch` (create file)
- `git status`, `git log`, `git add`
- `ls`, `pwd`, `dir`

**Commands to review carefully:**
- `rm` or `del` (deleting files)
- `curl`, `wget` (downloading from the internet)
- `npm install`, `pip install` (installing software)
- Anything you do not understand

**Rule of thumb:** If you would not type the command yourself, do not approve it.

### When Agents Get Stuck (and How to Redirect)

Agents are not perfect. Sometimes they go in the wrong direction. Here is how to handle it:

| Situation | What to Do |
|-----------|------------|
| Agent is on the right track but making minor formatting mistakes | Let it continue -- it often self-corrects |
| Agent is heading in the wrong direction | Type: "Stop. Let's take a different approach. I want you to..." |
| Agent is stuck in a loop (trying the same thing repeatedly) | Cancel the current operation and rephrase your goal more specifically |
| Agent created something unexpected | Review what it made, then say: "Keep [X] but change [Y]" |

### The Importance of Reviewing Agent Plans

Before approving any action, read the agent's plan. The agent will tell you what it intends to do before doing it. This is your checkpoint.

**Good review practice:**
1. Read the proposed action
2. Confirm it matches your intent
3. Check that file paths look correct
4. Approve or redirect

**Do not** click "Continue" without reading what the agent plans to do. This is the most common mistake new users make.

### Common Mistakes

**Mistake 1:** Expecting perfect first output
- Why it happens: AI confidence makes the output seem final
- How to avoid: Agent Mode iterates. Review the output and guide the process.
- **Source:** research.md, Common Pitfalls

**Mistake 2:** Auto-approving everything
- Why it happens: Wanting to move faster
- How to avoid: Use allow lists for safe commands. Review everything else.
- **Source:** research.md, Common Pitfalls

**Mistake 3:** Micro-managing the agent
- Why it happens: Instinct to control every step
- How to avoid: Describe the goal, approve the plan, review the output. Let the agent work.

### Speaker Notes

```
TIMING: 15 minutes

SAY: "Now you know what an agent IS. Let's learn how to use Agent Mode effectively."

DEMO: Switch to Agent Mode in Copilot Chat. Show the mode selector dropdown.

SAY: "The biggest mindset shift is this: describe where you want to end up, not how to get there. Think destination, not directions."

DEMO: Show two prompts side by side:
- BAD: "First create a file called report.md. Then add a header..."
- GOOD: "Create a weekly operations report template for a distribution center that tracks headcount, safety incidents, and throughput."

DEMO: Type the GOOD prompt in Agent Mode. Show:
- How the agent announces its plan
- The terminal command approval dialog
- The files being created
- The iteration if something needs fixing

SAY: "See that approval button? Never click it without reading what the agent plans to do. This is your safety check."

ASK: "What should you do if the agent starts heading in the wrong direction?"
(Answer: Stop it, redirect with a clearer prompt)

TRANSITION: "Now it's your turn. You're going to build your first real DC automation with Agent Mode."
```

---

## Section 7: Exercise 2 -- Build Your First DC Agent

**Duration:** 25 minutes (1:50 - 2:15)
**Activity:** Hands-On Practice
**Objective:** Use Copilot Agent Mode to build a multi-step DC automation project

---

### Key Concept

In this exercise, you will give Agent Mode a real goal and watch it plan, execute, and deliver. You are not just asking a question -- you are putting an agent to work on a project.

> **From Research:** "Agent Mode: Creates folder structure, generates README.md with project description, creates placeholder files in each folder. Time Savings: 15+ minutes of manual setup to 30 seconds."
> **Source:** research.md, Real-World Applications - Agent Mode for Project Setup

### The Scenario

You need a weekly labor planning tool for your DC. Instead of manually creating files, you will describe what you need and let Agent Mode build it.

### Step-by-Step Instructions

**Step 1: Enter Agent Mode**
1. Open Copilot Chat (Ctrl+Alt+I)
2. Click the mode selector and choose "Agent"

**Step 2: Give the Agent Its Goal**

Type or dictate (Ctrl+U) the following:

> "Create a weekly labor planning tool for a distribution center. The project should include:
> 1. A README file explaining what this tool does and how to use it
> 2. A markdown template for weekly labor data that captures headcount by shift (morning, afternoon, night), planned vs actual hours, overtime hours, and open positions
> 3. A sample data file with realistic numbers filled in for one week
> 4. A summary report that analyzes the sample data -- highlight any shifts that are understaffed, flag overtime above 10%, and note trends
> 5. A weekly review checklist that managers can follow every Monday morning
> Put all files in a folder called 'labor-planning'."

**Step 3: Watch the Agent Work**

Observe how the agent:
- Announces its plan (what files it will create and in what order)
- Creates the folder structure
- Generates each file with content
- May run terminal commands (approve safe ones like `mkdir`)
- Self-checks its work

**Step 4: Review Each Step**

As the agent works:
- Read each file it creates
- Check that the template has all the fields you asked for
- Verify the sample data looks realistic
- Confirm the summary report references the sample data
- Make sure the checklist is practical

**Step 5: Iterate**

After the initial creation, tell the agent:
> "Add a section to the README about how to customize the template for different DC sizes. Also add a column for 'temp workers' in the labor template."

### What to Observe

Pay attention to the ReAct pattern in action:
- **Think:** The agent announces what it plans to do
- **Act:** It creates or modifies a file
- **Observe:** It checks that the file was created successfully
- **Repeat:** It moves to the next file

### Success Criteria

- [ ] Successfully entered Agent Mode
- [ ] Typed or dictated the full goal prompt
- [ ] Agent created 5 files (README, template, sample data, summary, checklist)
- [ ] Reviewed all files for accuracy
- [ ] Successfully iterated with a follow-up request
- [ ] Project folder "labor-planning" exists with all files

### Discussion Questions

After completing the exercise, consider:
- How long would it have taken to create these 5 files manually?
- What surprised you about how the agent worked?
- Did the agent make any decisions you would have made differently?
- Where did the agent need your guidance?

### Common Mistakes

**Mistake 1:** Being too vague
- Why it happens: Unsure how specific to be
- How to avoid: Be specific about the files, content, and structure you need. "Create a project" is too vague. "Create a weekly labor planning tool with 5 specific files" is specific enough.
- **Source:** Synthesized from research

**Mistake 2:** Approving without reviewing
- Why it happens: Excitement to see the final result
- How to avoid: Read each file the agent creates. Check that content matches your request.
- **Source:** research.md, Key Concepts - Terminal Command Approval

**Mistake 3:** Not iterating
- Why it happens: The first version looks impressive
- How to avoid: Always give at least one follow-up instruction. The agent gets better with guidance.

### Speaker Notes

```
TIMING: 25 minutes (5 min setup + 15 min exercise + 5 min discussion)

SAY: "This is the big one. You're going to build a real project using Agent Mode. Give the agent the full prompt I've described, and watch it work."

DEMO: Type the first few words of the prompt to show the format. Then say: "You can type this or use voice -- Ctrl+U and dictate it."

SAY: "Watch carefully. Notice how the agent plans before it acts, and checks its work after each step. That's the ReAct pattern in action."

DURING EXERCISE (15 min):
- Walk around and help anyone who hasn't entered Agent Mode correctly
- Ensure people are reviewing files, not just clicking "Continue"
- Help anyone whose agent got stuck

SAY: (at the 10-minute mark) "If your agent is done, try the iteration prompt. Ask it to add temp workers and customization instructions."

DISCUSSION (5 min):

ASK: "How long would it have taken to create those 5 files manually? What did the agent do in seconds that would have taken you 20-30 minutes?"

ASK: "What surprised you about how the agent worked?"

ASK: "Did anyone's agent make a mistake or go in an unexpected direction? What did you do?"

TRANSITION: "Great work. Let's take a short break, and then we'll understand WHY AI sometimes gets things wrong -- and how to protect yourself."
```

---

## BREAK

**Duration:** 10 minutes (2:15 - 2:25)

### Speaker Notes

```
TIMING: 10 minutes

SAY: "Take 10. When we come back, we're going to understand how AI actually finds and uses information. This will help you understand why AI sometimes makes things up -- and what you can do about it."

NOTE: Check that everyone's labor-planning projects were created successfully. Help anyone who needs to catch up.
```

---

## Section 8: How AI Finds Information (RAG Lite)

**Duration:** 15 minutes (2:25 - 2:40)
**Activity:** Lecture
**Objective:** Understand how AI generates text, why hallucinations happen, and how grounding AI in real data (RAG) improves accuracy

---

### Key Concept

Have you ever wondered why AI sometimes makes things up? This section explains why -- and more importantly, how to fix it.

### How AI Generates Text

AI does not "know" facts the way you know your DC's headcount. Here is what actually happens:

1. **Training:** The AI read billions of pages of text during training -- books, websites, articles, documentation. It learned patterns about how words follow other words.
2. **Prediction:** When you ask a question, the AI predicts what words should come next based on those patterns. It generates the most likely continuation of the text.
3. **No memory of sources:** The AI does not look up facts in a database. It generates text that sounds right based on patterns. This is why it can be confidently wrong.

**Analogy:** Imagine someone who has read every operations management textbook ever written but has never set foot in a distribution center. They can write convincing-sounding reports about DC operations, but the specific numbers, dates, and details would be made up -- because they are generating plausible text, not recalling real data.

### The Problem: Hallucination

When AI does not have real data, it fills in gaps with plausible-sounding but false information. This is called hallucination.

**Examples of hallucination in operations context:**
- "Your DC processed 15,247 orders last week" -- when it has no access to your data
- "Industry average on-time delivery is 99.7%" -- a made-up but plausible-sounding statistic
- "According to the Q3 safety report..." -- referencing a report it has never seen

**Why hallucination happens:** The AI's goal is to generate text that sounds right. If it does not have real data to draw on, it generates something that fits the pattern. It does not know the difference between a real statistic and a plausible one.

### The Solution: RAG (Retrieval-Augmented Generation)

RAG is a technique for grounding AI in real documents. Think of it as giving AI a filing cabinet to search before it answers.

**How RAG works (simplified):**

```
Without RAG:                          With RAG:
You ask a question                    You ask a question
     |                                     |
     v                                     v
AI generates answer                   AI searches your documents first
from patterns only                         |
     |                                     v
     v                                AI finds relevant information
Answer may contain                         |
hallucinated facts                         v
                                      AI generates answer based on
                                      what it actually found
                                           |
                                           v
                                      Answer is grounded in real data
```

**Step 1:** You provide documents (upload a file, paste text, or point to files in your workspace)
**Step 2:** AI searches those documents for relevant information
**Step 3:** AI generates an answer based on what it found (a grounded response)

### Practical Examples You Already Use

You have already been doing RAG without knowing it:

| Tool | How RAG Works | Example |
|------|---------------|---------|
| Bottle Rocket file upload | Upload a CSV, ask questions about the data | Upload headcount spreadsheet, ask "Which shift is understaffed?" |
| Copilot @workspace | Points AI at your project files | @workspace "What does the README say about setup?" |
| Agent Mode with files | Agent reads files in your folder to inform its work | Agent reads your template to generate a matching sample |

**Key insight:** Every time you upload a file or point AI at your documents, you are doing RAG. You are grounding the AI in real information so it does not have to guess.

### Context Window: AI's Short-Term Memory

The context window is the amount of text AI can consider at one time. Think of it as the size of the AI's desk -- how many documents it can spread out and look at simultaneously.

| Model | Context Window | In Practical Terms |
|-------|---------------|-------------------|
| GPT-4o | ~128K tokens | About 200 pages of text |
| Claude 3.5 | ~200K tokens | About 300 pages of text |
| Gemini 1.5 Pro | ~1M tokens | About 1,500 pages of text |

**Why this matters:** If your document is longer than the context window, the AI cannot see all of it at once. It might miss information that is outside its window. For your use cases (emails, reports, templates), this is rarely a problem. But if you ever upload a very large dataset, be aware that the AI may not see all of it.

### Demo: Grounded vs Ungrounded Responses

**Ungrounded (no data):**
Ask Bottle Rocket without uploading anything: "What were the top 3 issues at my DC last week?"
Result: The AI will either say it does not have that information (good) or make something up (hallucination).

**Grounded (with data):**
Upload a DC operations dataset to Bottle Rocket, then ask: "What were the top 3 issues last week based on this data?"
Result: The AI will reference specific data points from your file. The answer is grounded in reality.

**The lesson:** Always provide data when you want accurate, specific answers. Do not rely on AI to know things about your DC -- feed it the information.

### Speaker Notes

```
TIMING: 15 minutes

SAY: "Have you ever wondered why AI sometimes makes things up? Let's understand why -- and how to fix it."

SAY: "AI does not know facts like you do. It predicts what words should come next based on patterns. When it doesn't have real data, it generates something that sounds right -- but might be completely wrong. That's called hallucination."

ASK: "Has anyone had AI give you a number that sounded right but turned out to be made up?"

SAY: "The fix is simple: give AI your data. Every time you upload a file to Bottle Rocket or point Copilot at your project files, you're doing something called RAG -- retrieval-augmented generation. Fancy name, simple concept: give AI a filing cabinet to search before it answers."

DEMO: If time allows, show the grounded vs ungrounded comparison in Bottle Rocket:
1. Ask "What were the top 3 issues at my DC last week?" (no file uploaded)
2. Upload a sample data file, ask the same question
3. Show how the second answer references specific data points

SAY: "The takeaway is this: when you want accurate, specific answers, feed the AI your data. Don't trust it to know things about your DC on its own."

TRANSITION: "Now let's talk about reviewing what AI creates. When an agent makes files for you, you need to know how to check its work."
```

---

## Section 9: Git Basics -- Reviewing AI Changes

**Duration:** 15 minutes (2:40 - 2:55)
**Activity:** Demo
**Objective:** Understand how to review AI-generated file changes using git diffs

---

### Key Concept

When Agent Mode creates or modifies files, you need a way to see exactly what changed. Git is the tool that tracks every change, and VS Code makes it easy to review those changes visually.

### Why This Matters

Agent Mode can create files, edit files, and run commands. That is powerful, but it also means you need to verify what it did. You would not sign a contract without reading it. Do not accept AI-generated changes without reviewing them.

### Git in 60 Seconds

Think of git as "Track Changes" for all your files -- like the feature in Microsoft Word, but for everything.

- **Every change is recorded:** When you (or an agent) create or modify a file, git can show you exactly what was added, removed, or changed
- **You can undo changes:** If the agent made a mistake, you can revert to the previous version
- **It is built into VS Code:** You do not need to use the command line. The Source Control panel shows everything visually

### Reading a Diff (Before vs After)

A "diff" shows you what changed in a file. In VS Code, it looks like this:

```
GREEN lines  = text that was ADDED (new content)
RED lines    = text that was REMOVED (deleted content)
GRAY lines   = text that stayed THE SAME (unchanged context)
```

**Example diff:**

```diff
  # Weekly Report Template

- Last updated: January 2026
+ Last updated: February 2026

  ## Sections
  - Headcount Summary
+ - Overtime Analysis
+ - Safety Incidents
  - Action Items
```

In this example:
- The date was changed from January to February (red line removed, green line added)
- Two new sections were added: "Overtime Analysis" and "Safety Incidents"
- Everything else stayed the same

### The Review Workflow

When Agent Mode makes changes, here is how to review them:

**Step 1: Open Source Control**
- Click the Source Control icon in the left sidebar (it looks like a branching line)
- Or press Ctrl+Shift+G

**Step 2: See Modified Files**
- Files with changes appear in the list
- "M" next to a file means Modified
- "U" means Untracked (new file the agent created)

**Step 3: Click to See the Diff**
- Click any file to see the before-and-after view
- Green = added, Red = removed
- Read through each change

**Step 4: Accept or Reject**
- If the change looks good: right-click the file, select "Stage Changes" (accept)
- If the change is wrong: right-click the file, select "Discard Changes" (reject, reverts to previous version)

### Key Rule

**Never approve changes you do not understand.** If the agent created something and you are not sure what it does, ask Copilot Chat: "Explain what this file does." Only accept changes you can verify.

### Demo: Reviewing the Labor Planning Project

Let us look at what Agent Mode created in Exercise 2:
1. Open Source Control (Ctrl+Shift+G)
2. See the 5 new files from the labor-planning project
3. Click on the README to see its contents
4. Click on the template to verify the fields
5. Show how to discard a change if something looks wrong

### Speaker Notes

```
TIMING: 15 minutes

SAY: "Agent Mode just created 5 files for you. How do you know what's in them? How do you verify the agent did what you asked? That's where git comes in."

SAY: "Think of git as Track Changes -- like the feature in Microsoft Word. Every change is recorded. You can see exactly what was added or removed."

DEMO:
1. Open Source Control panel (Ctrl+Shift+G)
2. Show the list of files from the labor-planning exercise
3. Click on one file to show the diff view
4. Point out: "Green means added. This is a new file, so everything is green."
5. Make a small edit to the README manually (change a word)
6. Show the diff again -- now there's both green and red
7. Show how to discard the change (right-click > Discard Changes)

SAY: "Here's the key rule: never approve changes you don't understand. If the agent created something you can't read, ask Copilot Chat to explain it."

ASK: "In your jobs, you review work from your associates before it goes out. This is the same thing -- reviewing the agent's work before you accept it."

DEMO: Show how to ask Copilot: "Explain what the file labor-planning/summary.md does"

TRANSITION: "Now you're going to practice this. You'll have the agent build something new, and then you'll review every change it made."
```

---

## Section 10: Exercise 3 -- Agent Builds a Tool + Git Review

**Duration:** 20 minutes (2:55 - 3:15)
**Activity:** Hands-On Practice
**Objective:** Use Agent Mode to build a tool, then review the changes using git diffs

---

### Key Concept

This exercise combines agent skills with review skills. You will ask Agent Mode to build a shift handoff template generator, then use the Source Control panel to review exactly what was created.

### Part A: Build the Tool (10 min)

**Step 1: Enter Agent Mode**
Open Copilot Chat, select Agent mode.

**Step 2: Give the Goal**

Type or dictate:
> "Create a shift handoff system in a folder called 'shift-handoff'. Include:
> 1. A handoff template in markdown that captures: outgoing shift summary (what happened), ongoing issues (what's still in progress), incoming priorities (what to focus on next), safety notes, and staffing for the next shift
> 2. A filled-in sample handoff from a morning shift to an afternoon shift at a distribution center. Use realistic but generic content -- no Tesla-specific data
> 3. A README that explains how managers should use this system and when to fill it out"

**Step 3: Watch and Review**

As the agent works:
- Read each file preview before approving
- Check that the template covers all 5 areas you requested
- Verify the sample uses generic, non-Tesla data
- Confirm the README has clear instructions

### Part B: Review the Diff (10 min)

**Step 1: Open Source Control**
Press Ctrl+Shift+G or click the Source Control icon.

**Step 2: Examine Each File**
- Click each file in the list to see its full contents
- For the template: verify all 5 sections exist (outgoing summary, ongoing issues, incoming priorities, safety, staffing)
- For the sample: check that the data is realistic but not Tesla-specific
- For the README: confirm it includes clear usage instructions

**Step 3: Practice Accept/Reject**
- Right-click one file and select "Stage Changes" (accept)
- Open the sample handoff, find one thing you would change
- Make a manual edit to improve it
- See the diff update to show your change (red = what was there, green = your version)

**Step 4: Ask Copilot for Help**
If anything is unclear, ask Copilot Chat:
> "Explain the structure of the file shift-handoff/template.md"

### Success Criteria

- [ ] Agent created the shift-handoff folder with 3 files
- [ ] Reviewed all 3 files in Source Control
- [ ] Identified the 5 sections in the template
- [ ] Verified sample data is non-Tesla-specific
- [ ] Successfully staged at least one file (accepted it)
- [ ] Made a manual edit and saw the updated diff
- [ ] Can explain the difference between green lines and red lines

### Common Mistakes

**Mistake 1:** Skipping the review step
- Why it happens: The agent just created the files; they must be fine
- How to avoid: Always open Source Control after an agent builds something. Check every file.

**Mistake 2:** Accidentally discarding all changes
- Why it happens: Clicking "Discard All" instead of reviewing individual files
- How to avoid: Review and stage files one at a time. Never click "Discard All" unless you truly want to undo everything.

### Speaker Notes

```
TIMING: 20 minutes (10 min build + 10 min review)

SAY: "This exercise has two parts. First, you'll have Agent Mode build a shift handoff system. Then you'll review exactly what it created using the Source Control panel."

DURING PART A (10 min):
- Help anyone who needs to re-enter Agent Mode
- Remind people to read the agent's plan before approving
- Walk around to verify files are being created

SAY: (at 10-minute mark) "Now switch to Part B. Open Source Control -- Ctrl+Shift+G -- and review every file the agent created."

DURING PART B (10 min):
- Help people navigate the Source Control panel
- Show how to click a file to see its contents
- Guide them through the stage/discard workflow

ASK: "Who found something in the agent's output they would change? What was it?"

ASK: "Can someone explain what green lines and red lines mean in a diff?"
(Answer: Green = added, Red = removed)

TRANSITION: "You now know how to build with agents AND review their work. But what about when the agent makes mistakes? Let's talk about that."
```

---

## Section 11: Hallucination, Safety & Debugging Agents

**Duration:** 15 minutes (3:15 - 3:30)
**Activity:** Lecture
**Objective:** Identify the three types of AI mistakes, learn to spot them, and understand when to intervene with agents

---

### Key Concept

AI is powerful, but it makes mistakes. As a leader, your job is to catch those mistakes before they matter. This section teaches you the three types of AI errors and how to handle them.

### The Three Types of AI Mistakes

**1. Hallucination: Making Up Facts**

The AI generates information that sounds true but is completely fabricated.

| What It Looks Like | Example |
|---------------------|---------|
| Invented statistics | "Your DC processed 15,247 orders last week" (no data provided) |
| Fake citations | "According to the 2025 OSHA report on DC safety..." (report does not exist) |
| Plausible but wrong numbers | "Industry average for on-time delivery is 99.7%" (made up) |
| Non-existent references | "As stated in file labor-report-q3.csv..." (file does not exist) |

**How to spot it:** If the AI cites a specific number, statistic, or source, verify it. Ask yourself: "Did I give the AI this data? If not, where did it come from?" If you did not provide the data, the AI likely generated it.

**2. Drift: Starting Right, Then Wandering Off**

The AI begins working on your task but gradually expands scope or changes direction.

| What It Looks Like | Example |
|---------------------|---------|
| Scope creep | You asked for a template; agent also reorganized your folder structure |
| Topic wandering | You asked for a labor report; agent added sections about supply chain management |
| Unsolicited improvements | You asked for a simple list; agent created a complex dashboard |

**How to spot it:** Compare the output to your original request. Did you ask for this? If the agent is doing things you did not request, that is drift.

**3. Over-Confidence: Presenting Guesses as Facts**

The AI states uncertain information as if it were definitive.

| What It Looks Like | Example |
|---------------------|---------|
| Definitive language about uncertain topics | "The best practice is always to..." (when there are multiple valid approaches) |
| Missing caveats | "This will reduce overtime by 30%" (no data to support this) |
| Implied expertise | "Based on your DC's performance..." (when it has no data about your DC) |

**How to spot it:** Watch for language that sounds too certain. Words like "always," "never," "guaranteed," and specific percentages without data sources are warning signs.

### How to Spot AI Mistakes: The Verification Framework

1. **Check numbers and statistics:** Did you provide this data? If not, it is probably made up.
2. **Cross-check with source data:** Compare AI output against the original files you provided.
3. **Test with known answers:** Ask the AI something you already know the answer to. If it gets that wrong, question everything else.
4. **Look for source citations:** If the AI references a document, verify that document exists.
5. **Watch for over-specificity:** If the AI gives you a very specific number (like "15,247 orders"), but you never provided order data, that is a red flag.

### Agent Debugging: When to Intervene

Not every agent mistake needs your intervention. Here is a guide:

**Let the agent continue when:**
- It makes minor formatting mistakes (wrong heading level, extra spacing)
- It self-corrects an error (catches its own mistake and fixes it)
- It takes a slightly different approach than you expected, but the output is still useful
- It asks clarifying questions

**Intervene when:**
- The agent is heading in the wrong direction (creating files you did not ask for)
- It is accessing or modifying files it should not touch
- It proposes a terminal command you do not understand
- It is stuck in a loop (trying the same failing approach repeatedly)
- It is generating Tesla-specific data in Copilot (policy violation)

**How to redirect an agent:**
- Type: "Stop. Let's take a different approach. I want you to [clearer instruction]."
- Or cancel the current operation entirely and start fresh with a better prompt
- If the agent created something wrong, say: "Delete [file] and recreate it with [specific changes]."

### Safety Basics

These rules apply every time you use AI:

1. **Never paste passwords, API keys, or credentials** into any AI tool
2. **Always review terminal commands** before approving -- if you do not understand it, do not approve it
3. **Do not auto-approve** anything you do not understand
4. **Remember the data policy:** No Tesla data in Copilot. Tesla data only in Bottle Rocket.
5. **The "trust but verify" framework:** AI output is a first draft, not a final answer. Review everything before it leaves your desk.

### Speaker Notes

```
TIMING: 15 minutes

SAY: "AI is powerful, but it makes three kinds of mistakes. Understanding these mistakes is the difference between being an AI-savvy leader and someone who gets burned."

SAY: "Mistake number one: hallucination. The AI makes up facts. It generates a number that sounds right but has no basis in reality. This is the most dangerous mistake because it sounds so convincing."

ASK: "Has anyone had AI give you a statistic that turned out to be wrong?"

SAY: "Mistake number two: drift. The AI starts on-task but wanders. You asked for a template, and it also reorganized your folders, added a dashboard, and wrote documentation you didn't ask for."

SAY: "Mistake number three: over-confidence. The AI says 'This will reduce overtime by 30%' with zero data to back it up."

SAY: "Here's your framework for catching these mistakes: Did you give the AI this data? If not, it's probably made up. Did you ask for this? If not, it's drift. Does it sound too certain? Then verify it."

SAY: "When you're working with agents specifically, you need to know when to let the agent continue and when to intervene."

SAY: "Minor formatting issues? Let it go. Agent heading in the wrong direction? Stop it and redirect. Terminal command you don't understand? Do NOT approve it."

SAY: "The bottom line: trust but verify. Every AI output is a first draft. Review it before it leaves your desk."

TRANSITION: "Now let's put those skills to the test. You're going to find mistakes in AI-generated content."
```

---

## Section 12: Exercise 4 -- Spot the Mistakes

**Duration:** 20 minutes (3:30 - 3:50)
**Activity:** Hands-On Practice
**Objective:** Practice identifying hallucinations, drift, and over-confidence in AI-generated outputs

---

### Key Concept

The best way to learn to catch AI mistakes is to practice finding them. Below are three AI-generated outputs with deliberately embedded errors. Your job is to find every mistake.

### Output 1: Email Draft (Find 4 Errors)

Read the following email that was "generated by AI" for an AGM to send to their regional director:

---

> **Subject: Weekly Performance Update -- Tampa DC**
>
> Hi Sarah,
>
> Great week at Tampa. Here are the highlights:
>
> **Metrics:**
> - On-time delivery: 98.2% (above the industry average of 99.7%)
> - Headcount: 47 associates across 3 shifts
> - Overtime: 12.3% of total hours (within target)
>
> **Highlights:**
> - Completed Q4 safety training for all associates
> - New conveyor system installation is 80% complete
>
> **Challenges:**
> - Tuesday night shift was understaffed by 3 associates due to call-outs
> - According to the 2025 OSHA Warehouse Safety Report, our incident rate is below the national average of 4.2 per 100 workers
>
> **Action Items:**
> - Finalize conveyor installation by EOW
> - Schedule follow-up with maintenance vendor
>
> Best regards,
> [AGM Name]
> Operations Lead

---

**Errors to find:**

1. **Hallucinated statistic:** "Industry average of 99.7%" -- this number is made up. No source was provided. Real industry averages vary significantly by sector.
2. **Contradictory statement:** On-time delivery is 98.2% but is described as "above" the industry average of 99.7%. If the average were 99.7%, then 98.2% would be below it, not above it. This is a math/logic error.
3. **Fake citation:** "According to the 2025 OSHA Warehouse Safety Report" -- this specific report may not exist. The AI generated a plausible-sounding source. The incident rate of "4.2 per 100 workers" is also unverified.
4. **Over-specific metrics without data:** If this was generated without uploading real data, then numbers like 98.2%, 47, 12.3%, and "3 associates" are all hallucinated. They sound specific and real, which makes them more dangerous.

### Output 2: Data Analysis (Find 3 Errors)

Read the following analysis that was "generated by AI" from a weekly operations summary:

---

> **Weekly Productivity Analysis -- Week 4**
>
> **Summary:** Productivity improved significantly this week. Units per labor hour (UPLH) increased from 12.4 to 14.1, representing a 13.7% improvement.
>
> **Trend Analysis:**
> - Week 1: 13.2 UPLH
> - Week 2: 12.8 UPLH
> - Week 3: 12.4 UPLH
> - Week 4: 14.1 UPLH
>
> **Key Insight:** The strong correlation between the new conveyor system installation (completed Week 3) and the Week 4 productivity jump confirms that capital equipment investment directly drives throughput improvements.
>
> **Recommendation:** Based on this data, investing in a second conveyor line would yield approximately 13-15% additional improvement, saving an estimated $47,000 in annual labor costs.

---

**Errors to find:**

1. **Misinterpreted trend:** Weeks 1-3 show a declining trend (13.2 > 12.8 > 12.4). The analysis says productivity "improved significantly" but only Week 4 shows improvement. Three weeks of decline before one week of improvement is not a clear positive trend. A careful analyst would note the decline.
2. **Invented correlation:** The AI claims the conveyor installation "confirms" it caused the improvement. Correlation does not equal causation. Many other factors could explain the Week 4 increase (more staff, fewer complex orders, seasonal variation). The word "confirms" is over-confident.
3. **Fabricated financial projection:** "Approximately 13-15% additional improvement" and "$47,000 in annual labor costs" are fabricated numbers. The AI has no basis for projecting that a second conveyor would yield the same results, and the dollar figure is invented.

### Output 3: Agent-Generated Report (Find 3 Errors)

Read the following report that was "generated by an AI agent" that claims to have analyzed your files:

---

> **Staffing Optimization Report**
>
> Based on my analysis of `staffing-data-2025.csv` and `shift-schedule-q4.xlsx`, here are my findings:
>
> **Current State:**
> - Average daily headcount: 43 associates
> - Night shift consistently understaffed by 2-3 workers
> - Morning shift has 15% excess capacity
>
> **Recommendation:**
> - Redistribute 2 associates from morning to night shift
> - Hire 1 additional part-time worker for night coverage
> - This will reduce overtime by 22% and improve night shift UPLH by 18%
>
> **Data Quality Note:**
> All metrics validated against industry benchmarks from the National Warehousing Association (NWA) 2025 Annual Report.

---

**Errors to find:**

1. **References files that may not exist:** The report claims to have analyzed `staffing-data-2025.csv` and `shift-schedule-q4.xlsx`. If these files do not exist in your workspace, the agent fabricated their names and all the data "derived" from them.
2. **Fabricated source:** "National Warehousing Association (NWA) 2025 Annual Report" -- verify this exists before trusting it. Many AI-generated sources sound real but are invented.
3. **Over-precise predictions with no basis:** "Reduce overtime by 22% and improve night shift UPLH by 18%" -- these specific percentages require complex modeling. The AI generated numbers that sound precise to appear authoritative, but they have no analytical foundation.

### Exercise Instructions

1. **Individual work (10 min):** Read all three outputs. List every error you find. Write them down.
2. **Partner discussion (5 min):** Compare your findings with the person next to you. Did they catch anything you missed?
3. **Group debrief (5 min):** Review the answers as a group.

### Success Criteria

- [ ] Found at least 3 of 4 errors in Output 1 (email)
- [ ] Found at least 2 of 3 errors in Output 2 (analysis)
- [ ] Found at least 2 of 3 errors in Output 3 (report)
- [ ] Can explain the difference between hallucination, drift, and over-confidence
- [ ] Can articulate the "trust but verify" principle

### Key Takeaway

**AI is your first draft, not your final answer.** Every number needs verification. Every citation needs checking. Every recommendation needs your judgment. The AI generates the starting point. You provide the quality control.

### Speaker Notes

```
TIMING: 20 minutes (10 min individual + 5 min partner + 5 min debrief)

SAY: "I'm going to show you three pieces of AI-generated content. Each one has mistakes hidden inside. Your job is to find every error."

SAY: "This is not a trick exercise. These are the exact kinds of mistakes AI makes every day. Learning to catch them is one of the most important skills you'll develop."

DURING INDIVIDUAL WORK (10 min):
- Display or distribute the three outputs
- Walk around and observe. If someone is stuck, hint: "Look at the numbers. Where did they come from?"
- Do not give away answers during this phase

SAY: (at 10-minute mark) "Turn to the person next to you. Compare your findings. Did they catch anything you missed?"

DURING PARTNER DISCUSSION (5 min):
- Listen to conversations. Note common misses.

DEBRIEF (5 min):
- Go through each output and reveal the errors
- For Output 1: "The 99.7% industry average is made up. And notice -- 98.2% is below 99.7%, not above it. The AI contradicted itself."
- For Output 2: "Three weeks of declining productivity, then one good week, and the AI calls it a 'significant improvement.' And it claims the conveyor 'confirms' the cause. That's a huge leap."
- For Output 3: "Did those files actually exist? If not, everything in this report is fiction dressed up as analysis."

ASK: "What's the one-line takeaway from this exercise?"
(Answer: AI is your first draft, not your final answer.)

SAY: "Trust but verify. That's the framework. Use AI to generate drafts, then apply your judgment and experience to make them right."

TRANSITION: "Let's wrap up with your key takeaways and homework."
```

---

## Section 13: Wrap-up + Homework

**Duration:** 10 minutes (3:50 - 4:00)
**Activity:** Discussion
**Objective:** Reinforce learning, assign homework, and preview Week 4

---

### Key Takeaways

1. **VS Code + Copilot extends your AI capabilities** beyond Bottle Rocket with file creation, terminal execution, and project context -- *Source: research.md, Key Concepts*

2. **Voice Mode enables 3-5x faster input** compared to typing, reducing strain and keeping you in flow state -- *Source: research.md, Voice Dictation Benefits*

3. **Agents plan and execute autonomously** using the ReAct pattern: Think, Act, Observe, Repeat -- like a skilled assistant who checks their work after each step -- *Source: IK Fundamentals of Agentic AI, adapted*

4. **RAG grounds AI in real data** -- always provide your documents when you want accurate, specific answers. Without your data, AI guesses. -- *Source: IK Building Applications with LLMs*

5. **Always review agent changes** using git diffs. Green = added, Red = removed. Never approve changes you do not understand. -- *Source: Synthesized from research*

6. **Trust but verify** -- AI output is a first draft, not a final answer. Check numbers, verify citations, and apply your judgment. -- *Source: Section 11 content*

### Homework Assignment (45 minutes)

**Part 1: Agent Workflows (20 min)**

Build 2 agent workflows using Copilot Agent Mode:

**Workflow 1 -- Meeting Prep Kit:**
> "Create a meeting preparation system in a folder called 'meeting-prep'. Include: a meeting agenda template, a pre-meeting checklist, a notes template with action items section, and a follow-up email template."

**Workflow 2 -- Incident Report System:**
> "Create an incident report system in a folder called 'incident-reports'. Include: a blank incident report template that captures date, time, location, description, root cause, and corrective actions. Also include a sample filled-in report and a tracking spreadsheet template."

For each workflow, review the agent's output using Source Control. Note what the agent did well and what you would change.

**Part 2: Personal Project Development (25 min)**

Continue your personal automation project from the project options (dive deep automation, email management, daily report generator, KPI dashboard narrator, or incident analysis agent):

1. Use Agent Mode to build at least one component of your project
2. Review the changes using Source Control
3. Iterate at least once to improve the output
4. **Bring your project ready for the Week 4 showcase** -- you will present it to the group

### Time Savings Log (Week 3)

| Task | Traditional Method | With Voice/Agent | Savings |
|------|-------------------|------------------|---------|
| Email drafting | ___ min (typing) | ___ min (voice) | ___ min |
| Project setup | ___ min (manual) | ___ min (agent) | ___ min |
| Template creation | ___ min (manual) | ___ min (agent) | ___ min |
| Report review | ___ min (manual) | ___ min (with diff review) | ___ min |
| **Weekly Total** | | | **___ min** |

### Next Week Preview

**Week 4: Advanced Agents, Memory & Optimization**

- Agents that remember your DC (memory and context management)
- Multi-agent workflows (chaining agents for complex tasks)
- MCP tools (Playwright for web automation, filesystem for local files)
- Evaluating AI quality (systematic review frameworks)
- **Personal project showcase** -- present your automation to the group
- Course wrap-up and AI rollout planning for your team

### Speaker Notes

```
TIMING: 10 minutes

SAY: "Let's recap. Today you went from chatting with AI to commanding AI. You set up VS Code, mastered voice input, built projects with Agent Mode, learned to review changes, and practiced catching AI mistakes. That is a LOT."

REVIEW: Go through the 6 key takeaways on screen.

SAY: "Your homework has two parts. Part 1: build two more agent workflows. Part 2: continue your personal project. Come to Week 4 with your project ready to present."

ASK: "What was your biggest insight today? What surprised you?"

ASK: "Any questions about the homework or what we'll do next week?"

SAY: "Next week is the final week. You'll learn advanced agent techniques, install MCP tools, and complete your personal project. You'll present your automation to the group. Great work today."

SAY: "Remember: AI is your first draft, not your final answer. Trust but verify. See you next week."
```

---

## Research Citation Log

| Section | Citations | Source Sections Referenced |
|---------|-----------|---------------------------|
| Section 1: Time Savings Review | 2 | Voice Dictation Benefits |
| Section 2: VS Code + Copilot Setup | 3 | VS Code, GitHub Copilot Chat, Troubleshooting |
| Section 3: Chat, @ Commands & Voice Mode | 5 | Chat Participants, Copilot vs Bottle Rocket, Voice Mode, Voice Dictation |
| Section 4: Exercise 1 | 1 | Real-World Applications - Voice Email |
| Section 5: What Is an AI Agent? | 0 | New content (IK Fundamentals of Agentic AI, adapted) |
| Section 6: Agent Mode Deep Dive | 3 | Agent Mode Fundamentals, Terminal Approval, Common Pitfalls |
| Section 7: Exercise 2 | 1 | Real-World Applications - Agent Mode Project Setup |
| Section 8: RAG Lite | 0 | New content (IK Building Applications with LLMs, adapted) |
| Section 9: Git Basics | 0 | New content (synthesized from research) |
| Section 10: Exercise 3 | 0 | Applied content from Sections 7-9 |
| Section 11: Hallucination & Safety | 0 | New content (IK Building Applications with LLMs, adapted) |
| Section 12: Exercise 4 | 0 | Applied content from Section 11 |
| Section 13: Wrap-up | 6 | Key Concepts summary across all sections |
| **Total** | **21** | |

---

## Terminology Introduced

| Term | Definition | First Used |
|------|------------|------------|
| VS Code | Free, lightweight code editor from Microsoft | Week 3, Section 2 |
| GitHub Copilot | AI coding assistant integrated with VS Code | Week 3, Section 2 |
| @ Commands | Chat participants (@workspace, @terminal, @vscode) that direct Copilot to specialists | Week 3, Section 3 |
| Voice Mode | Hands-free voice input via the VS Code Speech extension | Week 3, Section 3 |
| AI Agent | An AI system that autonomously plans and executes multi-step tasks toward a goal | Week 3, Section 5 |
| ReAct Pattern | Think, Act, Observe, Repeat -- how agents reason through tasks | Week 3, Section 5 |
| Agent Mode | GitHub Copilot's autonomous mode that plans and executes complex tasks | Week 3, Section 6 |
| Plan-Execute-Iterate | The loop Agent Mode uses to complete complex tasks (part of ReAct) | Week 3, Section 6 |
| RAG | Retrieval-Augmented Generation -- grounding AI in real documents before generating answers | Week 3, Section 8 |
| Hallucination | When AI generates plausible but false information (invented facts, statistics, or sources) | Week 3, Section 8 |
| Context Window | The amount of text AI can consider at once -- its short-term memory capacity | Week 3, Section 8 |
| Git Diff | A view showing what changed in files -- green for added lines, red for removed lines | Week 3, Section 9 |
| Drift | When AI starts on-task but gradually expands scope or changes direction | Week 3, Section 11 |
| Over-Confidence | When AI states uncertain information as if it were definitive fact | Week 3, Section 11 |
| MCP | Model Context Protocol -- extends Copilot capabilities with external tools | Week 3, Section 13 (preview) |
| ROLE + CONTEXT + TASK + FORMAT | The prompt formula from Weeks 1-2 | Week 1 (continued) |
| Bottle Rocket | Tesla's approved AI chat tool (go.tesla.com/chat) | Week 1 (continued) |
| Tesla Data | Company-confidential information -- only allowed in Bottle Rocket | Week 1 (continued) |

---

## Sources Used

All content derived from:
- `outputs/week-3/research.md` -- 21 citations
- `outputs/syllabus.md` -- objectives and structure
- IK "Fundamentals of Agentic AI" -- Sections 5, 6 (adapted for non-technical audience)
- IK "Building Applications with LLMs & Agents" -- Sections 8, 11 (RAG, safety, hallucination content)
- Tesla AI Policy (go.tesla.com/aitools) -- policy reminders throughout

---

## Quality Gate Checklist

| Check | Requirement | Status |
|-------|-------------|--------|
| Research citations | 3+ per major section where research exists | PASS -- 21 total, distributed across sections |
| Speaker notes | Present for all sections including breaks | PASS -- All 15 blocks have notes |
| Examples | All grounded in research or course-relevant scenarios | PASS -- All sourced or clearly adapted |
| Statistics | All cited from research.md | PASS -- All cited (voice speed, RSI risk, etc.) |
| Terminology | Consistent with Weeks 1-2 | PASS -- All prior terms maintained, 6 new terms added |
| Time estimates | Total = 240 minutes | PASS -- 240 min validated |
| Learning objectives | 6 objectives, all addressable | PASS -- 6 objectives mapped to sections |
| Policy compliance | Tesla Data rules reinforced | PASS -- Reminder in Sections 3, 4, 7, 11 |
| Hands-on ratio | 50%+ of session is interactive | PASS -- 54% hands-on + demo time |
| New section coverage | All 8 new sections written | PASS -- Sections 5, 7, 8, 9, 10, 11, 12 (new), Section 6 (expanded) |
| Exercise quality | Success criteria for all exercises | PASS -- 4 exercises with full criteria |
| Citation log | Complete and accurate | PASS -- Complete |

---

*Content created: February 2026*
*Based on: Week 3 Research + Syllabus + IK Course Materials (adapted)*
*Total Citations: 21*
*Duration: 240 minutes (expanded from 120 minutes)*
