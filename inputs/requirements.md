# Training Requirements

## Course Information

**Course Title:** AI Tools for Operations Leaders
**Duration:** 4 weeks
**Session Length:** 240 minutes per week (4 hours)
**Format:** Virtual training + async homework
**Ambition Level:** Zero AI knowledge → Advanced agentic coding proficiency

## Target Audience

**Who:** 5 Area General Managers (AGMs)
**Company:** Tesla
**Department:** Supply Chain Operations
**Locations:**
- Newburgh, NY
- Greenville, SC
- Chicago, IL
- Tampa/Plant City, FL
- Scarborough, ON (Canada)

**Profile:**
- Operations managers, non-technical background
- Each manages 30-50 associates
- Deep expertise in DC operations
- Zero experience with AI tools or coding
- Busy schedules, need practical, immediately applicable skills

## Tools to Cover

### Primary (Tesla Data OK)
- **Bottle Rocket** (go.tesla.com/chat)
  - Tesla's approved AI chat interface
  - Multiple models: Grok, Claude, Gemini
  - Can use with Tesla Data

### Secondary (No Tesla Data)
- **GitHub Copilot** (in VS Code)
  - Code assistance and automation
  - Chat mode, Edit mode, Agent mode
  - Access to Claude Opus 4.5 (premium model)
  - Voice mode for dictation
  - 300 requests/month for premium models
  - NO Tesla Data allowed
  - MCP tool integration (Playwright, Filesystem, etc.)

## Learning Goals

After completing this course, AGMs should be able to:

1. **Use Bottle Rocket confidently** for daily operations tasks
2. **Write advanced prompts** (CoT, Few-Shot, Persona, structured outputs) without help
3. **Know policy boundaries cold** — instant recall of approved/conditional/prohibited tools
4. **Save 40-60 minutes daily** through AI-assisted tasks
5. **Use GitHub Copilot Agent Mode** to build multi-file projects autonomously
6. **Analyze data with AI** — upload CSVs, extract trends, generate executive summaries
7. **Give agents skills** — extend agent capabilities with MCP tools and custom configurations
8. **Give projects memory** — set up persistent context so agents remember project conventions across sessions
9. **Review AI-generated code** — read diffs, catch mistakes, approve/reject agent changes
10. **Build real automations** — end-to-end workflows combining agents, tools, and context
11. **Teach their teams** — explain AI capabilities and policy to their 30-50 associates

## Policy Constraints

Must emphasize throughout:
- ✅ Approved: Bottle Rocket, IT Assist, Employee Assist
- ⚠️ Conditional: GitHub Copilot (no Tesla data)
- ❌ Prohibited: ChatGPT, Claude.ai, meeting transcription, Apple Intelligence
- Reference: go.tesla.com/aitools

---

## Week-by-Week Content

### Week 1: AI Foundations & Policy Compliance (240 min)

**Goal:** From zero → confident Bottle Rocket user with solid prompt skills and AI literacy.

**Sections:**
1. Why AI Matters for Operations (10 min)
   - Business case: time savings, decision quality, consistency
   - AI as augmentation, not replacement
   - Common misconceptions and realistic expectations

2. Tesla AI Policy Deep Dive (20 min)
   - Three tiers: Approved / Conditional / Prohibited
   - "Tesla Data" definition with concrete examples
   - Scenarios: which tool for which task?
   - Policy quiz (interactive)

3. Introduction to Bottle Rocket (15 min demo)
   - Access via go.tesla.com/chat
   - Interface navigation, model selection
   - Live demo: first query

4. Prompt Engineering Basics (15 min)
   - The 4-part formula: ROLE + CONTEXT + TASK + FORMAT
   - Good vs bad prompt examples from operations
   - Iteration: refining outputs

5. Exercise 1: First Guided Prompt (20 min)
   - Instructor-guided, step-by-step
   - Operations scenario (e.g., draft a shift summary)

6. Exercise 2: Create 3 Operations Prompts (25 min)
   - Independent practice
   - Real scenarios: labor planning, safety report, vendor email

— BREAK (10 min) —

7. Understanding AI Models (20 min) **[NEW]**
   - Claude, GPT, Gemini, Grok — what each is good at
   - When to use which model in Bottle Rocket
   - Temperature, tokens, context windows (conceptual, not technical)
   - Why Opus 4.5 matters for their Copilot access

8. Bottle Rocket Deep Workshop (35 min) **[NEW]**
   - Real DC scenarios with realistic data patterns:
     - Analyze headcount allocation across shifts
     - Generate a safety incident summary from raw notes
     - Draft vendor communication for delayed shipment
     - Create a training outline for new associates
   - Each scenario: write prompt → get output → iterate → improve

9. Quality Checking AI Outputs (20 min) **[NEW]**
   - Hallucination detection: how to spot made-up facts
   - Verification techniques: cross-reference, ask for sources
   - When to trust vs. verify — the 80/20 rule
   - Exercise: find 3 errors in a sample AI output

10. Exercise 3: Iterate, Verify & Improve (25 min) **[EXPANDED]**
    - Take a prompt from Exercise 2
    - Apply verification techniques
    - Iterate until output is production-ready
    - Document before/after quality

11. Time Savings Baseline Setup (15 min) **[NEW]**
    - Install time tracking method (simple spreadsheet or form)
    - Measure baseline: how long does task X take without AI?
    - Record first AI-assisted task timing
    - Set personal goal for Week 2

12. Wrap-up & Homework (10 min)
    - Homework: 3 real work tasks using Bottle Rocket, track time savings
    - Bring best prompt + worst prompt to Week 2

**Week 1 Totals:** 240 min | ~105 min hands-on (44%) | ~135 min instruction/demo (56%)
*Note: Week 1 is heavier on instruction because everything is new. Hands-on ratio increases each week.*

---

### Week 2: Prompt Engineering & Data Analysis (240 min)

**Goal:** Master advanced prompting techniques, analyze real operations data with AI, build a personal template library.

**Sections:**
1. Homework Review + Time Savings Check-in (15 min)
   - Peer sharing: best prompt, worst prompt
   - Time savings so far (target: 15-20 min/day)
   - Celebration of wins

2. Advanced Prompting Techniques (15 min)
   - Chain-of-Thought (CoT): "Think step by step"
   - Few-Shot: providing 2-5 examples
   - Persona-Based: specific expertise + traits
   - When to use which technique

3. Exercise 1: Chain-of-Thought on Productivity Analysis (25 min)
   - Use CoT to analyze a shift's productivity data
   - Compare CoT output vs simple prompt output
   - Measure quality improvement

4. Operations Use Cases Overview (10 min)
   - 5 high-impact scenarios for AGMs:
     - Labor planning & productivity analysis
     - Safety incident root cause (5-Whys)
     - Vendor communication templates
     - KPI dashboard narratives
     - SOP documentation

— BREAK (10 min) —

5. Exercise 2: Build 3 Operations Templates (25 min)
   - Each AGM builds templates for their top 3 use cases
   - Use Few-Shot technique for consistent formatting
   - Templates must be reusable (parameterized)

6. Data Analysis with AI (25 min) **[NEW]**
   - How to present data to AI (paste tables, describe CSVs)
   - Asking for trends, outliers, comparisons
   - Generating charts/tables from raw data
   - Executive summary generation from numbers
   - Live demo: analyze a sample headcount report

7. Exercise 3: Analyze a Sample DC Dataset (30 min) **[NEW]**
   - Upload/paste sample CSV data (headcount, throughput, safety metrics)
   - Ask AI to: identify trends, flag anomalies, recommend actions
   - Generate an executive summary with key callouts
   - Compare outputs across different prompting techniques

— BREAK (10 min) —

8. Structured Outputs (15 min) **[NEW]**
   - Getting AI to output in consistent formats
   - Tables, checklists, formatted reports
   - Markdown formatting for clean documents
   - Template output patterns (fill-in-the-blank, standardized sections)

9. Building Your Personal Prompt Library (20 min) **[NEW]**
   - Organizing prompts by use case
   - Versioning prompts (tracking what works)
   - Sharing across the AGM team
   - Creating a "prompt playbook" for their DC

10. Exercise 4: Model Comparison Challenge (20 min)
    - Same prompt across Claude, Gemini, Grok in Bottle Rocket
    - Score each output on accuracy, usefulness, format
    - Document which model works best for which task

11. Share & Discuss + Key Takeaways (15 min)
    - Peer learning: share best templates
    - Cross-pollination of use cases across DCs

12. Homework (5 min)
    - Build 2 more templates
    - Track time savings (target: 20-30 min/day)
    - Bring a real dataset from their DC for Week 3

**Week 2 Totals:** 240 min | ~135 min hands-on (56%) | ~105 min instruction (44%)

---

### Week 3: VS Code, Copilot & Agent Mode (240 min)

**Goal:** Set up GitHub Copilot, master Voice Mode, understand Agent Mode deeply, learn to review and debug agent work.

**Sections:**
1. Time Savings Review (10 min)
   - Cumulative check: are we hitting 20-30 min/day?
   - Adjust strategies for those behind

2. VS Code + Copilot Setup (20 min)
   - Installation walkthrough
   - Extension setup, sign-in
   - Troubleshooting common issues
   - Policy reminder: NO Tesla Data in Copilot

3. Copilot Chat & Commands (15 min)
   - @workspace, @terminal, @vscode commands
   - Chat vs Edit vs Agent modes — when to use each
   - How it differs from Bottle Rocket
   - Opus 4.5 model selection

4. Exercise 1: Copilot Chat for Operations Scripts (20 min)
   - Generate a simple Python/JavaScript script via chat
   - Task: create a calculator, data formatter, or report template
   - Practice the chat → code → run cycle

— BREAK (10 min) —

5. Voice Mode Setup & Practice (15 min)
   - Installation and configuration
   - Walky-talky mode for quick dictation
   - 3-5x speed advantage over typing (150 WPM vs 40 WPM)

6. Exercise 2: Voice-Dictated Email Draft (15 min)
   - Dictate a real operations email via voice
   - Iterate and refine using voice commands
   - Time savings: 5-10 min → 2-3 min per email

7. Agent Mode Deep Dive (25 min) **[EXPANDED from 15 min]**
   - How agents think: the Plan-Execute-Iterate loop
   - Reading and understanding agent plans BEFORE approving
   - Terminal command approval — what to approve, what to reject
   - Autonomous context discovery (agents read your files)
   - Opus 4.5 capabilities: multi-step reasoning, tool use
   - Live demo: watch an agent build something step by step

8. Exercise 3: Agent Builds a Real Tool (25 min) **[NEW — replaces trivial folder exercise]**
   - Agent creates a time-savings tracking dashboard (HTML page)
   - AGMs watch the plan, approve steps, review output
   - Practice: pause the agent, redirect, continue
   - Result: a working tool they can actually use

— BREAK (10 min) —

9. Git Basics for Reviewing AI Changes (20 min) **[NEW]**
   - What is git? (version control in 5 minutes)
   - Reading diffs: what changed, what was added/removed
   - Accepting vs rejecting agent edits
   - Undoing mistakes: how to roll back
   - Why this matters: agents can modify many files at once

10. Debugging Agent Mistakes (15 min) **[NEW]**
    - When agents go wrong: common failure patterns
    - Redirecting an agent mid-task
    - Giving better instructions after a bad output
    - The "undo and retry" workflow
    - When to start fresh vs. when to correct

11. Giving Agents Skills: MCP Tools Introduction (20 min) **[NEW]**
    - What are MCP tools? (Model Context Protocol explained simply)
    - The concept: agents start limited, you give them new abilities
    - Analogy: installing apps on a phone gives it new capabilities
    - Overview of available MCPs: browser automation, file access, databases, APIs
    - Demo: show an agent WITHOUT a tool trying a task, then WITH the tool
    - How skills change what agents can do (before/after comparison)

12. Exercise 4: Give an Agent Its First Skill (20 min) **[NEW]**
    - Install Playwright MCP (browser automation)
    - Agent task: navigate to a public website, extract information
    - Compare: what the agent could do before vs. after the skill
    - Discuss: what other skills would be useful for their DC work?

13. Wrap-up + Homework (10 min)
    - Homework: use Agent Mode for 2 real tasks, track time savings
    - Think about: what skills would your ideal agent need?
    - Prepare: what project would you automate if you could?

**Week 3 Totals:** 240 min | ~135 min hands-on (56%) | ~105 min instruction (44%)

---

### Week 4: Memory, Advanced Skills & Multi-Agent Workflows (240 min)

**Goal:** Master agent customization (skills + memory), build complex automations, complete personal project, graduate as advanced AI users.

**Sections:**
1. Time Savings Final Review + ROI (10 min)
   - Cumulative results: target 40-60 min/day
   - Calculate annual ROI per AGM
   - Business case for expanding to their teams

2. Giving Projects Memory (25 min) **[NEW]**
   - The problem: agents forget everything between sessions
   - Solution 1: Project instruction files (`.github/copilot-instructions.md`)
     - What they are: persistent instructions agents read every time
     - What to include: team conventions, terminology, standards, constraints
     - Live demo: create an instruction file, show agent following it
   - Solution 2: Memory MCP (knowledge graph)
     - What it is: a persistent database of facts agents can read and write
     - Entities, relationships, observations — like the agent's notebook
     - When to use instructions vs memory vs both
   - The combination: instructions set the rules, memory stores the knowledge

3. Exercise 1: Build Your Project's Memory (25 min) **[NEW]**
   - Create a `.github/copilot-instructions.md` for a DC operations project
     - DC-specific terminology and abbreviations
     - Report formatting standards
     - Policy reminders (approved tools, data handling)
     - Team conventions (naming, file structure)
   - Set up Memory MCP with key project facts
     - Store: KPIs, team structure, vendor contacts, process definitions
   - Test: ask the agent a question — see it use the memory

— BREAK (10 min) —

4. Advanced Agent Skills: Tool Ecosystem (20 min) **[NEW]**
   - Deep dive into MCP tool categories:
     - Browser automation (Playwright): web scraping, form filling, testing
     - File system access: read/write files, organize directories
     - Database tools: query data, generate reports
     - API integration: connect to external services
   - How to install and configure MCP tools
   - Choosing the right tools for your workflow
   - Security considerations: what tools should access what

5. Exercise 2: Multi-Skill Agent Workflow (25 min) **[NEW]**
   - Give agent access to Playwright + Filesystem MCPs
   - Task: agent navigates a public website → extracts data → saves to organized files → generates a summary report
   - AGMs approve each step, review outputs
   - Discuss: how would this apply to their real DC tasks?

— BREAK (10 min) —

6. Multi-Agent Orchestration Patterns (15 min)
   - Sequential: A → B → C (pipeline)
   - Parallel: A, B, C simultaneously (speed)
   - Supervisor: delegator assigns to specialists
   - Human-in-the-loop: approval gates for critical decisions
   - Real example: this training course was built using orchestration

7. Security Review Basics (15 min) **[NEW]**
   - Never commit secrets (API keys, passwords, tokens)
   - Reviewing AI-generated code: what to look for
   - Data exposure risks: what should never be in code
   - The approval workflow: read before you approve
   - Simple checklist for reviewing agent outputs

8. Exercise 3: Dive Deep Report Automation (25 min) **[EXPANDED]**
   - End-to-end workflow with skills + memory:
     - Agent reads project instructions (knows DC conventions)
     - Agent uses memory (knows KPIs and team structure)
     - Agent uses Playwright (gathers data from public source)
     - Agent uses Filesystem (organizes output files)
     - Agent generates formatted Dive Deep report
   - Full cycle: plan → approve → execute → review → iterate

9. Personal Project Showcase (25 min) **[NEW]**
   - Each AGM presents their automation project
   - Peer review: what worked, what was hard
   - Time savings demonstration
   - Cross-DC idea sharing

10. Continuous Learning Roadmap (15 min) **[EXPANDED]**
    - Resources for continued learning
    - Community of practice: ongoing AGM collaboration
    - Teaching their teams: how to roll out AI skills to 30-50 associates
    - What's next: upcoming tools, features, capabilities
    - Monthly check-in plan

11. Course Wrap-up + Final Q&A (10 min)
    - Final policy summary
    - Certificate of completion / recognition
    - Feedback collection

**Week 4 Totals:** 240 min | ~120 min hands-on (50%) | ~120 min instruction (50%)
*Note: Week 4 is balanced because it introduces advanced concepts that need explanation before practice.*

---

## Cross-Week Progression

### Skills Ladder
| Week | Level | Key Capability |
|------|-------|---------------|
| 1 | Beginner | Write prompts, use Bottle Rocket, verify outputs |
| 2 | Intermediate | Advanced prompts, data analysis, template library |
| 3 | Advanced | Agent Mode, voice, git review, first MCP skill |
| 4 | Expert | Memory, multi-skill agents, orchestration, security |

### Time Savings Progression
| Week | Target | How |
|------|--------|-----|
| 1 | 15-20 min/day | Bottle Rocket for emails, summaries, planning |
| 2 | 20-30 min/day | Templates for recurring tasks, data analysis |
| 3 | 30-40 min/day | Agent Mode for multi-step tasks, voice for speed |
| 4 | 40-60 min/day | Automated workflows with skills + memory |

### Agent Capability Progression
| Week | What They Can Do With Agents |
|------|------------------------------|
| 1 | Chat only (Bottle Rocket) |
| 2 | Advanced chat with techniques |
| 3 | Agent Mode (autonomous tasks), first skill (Playwright) |
| 4 | Multi-skill agents with memory, orchestrated workflows |

---

## Homework Expectations

Each week should include:
- 2-3 practice exercises using real work tasks
- Time savings tracking (mandatory)
- Prompt library building (cumulative)
- ~45 minutes of async work

## Success Metrics

- All AGMs can demonstrate Bottle Rocket proficiency (Week 1)
- Each AGM has a personal prompt library (20+ prompts by Week 4)
- Policy compliance quiz passed with 100% (Week 1)
- Each AGM can analyze data with AI (Week 2)
- Each AGM can use Agent Mode independently (Week 3)
- Each AGM has configured agent skills + memory for their DC (Week 4)
- At least one complete automation workflow per AGM (Week 4)
- Measured time savings: 40+ min/day by course end
- Each AGM can articulate a plan to train their team

## Tesla Values to Embed

- **Excellence:** Go above and beyond — don't accept the first AI output, iterate until it's great
- **Ownership:** You own the outcomes — AI assists, you decide and verify
- **Curiosity:** Never stop learning — explore what AI can do, push boundaries
- **Speed:** Move fast, correct quickly — use AI to accelerate, iterate rapidly
