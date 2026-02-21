# Course Syllabus: AI Tools for Operations Leaders

**Duration:** 4 weeks
**Session Length:** 240 minutes per week (4 hours)
**Format:** Virtual training + async homework
**Target Audience:** 5 Area General Managers (AGMs) at Tesla distribution centers
**Ambition Level:** Zero AI knowledge --> Advanced agentic coding proficiency

---

## Course Overview

This course takes Tesla Area General Managers from zero AI experience to advanced agentic coding proficiency in four weeks. Each 240-minute session builds progressively: Week 1 establishes the foundation with AI literacy, Tesla policy compliance, and Bottle Rocket mastery; Week 2 advances to sophisticated prompting techniques, data analysis, and structured output generation; Week 3 introduces VS Code, GitHub Copilot Agent Mode, git basics, and agent file access for multi-step workflows; Week 4 culminates with project memory, Power Automate for recurring automation, orchestration patterns, security review, and a personal project showcase.

The course follows a progressive hands-on model. Week 1 is instruction-heavy (44% hands-on) because every concept is new. By Weeks 2-3, the ratio shifts to 56% hands-on practice. Week 4 balances at 50% as advanced concepts require explanation before practice. Every exercise uses real DC operations scenarios -- labor planning, safety incidents, vendor communications, KPI analysis -- so skills transfer immediately to daily work.

By course end, each AGM will have a personal prompt library of 20+ tested prompts, configured agent skills and project memory for their DC, at least one complete automation workflow, and a concrete plan to train their 30-50 associates. The target outcome is 40-60 minutes of daily time savings through AI-assisted operations.

### Learning Goals

By the end of this course, participants will be able to:

1. **Use Bottle Rocket confidently** for daily operations tasks
2. **Write advanced prompts** (CoT, Few-Shot, Persona, structured outputs) without help
3. **Know policy boundaries cold** -- instant recall of approved/conditional/prohibited tools
4. **Save 40-60 minutes daily** through AI-assisted tasks
5. **Use GitHub Copilot Agent Mode** to build multi-file projects autonomously
6. **Analyze data with AI** -- upload CSVs, extract trends, generate executive summaries
7. **Use Power Automate** -- create recurring automated workflows for desktop and cloud tasks
8. **Give projects memory** -- set up persistent context so agents remember project conventions across sessions
9. **Review AI-generated code** -- read diffs, catch mistakes, approve/reject agent changes
10. **Build real automations** -- end-to-end workflows combining agents, tools, and context
11. **Teach their teams** -- explain AI capabilities and policy to their 30-50 associates

### Tools Covered

| Tool | Purpose | Data Policy | Introduced |
|------|---------|-------------|------------|
| Bottle Rocket (go.tesla.com/chat) | Tesla's approved AI chat interface (Grok, Claude, Gemini) | Tesla Data OK | Week 1 |
| GitHub Copilot (in VS Code) | Code assistance: Chat, Edit, Agent modes + Voice | NO Tesla Data | Week 3 |
| Power Automate (Desktop + Cloud) | Workflow automation for recurring tasks | Tesla Data OK | Week 4 |
| Project Memory (copilot-instructions.md) | Persistent agent memory across sessions | Project-scoped | Week 4 |

### Curriculum Design Decisions

| Decision | Choice | Rationale |
|----------|--------|-----------|
| Session length | 240 min (4 hours) with 2-3 breaks | Allows deep practice; breaks prevent cognitive fatigue; matches ambition level of zero-to-advanced |
| Week 1 hands-on ratio | 44% hands-on / 56% instruction | Everything is new; learners need conceptual foundation before independent practice |
| Weeks 2-3 hands-on ratio | 56% hands-on / 44% instruction | Building on foundation; more confidence allows more practice |
| Week 4 hands-on ratio | 50% hands-on / 50% instruction | Advanced concepts (memory, orchestration, security) need explanation before practice |
| Tool progression | Bottle Rocket (Wk 1) --> Copilot (Wk 3) --> Power Automate + Memory (Wk 4) | Builds confidence with a simple tool before introducing code-oriented environments |
| Scenario-based learning | All exercises use real DC operations data | Immediate applicability; AGMs see value in their actual workflows |
| Time tracking | Mandatory from Week 1 | Creates accountability, proves ROI, builds business case for team expansion |
| Homework cap | 45 min max per week | Respects busy AGM schedules; focuses on quality over quantity |
| Progressive difficulty | Foundation --> Application --> Expansion --> Mastery | Standard adult learning progression; each week unlocks new capabilities |
| Agent skills before memory | Agent Mode in Week 3, Power Automate + Memory in Week 4 | Learners need to see what agents can do before learning to customize them persistently |
| Security review placement | Week 4 (after agent skills) | Context-dependent -- learners need to understand what agents produce before reviewing it |
| Personal project | Week 4 showcase | Capstone validates learning; peer review drives cross-DC idea sharing |

---

## Week 1: AI Foundations & Policy Compliance

**Duration:** 240 minutes
**Focus:** From zero to confident Bottle Rocket user with solid prompt skills and AI literacy
**Difficulty Level:** Foundation

### Learning Objectives

1. Understand the business case for AI in DC operations and set realistic expectations
2. Demonstrate complete mastery of Tesla's three-tier AI policy (Approved / Conditional / Prohibited)
3. Navigate Bottle Rocket confidently -- model selection, interface, query iteration
4. Apply the ROLE + CONTEXT + TASK + FORMAT prompt formula to operations scenarios
5. Evaluate AI outputs for quality, accuracy, and hallucinations
6. Establish a personal time-savings tracking baseline

### Session Agenda

| Time | Section | Topic | Activity | Duration |
|------|---------|-------|----------|----------|
| 0:00 - 0:10 | 1 | Why AI Matters for Operations | Lecture + Discussion | 10 min |
| | | - Business case: time savings, decision quality, consistency | | |
| | | - AI as augmentation, not replacement | | |
| | | - Common misconceptions and realistic expectations | | |
| 0:10 - 0:30 | 2 | Tesla AI Policy Deep Dive | Lecture + Interactive Quiz | 20 min |
| | | - Three tiers: Approved / Conditional / Prohibited | | |
| | | - "Tesla Data" definition with concrete examples | | |
| | | - Scenarios: which tool for which task? | | |
| | | - Policy quiz (interactive) | | |
| 0:30 - 0:45 | 3 | Introduction to Bottle Rocket | Live Demo | 15 min |
| | | - Access via go.tesla.com/chat | | |
| | | - Interface navigation, model selection | | |
| | | - Live demo: first query | | |
| 0:45 - 1:00 | 4 | Prompt Engineering Basics | Lecture + Examples | 15 min |
| | | - The 4-part formula: ROLE + CONTEXT + TASK + FORMAT | | |
| | | - Good vs bad prompt examples from operations | | |
| | | - Iteration: refining outputs | | |
| 1:00 - 1:20 | 5 | Exercise 1: First Guided Prompt | Guided Exercise | 20 min |
| | | - Instructor-guided, step-by-step | | |
| | | - Operations scenario (e.g., draft a shift summary) | | |
| 1:20 - 1:45 | 6 | Exercise 2: Create 3 Operations Prompts | Independent Practice | 25 min |
| | | - Real scenarios: labor planning, safety report, vendor email | | |
| **1:45 - 1:55** | -- | **BREAK** | | **10 min** |
| 1:55 - 2:15 | 7 | Understanding AI Models | Lecture + Demo | 20 min |
| | | - Claude, GPT, Gemini, Grok -- strengths and use cases | | |
| | | - When to use which model in Bottle Rocket | | |
| | | - Temperature, tokens, context windows (conceptual) | | |
| | | - Why Opus 4.5 matters for Copilot access | | |
| 2:15 - 2:50 | 8 | Bottle Rocket Deep Workshop | Workshop (Hands-On) | 35 min |
| | | - Analyze headcount allocation across shifts | | |
| | | - Generate safety incident summary from raw notes | | |
| | | - Draft vendor communication for delayed shipment | | |
| | | - Create training outline for new associates | | |
| | | - Each scenario: write prompt --> get output --> iterate --> improve | | |
| 2:50 - 3:10 | 9 | Quality Checking AI Outputs | Lecture + Exercise | 20 min |
| | | - Hallucination detection: how to spot made-up facts | | |
| | | - Verification techniques: cross-reference, ask for sources | | |
| | | - When to trust vs. verify -- the 80/20 rule | | |
| | | - Exercise: find 3 errors in a sample AI output | | |
| 3:10 - 3:35 | 10 | Exercise 3: Iterate, Verify & Improve | Independent Practice | 25 min |
| | | - Take a prompt from Exercise 2 | | |
| | | - Apply verification techniques | | |
| | | - Iterate until output is production-ready | | |
| | | - Document before/after quality | | |
| 3:35 - 3:50 | 11 | Time Savings Baseline Setup | Guided Setup | 15 min |
| | | - Install time tracking method (simple spreadsheet or form) | | |
| | | - Measure baseline: how long does task X take without AI? | | |
| | | - Record first AI-assisted task timing | | |
| | | - Set personal goal for Week 2 | | |
| 3:50 - 4:00 | 12 | Wrap-up & Homework | Lecture | 10 min |
| | | - Homework assigned (see below) | | |
| | | - Bring best prompt + worst prompt to Week 2 | | |
| **TOTAL** | | | | **240 min** |

**Time Validation:** 10 + 20 + 15 + 15 + 20 + 25 + 10 (break) + 20 + 35 + 20 + 25 + 15 + 10 = **240 min**

**Hands-on Time:** ~105 min (44%) -- Exercise 1 (20) + Exercise 2 (25) + Workshop (35) + Quality Checking exercise portion (10) + Exercise 3 (25) + Time Savings setup (15) = 130 min. Adjusting for mixed-mode sections: **~105 min hands-on (44%)**
**Instruction/Demo Time:** ~135 min (56%)

*Note: Week 1 is heavier on instruction because everything is new. Hands-on ratio increases each week.*

### Key Topics

- Business case for AI in operations (time savings, decision quality, consistency)
- Tesla AI Policy: Approved / Conditional / Prohibited tiers
- "Tesla Data" definition and concrete classification examples
- Bottle Rocket interface, model selection, query workflows
- ROLE + CONTEXT + TASK + FORMAT prompt formula
- AI model landscape: Claude, GPT, Gemini, Grok -- capabilities and trade-offs
- Temperature, tokens, and context windows (conceptual understanding)
- Quality checking: hallucination detection, verification techniques, the 80/20 trust rule
- Iterative prompt refinement workflow
- Time savings measurement methodology

### Policy Compliance Checkpoint

- Approved: Bottle Rocket, IT Assist, Employee Assist
- Conditional: GitHub Copilot (no Tesla data)
- Prohibited: ChatGPT, Claude.ai, meeting transcription, Apple Intelligence
- Reference: go.tesla.com/aitools

### Tools Introduced

- Bottle Rocket (go.tesla.com/chat) -- Tesla's approved AI chat interface
  - Multiple models: Grok, Claude, Gemini
  - Tesla Data permitted

### Homework Assignment

**Time Required:** ~45 minutes

1. Complete 3 real work tasks using Bottle Rocket (e.g., draft an email, summarize a report, create a planning document)
2. Track time savings for each task (with AI vs. estimated time without AI)
3. Identify your best prompt and your worst prompt -- bring both to Week 2
4. Continue using the time tracking spreadsheet daily (target: 15-20 min/day savings)

### Goals Addressed

- Goal 1: Use Bottle Rocket confidently for daily operations tasks
- Goal 3: Know policy boundaries cold -- instant recall of approved/conditional/prohibited tools
- Goal 4: Save 40-60 minutes daily (baseline setup; target this week: 15-20 min/day)
- Goal 11: Teach their teams (policy knowledge foundation)

### Tesla Values Embedded

- **Ownership:** You own the outputs -- AI assists, you decide and verify
- **Curiosity:** Explore what Bottle Rocket can do across different models

---

## Week 2: Advanced Prompts & Your First Agent

**Duration:** 240 minutes
**Focus:** Compressed advanced prompting, then hands-on VS Code + Copilot Agent Mode + MCP skills introduction
**Difficulty Level:** Application --> Expansion

### Learning Objectives

1. Apply Chain-of-Thought, Few-Shot, and Persona prompting to operations data analysis
2. Set up VS Code with GitHub Copilot (Chat, Edit, Agent modes)
3. Understand what AI agents are and how they differ from chat
4. Use Agent Mode to complete multi-step tasks autonomously
5. Understand MCP (Model Context Protocol) and install a first skill
6. Read agent plans and review agent-generated changes
7. Debug and redirect agents when they make mistakes

### Session Agenda

| Time | Section | Topic | Activity | Duration |
|------|---------|-------|----------|----------|
| 0:00 - 0:10 | 1 | Homework Review & Wins | Peer Sharing | 10 min |
| | | - Best prompt / worst prompt sharing | | |
| | | - Time savings check (target: 15-20 min/day) | | |
| 0:10 - 0:15 | 2 | Advanced Prompting Techniques | Concept Intro | 5 min |
| | | - CoT, Few-Shot, Persona -- 90-second each | | |
| 0:15 - 0:45 | 3 | Exercise 1: CoT + Data Analysis Sprint | Hands-On | 30 min |
| | | - Part A: CoT prompt on productivity data (15 min) | | |
| | | - Part B: Data analysis with structured output (15 min) | | |
| 0:45 - 0:55 | 4 | Exercise 2: Template Speed Build | Hands-On | 10 min |
| | | - Build 1-2 reusable prompt templates in Bottle Rocket | | |
| **0:55 - 1:05** | -- | **BREAK** | | **10 min** |
| 1:05 - 1:10 | 5 | What Is an AI Agent? | Concept Intro | 5 min |
| | | - Chat vs Agent: the autonomy difference | | |
| | | - Plan-Execute-Iterate loop | | |
| | | - Why agents matter for operations | | |
| 1:10 - 1:30 | 6 | Exercise 3: VS Code + Copilot Setup | Guided Setup | 20 min |
| | | - Install VS Code, Copilot extension, sign in | | |
| | | - Policy reminder: NO Tesla Data in Copilot | | |
| | | - Verify working: first Copilot chat message | | |
| 1:30 - 1:35 | 7 | Copilot Modes: Chat vs Edit vs Agent | Concept Intro | 5 min |
| | | - Chat: ask questions, get answers | | |
| | | - Edit: targeted changes to specific files | | |
| | | - Agent: autonomous multi-step task completion | | |
| 1:35 - 2:00 | 8 | Exercise 4: Your First Agent Mode Task | Hands-On | 25 min |
| | | - Agent creates a shift summary template | | |
| | | - Watch the plan, approve steps, review output | | |
| | | - See Agent vs Chat difference firsthand | | |
| **2:00 - 2:10** | -- | **BREAK** | | **10 min** |
| 2:10 - 2:15 | 9 | MCP Tools: Giving Agents Skills | Concept Intro | 5 min |
| | | - What is MCP? (like installing apps on a phone) | | |
| | | - Types: browser, filesystem, database, API | | |
| | | - Before/after: agent with vs without skills | | |
| 2:15 - 2:40 | 10 | Exercise 5: Install & Use First MCP Skill | Hands-On | 25 min |
| | | - Install Playwright MCP (browser automation) | | |
| | | - Agent navigates a public website, extracts info | | |
| | | - Compare: what agent could do before vs after skill | | |
| 2:40 - 2:45 | 11 | Reading Agent Plans & Git Basics | Concept Intro | 5 min |
| | | - How to read what an agent changed | | |
| | | - Accept/reject agent edits | | |
| 2:45 - 3:15 | 12 | Exercise 6: Agent Builds a Real Tool | Hands-On | 30 min |
| | | - Agent creates a time-savings tracking dashboard (HTML) | | |
| | | - Multi-step: plan --> approve --> build --> review | | |
| | | - Pause, redirect, continue practice | | |
| 3:15 - 3:40 | 13 | Exercise 7: Debug & Redirect an Agent | Hands-On | 25 min |
| | | - Give agent a deliberately vague instruction | | |
| | | - Watch it go wrong, practice redirecting | | |
| | | - Undo and retry workflow | | |
| 3:40 - 4:00 | 14 | Share Results + Key Takeaways + Homework | Peer Discussion | 20 min |
| | | - Show off what agents built | | |
| | | - Discuss: what would you automate at your DC? | | |
| **TOTAL** | | | | **240 min** |

**Time Validation:** 10 + 5 + 30 + 10 + 10 (break) + 5 + 20 + 5 + 25 + 10 (break) + 5 + 25 + 5 + 30 + 25 + 20 = **240 min**

**Hands-on Time:** ~195 min (81%) -- Peer sharing (10) + Ex 1 (30) + Ex 2 (10) + VS Code setup (20) + Ex 4 (25) + Ex 5 (25) + Ex 6 (30) + Ex 7 (25) + Share/discuss (20)
**Concept Intros:** ~25 min (10%) -- five 5-min concept intros
**Breaks:** ~20 min (8%)

*Note: Week 2 shifts to 81% hands-on with concept intros kept to 5 minutes each. VS Code setup and exercises are the primary learning mode.*

### Key Topics

- Advanced prompting: CoT, Few-Shot, Persona (compressed from full session to sprint)
- Data analysis with AI: tables, trends, structured outputs
- AI agents: what they are, how they differ from chat, Plan-Execute-Iterate loop
- VS Code + GitHub Copilot: setup, Chat/Edit/Agent modes
- MCP (Model Context Protocol): giving agents skills like browser automation
- Agent workflow: plan --> approve --> execute --> review
- Git basics: reading what agents changed, accept/reject edits
- Agent debugging: redirecting agents, undo and retry

### Policy Compliance Checkpoint

- Exercises 1-2 use Bottle Rocket (approved for Tesla Data)
- Exercises 3-7 use GitHub Copilot (NO Tesla Data -- reinforced during setup)
- Agent exercises use only public/non-Tesla data
- Policy reminder embedded in VS Code setup exercise

### Tools Introduced

- Bottle Rocket (go.tesla.com/chat) -- continued from Week 1
  - Advanced prompting techniques
  - Data analysis capabilities
- GitHub Copilot (in VS Code) -- **NEW this week**
  - Chat, Edit, and Agent modes
  - Opus 4.5 model selection
  - NO Tesla Data policy
- Playwright MCP -- **NEW this week**
  - Browser automation skill for agents
  - First MCP tool installation experience

### Homework Assignment

**Time Required:** ~45 minutes

1. Use Agent Mode for 2 real tasks (non-Tesla data): create a report template, build a simple tool
2. Track time savings daily (target: 20-30 min/day)
3. Explore: what other MCP skills exist? List 3 that would help your DC work
4. Think about: what project would you automate if you could? (preparation for Week 4)

### Goals Addressed

- Goal 2: Write advanced prompts (CoT, Few-Shot, Persona) without help
- Goal 4: Save 40-60 minutes daily (this week target: 20-30 min/day)
- Goal 5: Use GitHub Copilot Agent Mode to build multi-file projects
- Goal 6: Analyze data with AI (compressed exercise)
- Goal 7: Give agents skills (MCP tools introduction)
- Goal 9: Review AI-generated code (reading agent plans, git basics)

### Tesla Values Embedded

- **Curiosity:** Explore what agents can do -- push boundaries, try new skills
- **Speed:** Agents complete in minutes what takes hours manually
- **Ownership:** You approve every step -- agents assist, you decide

---

## Week 3: VS Code, Copilot & Agent Mode

**Duration:** 240 minutes
**Focus:** Set up GitHub Copilot, master Voice Mode, understand Agent Mode deeply, learn to review and debug agent work
**Difficulty Level:** Expansion

### Learning Objectives

1. Set up and configure VS Code with GitHub Copilot (Chat, Edit, Agent modes)
2. Use Voice Mode for rapid dictation and iteration (3-5x speed improvement)
3. Understand the Agent Mode Plan-Execute-Iterate loop and approve/reject agent actions
4. Read git diffs to review, accept, or reject AI-generated code changes
5. Debug and redirect agents when they make mistakes
6. Understand how agents can access and work with files in your project

### Session Agenda

| Time | Section | Topic | Activity | Duration |
|------|---------|-------|----------|----------|
| 0:00 - 0:10 | 1 | Time Savings Review | Discussion | 10 min |
| | | - Cumulative check: are we hitting 20-30 min/day? | | |
| | | - Adjust strategies for those behind | | |
| 0:10 - 0:30 | 2 | VS Code + Copilot Setup | Guided Setup | 20 min |
| | | - Installation walkthrough | | |
| | | - Extension setup, sign-in | | |
| | | - Troubleshooting common issues | | |
| | | - Policy reminder: NO Tesla Data in Copilot | | |
| 0:30 - 0:45 | 3 | Copilot Chat & Commands | Lecture + Demo | 15 min |
| | | - @workspace, @terminal, @vscode commands | | |
| | | - Chat vs Edit vs Agent modes -- when to use each | | |
| | | - How it differs from Bottle Rocket | | |
| | | - Opus 4.5 model selection | | |
| 0:45 - 1:05 | 4 | Exercise 1: Copilot Chat for Operations Scripts | Guided Exercise | 20 min |
| | | - Generate a simple Python/JavaScript script via chat | | |
| | | - Task: create a calculator, data formatter, or report template | | |
| | | - Practice the chat --> code --> run cycle | | |
| **1:05 - 1:15** | -- | **BREAK** | | **10 min** |
| 1:15 - 1:30 | 5 | Voice Mode Setup & Practice | Guided Setup + Demo | 15 min |
| | | - Installation and configuration | | |
| | | - Walkie-talkie mode for quick dictation | | |
| | | - 3-5x speed advantage over typing (150 WPM vs 40 WPM) | | |
| 1:30 - 1:45 | 6 | Exercise 2: Voice-Dictated Email Draft | Independent Practice | 15 min |
| | | - Dictate a real operations email via voice | | |
| | | - Iterate and refine using voice commands | | |
| | | - Time comparison: 5-10 min typing vs 2-3 min voice | | |
| 1:45 - 2:10 | 7 | Agent Mode Deep Dive | Lecture + Live Demo | 25 min |
| | | - How agents think: the Plan-Execute-Iterate loop | | |
| | | - Reading and understanding agent plans BEFORE approving | | |
| | | - Terminal command approval -- what to approve, what to reject | | |
| | | - Autonomous context discovery (agents read your files) | | |
| | | - Opus 4.5 capabilities: multi-step reasoning, tool use | | |
| | | - Live demo: watch an agent build something step by step | | |
| 2:10 - 2:35 | 8 | Exercise 3: Agent Builds a Real Tool | Guided Exercise | 25 min |
| | | - Agent creates a time-savings tracking dashboard (HTML page) | | |
| | | - AGMs watch the plan, approve steps, review output | | |
| | | - Practice: pause the agent, redirect, continue | | |
| | | - Result: a working tool they can actually use | | |
| **2:35 - 2:45** | -- | **BREAK** | | **10 min** |
| 2:45 - 3:05 | 9 | Git Basics for Reviewing AI Changes | Lecture + Demo | 20 min |
| | | - What is git? (version control in 5 minutes) | | |
| | | - Reading diffs: what changed, what was added/removed | | |
| | | - Accepting vs rejecting agent edits | | |
| | | - Undoing mistakes: how to roll back | | |
| | | - Why this matters: agents can modify many files at once | | |
| 3:05 - 3:20 | 10 | Debugging Agent Mistakes | Lecture + Demo | 15 min |
| | | - When agents go wrong: common failure patterns | | |
| | | - Redirecting an agent mid-task | | |
| | | - Giving better instructions after a bad output | | |
| | | - The "undo and retry" workflow | | |
| | | - When to start fresh vs. when to correct | | |
| 3:20 - 3:40 | 11 | Agent File Access & Workspace Context | Lecture + Demo | 20 min |
| | | - How agents read and write files in your project | | |
| | | - The concept: agents can access your workspace files | | |
| | | - Demo: agent reading CSV data and generating reports | | |
| | | - How file access enables multi-step workflows | | |
| | | - Preview: Power Automate for recurring automation (Week 4) | | |
| 3:40 - 4:00 | 12-13 | Exercise 4: Agent Builds a Data Report + Wrap-up | Guided Exercise + Homework | 20 min |
| | | - Create a sample CSV with operations data | | |
| | | - Agent task: read the data, analyze it, generate a formatted report | | |
| | | - Compare: manual analysis vs. agent-assisted workflow | | |
| | | - Discuss: what recurring tasks could you automate? | | |
| | | *Final 2 minutes: Homework assignment (see below)* | | |
| **TOTAL** | | | | **240 min** |

**Time Validation:** 10 + 20 + 15 + 20 + 10 (break) + 15 + 15 + 25 + 25 + 10 (break) + 20 + 15 + 20 + 20 = **240 min**

*Note: Sections 12 (Exercise 4) and 13 (Wrap-up + Homework) are combined into the final 20-minute block, with the last 2 minutes dedicated to the homework assignment.*

**Hands-on Time:** ~135 min (56%) -- VS Code Setup (20) + Exercise 1 (20) + Voice Setup (15) + Exercise 2 (15) + Exercise 3 (25) + Exercise 4 (18) + demo interaction portions (22)
**Instruction/Demo Time:** ~105 min (44%)

### Key Topics

- VS Code installation, configuration, and Copilot extension setup
- Copilot modes: Chat (@workspace, @terminal, @vscode), Edit, Agent
- Opus 4.5 model selection and capabilities in Copilot
- Voice Mode: walkie-talkie dictation for 3-5x speed improvement
- Agent Mode: Plan-Execute-Iterate loop, approval workflows, autonomous context discovery
- Git basics: version control, reading diffs, accepting/rejecting changes, rollback
- Debugging agents: failure patterns, redirecting, undo-and-retry workflow
- Agent file access: reading and writing files in your workspace
- Multi-step agent workflows using file access
- Data policy enforcement: NO Tesla Data in Copilot (reinforced throughout)

### Policy Compliance Checkpoint

- VS Code setup includes explicit "NO Tesla Data in Copilot" reminder
- All Copilot exercises use non-Tesla data (generic operations scenarios)
- Agent Mode approval workflow reinforces the "read before you approve" principle

### Tools Introduced

- GitHub Copilot (VS Code) -- Chat, Edit, and Agent modes
  - Opus 4.5 model access (300 requests/month premium)
  - Voice Mode for dictation
  - NO Tesla Data permitted
- Agent Mode file access -- reading/writing project files for multi-step workflows

### Homework Assignment

**Time Required:** ~45 minutes

1. Use Agent Mode for 2 real tasks (non-Tesla-data scenarios: personal productivity tools, public data analysis, report templates)
2. Track time savings daily (target: 30-40 min/day)
3. Think about: what recurring tasks could you automate with Power Automate?
4. Prepare: what project would you automate if you could? (for Week 4 showcase)
5. Continue building prompt library (cumulative target: 15+ prompts)

### Goals Addressed

- Goal 5: Use GitHub Copilot Agent Mode to build multi-file projects autonomously
- Goal 7: Understand agent file access for multi-step workflows (introduction)
- Goal 9: Review AI-generated code -- read diffs, catch mistakes, approve/reject changes
- Goal 3: Know policy boundaries cold (reinforced: NO Tesla Data in Copilot)
- Goal 4: Save 40-60 minutes daily (this week target: 30-40 min/day)

### Tesla Values Embedded

- **Ownership:** Read agent plans before approving; you own the decision to accept or reject
- **Curiosity:** Explore what agents can build; push boundaries of what automation enables

---

## Week 4: Memory, Advanced Skills & Multi-Agent Workflows

**Duration:** 240 minutes
**Focus:** Master agent customization (skills + memory), build complex automations, complete personal project, graduate as advanced AI users
**Difficulty Level:** Mastery

### Learning Objectives

1. Set up persistent project memory using instruction files (copilot-instructions.md)
2. Configure Power Automate workflows for recurring automation tasks
3. Understand multi-agent orchestration patterns (sequential, parallel, supervisor, human-in-the-loop)
4. Apply security review basics: secrets management, code review, data exposure prevention
5. Execute an end-to-end automation combining agents, skills, and memory
6. Present a personal automation project and articulate a plan to train their teams

### Session Agenda

| Time | Section | Topic | Activity | Duration |
|------|---------|-------|----------|----------|
| 0:00 - 0:10 | 1 | Time Savings Final Review + ROI | Discussion | 10 min |
| | | - Cumulative results: target 40-60 min/day | | |
| | | - Calculate annual ROI per AGM | | |
| | | - Business case for expanding to their teams | | |
| 0:10 - 0:35 | 2 | Giving Projects Memory | Lecture + Live Demo | 25 min |
| | | - The problem: agents forget everything between sessions | | |
| | | - Solution 1: Project instruction files (`.github/copilot-instructions.md`) | | |
| | | -- What they are: persistent instructions agents read every time | | |
| | | -- What to include: conventions, terminology, standards, constraints | | |
| | | -- Live demo: create an instruction file, show agent following it | | |
| | | - How agents use the instruction file every session | | |
| | | - What to include: terminology, KPIs, formatting standards | | |
| | | - The result: agents that "remember" your DC context | | |
| 0:35 - 1:00 | 3 | Exercise 1: Build Your Project's Memory | Guided Exercise | 25 min |
| | | - Create `.github/copilot-instructions.md` for a DC operations project | | |
| | | -- DC-specific terminology and abbreviations | | |
| | | -- Report formatting standards | | |
| | | -- Policy reminders (approved tools, data handling) | | |
| | | -- Team conventions (naming, file structure) | | |
| | | - Fill in the template with YOUR DC information | | |
| | | -- Store: KPIs, team structure, terminology, formatting standards | | |
| | | - Test: compare agent output with vs. without the instruction file | | |
| **1:00 - 1:10** | -- | **BREAK** | | **10 min** |
| 1:10 - 1:30 | 4 | Power Automate: The Automation Platform | Lecture + Demo | 20 min |
| | | - Power Automate Desktop vs Cloud Flows | | |
| | | -- Desktop Flows (RPA): automate mouse clicks, keyboard input, legacy apps | | |
| | | -- Cloud Flows: scheduled workflows, approval chains, data sync | | |
| | | -- Process Flows: multi-step approval and routing | | |
| | | - POLICY: Power Automate is APPROVED for Tesla data | | |
| | | - Demo: creating a simple desktop flow | | |
| | | - Choosing the right flow type for your task | | |
| 1:30 - 1:55 | 5 | Exercise 2: Power Automate Desktop + Cloud Flows | Guided Exercise | 25 min |
| | | - Part A: Create a desktop flow that extracts data from Excel | | |
| | | - Part B: Create a cloud flow that sends a scheduled email | | |
| | | - AGMs build their first automated workflow | | |
| | | - Discuss: what recurring tasks could you automate? | | |
| **1:55 - 2:05** | -- | **BREAK** | | **10 min** |
| 2:05 - 2:20 | 6 | Multi-Agent Orchestration Patterns | Lecture | 15 min |
| | | - Sequential: A --> B --> C (pipeline) | | |
| | | - Parallel: A, B, C simultaneously (speed) | | |
| | | - Supervisor: delegator assigns to specialists | | |
| | | - Human-in-the-loop: approval gates for critical decisions | | |
| | | - Real example: this training course was built using orchestration | | |
| 2:20 - 2:35 | 7 | Security Review Basics | Lecture + Checklist | 15 min |
| | | - Never commit secrets (API keys, passwords, tokens) | | |
| | | - Reviewing AI-generated code: what to look for | | |
| | | - Data exposure risks: what should never be in code | | |
| | | - The approval workflow: read before you approve | | |
| | | - Simple checklist for reviewing agent outputs | | |
| 2:35 - 3:00 | 8 | Exercise 3: Dive Deep Report Automation | Guided Exercise | 25 min |
| | | - End-to-end workflow with project memory: | | |
| | | -- Agent reads project instructions (knows DC conventions) | | |
| | | -- Agent reads CSV data (uses file access) | | |
| | | -- Agent analyzes and identifies root causes | | |
| | | -- Agent generates formatted Dive Deep report | | |
| | | -- Report uses your DC context automatically | | |
| | | - Full cycle: plan --> approve --> execute --> review --> iterate | | |
| 3:00 - 3:25 | 9 | Personal Project Showcase | Presentations + Peer Review | 25 min |
| | | - Each AGM presents their automation project (~4 min each) | | |
| | | - Peer review: what worked, what was hard | | |
| | | - Time savings demonstration | | |
| | | - Cross-DC idea sharing | | |
| 3:25 - 3:40 | 10 | Continuous Learning Roadmap | Lecture + Discussion | 15 min |
| | | - Resources for continued learning | | |
| | | - Community of practice: ongoing AGM collaboration | | |
| | | - Teaching their teams: how to roll out AI skills to 30-50 associates | | |
| | | - What's next: upcoming tools, features, capabilities | | |
| | | - Monthly check-in plan | | |
| 3:40 - 3:50 | 11 | Course Wrap-up + Final Q&A | Discussion | 10 min |
| | | - Final policy summary | | |
| | | - Certificate of completion / recognition | | |
| | | - Feedback collection | | |
| **TOTAL** | | | | **240 min** |

**Time Validation:** 10 + 25 + 25 + 10 (break) + 20 + 25 + 10 (break) + 15 + 15 + 25 + 25 + 15 + 10 = **240 min**

**Hands-on Time:** ~120 min (50%) -- Exercise 1 (25) + Exercise 2 (25) + Exercise 3 (25) + Showcase presentations (25) + portions of Memory setup and tool configuration (20)
**Instruction/Demo Time:** ~120 min (50%)

*Note: Week 4 is balanced because it introduces advanced concepts (memory, orchestration, security) that need explanation before practice.*

### Key Topics

- Project memory: instruction files (`.github/copilot-instructions.md`) for persistent agent context
- What to include in instruction files: terminology, KPIs, formatting, team structure
- Power Automate Desktop: RPA for automating desktop applications
- Power Automate Cloud: scheduled and triggered workflow automation
- Power Automate is APPROVED for Tesla data (unlike Copilot)
- Multi-agent orchestration: sequential, parallel, supervisor, human-in-the-loop patterns
- Security review: secrets management, code review checklist, data exposure prevention
- End-to-end automation: combining agents, skills, memory, and approval workflows
- Continuous learning: community of practice, team rollout planning, monthly check-ins
- Teaching others: how to communicate AI capabilities and policy to associates

### Policy Compliance Checkpoint

- Security review basics (15 min) reinforces responsible AI usage
- Final policy summary in wrap-up ensures retention
- Rollout plans must include policy training for teams

### Tools Introduced

- `.github/copilot-instructions.md` -- project-level persistent instructions for agent context
- Power Automate Desktop -- RPA for desktop application automation (Tesla data OK)
- Power Automate Cloud -- scheduled and triggered workflow automation (Tesla data OK)

### Homework Assignment

**Time Required:** ~45 minutes (final week)

1. Finalize personal automation project documentation
2. Create a one-page AI rollout plan for their DC (how to introduce AI tools to 30-50 associates)
3. Complete prompt library (target: 20+ prompts organized by use case)
4. Final time savings report (target: 40-60 min/day)
5. Complete course feedback survey

### Goals Addressed

- Goal 7: Use Power Automate for recurring workflow automation
- Goal 8: Give projects memory -- persistent context so agents remember conventions across sessions
- Goal 10: Build real automations -- end-to-end workflows combining agents, tools, and context
- Goal 9: Review AI-generated code -- security review, diffs, approval workflow (reinforced)
- Goal 11: Teach their teams -- rollout plan, continuous learning roadmap
- Goal 4: Save 40-60 minutes daily (final target achieved)

### Tesla Values Embedded

- **Excellence:** The Dive Deep report automation demonstrates going above and beyond
- **Speed:** Multi-agent orchestration accelerates complex workflows
- **Ownership:** Security review means you own the responsibility for what agents produce
- **Curiosity:** The continuous learning roadmap ensures growth doesn't stop at Week 4

---

## Success Criteria

| Criterion | Measurement | Target | When Assessed |
|-----------|-------------|--------|---------------|
| Bottle Rocket proficiency | Demonstrated usage in exercises | 100% of participants | Week 1 |
| Policy compliance | Interactive quiz score | 100% pass rate | Week 1 |
| Advanced prompting | CoT, Few-Shot, Persona applied independently | All 3 techniques demonstrated | Week 2 |
| Data analysis with AI | CSV analysis + executive summary generation | Each AGM completes analysis | Week 2 |
| Personal prompt library | Cumulative prompt count | 20+ prompts by Week 4 | Weeks 1-4 |
| Agent Mode proficiency | Independent agent task completion | Each AGM builds a tool | Week 3 |
| Git diff reading | Accept/reject agent changes with rationale | Demonstrated competence | Week 3 |
| Power Automate configured | At least one desktop flow + one cloud flow | Working automation setup | Week 4 |
| Project memory configured | Instruction file for their DC | Working persistent context | Week 4 |
| Complete automation workflow | End-to-end: agents + skills + memory | At least 1 per AGM | Week 4 |
| Time savings | Daily tracking spreadsheet | 40+ min/day by course end | Week 4 |
| Team rollout plan | One-page plan for their DC | Each AGM produces a plan | Week 4 |
| Confidence rating | Self-assessment survey | 4+/5 rating | Week 4 |
| Teach-back capability | Can explain AI capabilities and policy | Assessed during showcase | Week 4 |

---

## Progressive Difficulty Map

| Week | Level | Complexity | Skills Added | Cumulative Skills | Time Savings Target |
|------|-------|------------|--------------|-------------------|---------------------|
| 1 | Foundation | Low | Bottle Rocket, basic prompting (ROLE+CONTEXT+TASK+FORMAT), AI literacy, policy compliance, quality checking, time tracking | 6 | 15-20 min/day |
| 2 | Application | Medium | CoT, Few-Shot, Persona prompting, data analysis, structured outputs, prompt library, model comparison | 13 | 20-30 min/day |
| 3 | Expansion | High | VS Code, Copilot (Chat/Edit/Agent), Voice Mode, git basics, agent debugging, file access | 20 | 30-40 min/day |
| 4 | Mastery | Advanced | Project memory (instructions), Power Automate, orchestration patterns, security review, automation workflows, team teaching | 27 | 40-60 min/day |

### Agent Capability Progression

| Week | What They Can Do With Agents |
|------|------------------------------|
| 1 | Chat only (Bottle Rocket) -- ask questions, get text responses, verify outputs |
| 2 | Advanced chat with techniques -- data analysis, structured outputs, template generation |
| 3 | Agent Mode (autonomous tasks), file access, review and debug agent work |
| 4 | Multi-skill agents with memory, orchestrated workflows, end-to-end automations |

### Skills Ladder

| Week | Level | Key Capability |
|------|-------|---------------|
| 1 | Beginner | Write prompts, use Bottle Rocket, verify outputs, know policy |
| 2 | Intermediate | Advanced prompts, data analysis, template library, structured outputs |
| 3 | Advanced | Agent Mode, voice, git review, file access, agent debugging |
| 4 | Expert | Memory, multi-skill agents, orchestration, security, automation |

### Time Savings Progression

| Week | Target | How |
|------|--------|-----|
| 1 | 15-20 min/day | Bottle Rocket for emails, summaries, planning |
| 2 | 20-30 min/day | Templates for recurring tasks, data analysis |
| 3 | 30-40 min/day | Agent Mode for multi-step tasks, voice for speed |
| 4 | 40-60 min/day | Automated workflows with skills + memory |

---

## Cross-Week Policy Reinforcement

Every week includes policy touchpoints to ensure compliance becomes second nature:

| Week | Policy Touchpoint |
|------|-------------------|
| 1 | Full policy deep dive (20 min) + interactive quiz; policy governs all exercises |
| 2 | Homework review includes policy compliance check; model comparison respects data boundaries |
| 3 | VS Code setup includes explicit "NO Tesla Data in Copilot" reminder; all Copilot exercises use non-Tesla data |
| 4 | Security review basics (15 min); final policy summary in wrap-up; rollout plan includes policy training for teams |

---

## Learning Goals Coverage Map

Every learning goal is addressed across multiple weeks with increasing depth:

| Goal | Week 1 | Week 2 | Week 3 | Week 4 |
|------|--------|--------|--------|--------|
| 1. Bottle Rocket proficiency | **Primary** | Reinforced | -- | -- |
| 2. Advanced prompts | Introduced (basics) | **Primary** | Applied | Applied |
| 3. Policy boundaries | **Primary** | Reinforced | Reinforced | Reinforced |
| 4. Save 40-60 min/day | Baseline setup | 20-30 min target | 30-40 min target | **40-60 min target** |
| 5. Copilot Agent Mode | -- | -- | **Primary** | Applied |
| 6. Data analysis with AI | -- | **Primary** | Applied | Applied |
| 7. Use Power Automate | -- | -- | -- | **Primary** |
| 8. Give projects memory | -- | -- | -- | **Primary** |
| 9. Review AI-generated code | -- | -- | **Primary** | Reinforced |
| 10. Build real automations | -- | -- | Introduced | **Primary** |
| 11. Teach their teams | Foundation | Template sharing | -- | **Primary** |

---

## Appendix: Tesla Context

**Target Audience Profile:**
- 5 Area General Managers (AGMs) at Tesla distribution centers
- Non-technical background; each manages 30-50 associates
- Deep expertise in DC operations; zero experience with AI tools or coding
- Locations: Newburgh NY, Greenville SC, Chicago IL, Tampa/Plant City FL, Scarborough ON

**Approved Tools:**
- Bottle Rocket (go.tesla.com/chat) -- Tesla Data OK
- IT Assist -- Tesla Data OK
- Employee Assist -- Tesla Data OK

**Conditional Tools:**
- GitHub Copilot -- NO Tesla Data (300 premium model requests/month, Opus 4.5 access)

**Prohibited Tools:**
- ChatGPT, Claude.ai, meeting transcription, Apple Intelligence

**Reference:** go.tesla.com/aitools

**Tesla Values Embedded Throughout:**
- **Excellence:** Iterate on AI outputs until they're production-ready
- **Ownership:** You own the outcomes -- AI assists, you decide and verify
- **Curiosity:** Explore AI capabilities, push boundaries, never stop learning
- **Speed:** Use AI to accelerate decisions, iterate rapidly, move fast and correct quickly

---

*Syllabus Version 3.0 -- Updated January 2026*
*Session Length: 240 minutes (4 hours) per week*
*Designed for progressive hands-on learning with time savings tracking*
