# Slide Plan: Week 3 — VS Code, Agents & How AI Thinks

**Session Duration:** 240 minutes (4 hours)
**Total Slides:** 58
**Slide Dimensions:** 960px x 540px (16:9)
**Theme:** Tesla light (#ffffff background, #cc0000 accent red)
**Theme Details:**
- Background: #ffffff (white)
- Cards: #f5f5f5 bg with 1px solid #e0e0e0 border
- Accent red: #cc0000
- Text: headings #000000, body #666666
- Semantic colors: success #4ade80, warning #facc15, error #f87171
**Version:** 2.0 — Expanded with quizzes, templates, and activities (matching Week 1 quality)

---

## Slide 01
- **Type:** Title
- **Title:** VS Code, Agents & How AI Thinks
- **Subtitle:** From Chat to Agent: Understanding How AI Works for You
- **Metadata:**
  - Label: WEEK 3 OF 4
  - Duration: 240 minutes
  - Hands-on: 54%
  - Tools: VS Code + GitHub Copilot, Bottle Rocket

---

## Slide 02
- **Type:** Agenda
- **Title:** Today's Agenda
- **Items:**
  1. Time Savings Review (10 min)
  2. VS Code + Copilot Setup (20 min) — includes Exercise 1 Part A
  3. Copilot Chat, @ Commands & Voice Mode (15 min)
  4. Exercise 1: Voice + Chat Practice (20 min)
  5. BREAK (10 min)
  6. What Is an AI Agent? (20 min)
  7. Agent Mode Deep Dive (15 min)
  8. Exercise 2: Build Your First DC Agent (25 min)
  9. BREAK (10 min)
  10. How AI Finds Information — RAG Lite (15 min)
  11. Git Basics: Reviewing AI Changes (15 min)
  12. Exercise 3: Agent Builds a Tool + Review (20 min)
  13. Hallucination, Safety & Debugging Agents (15 min)
  14. Exercise 4: Spot the Mistakes (20 min)
  15. Wrap-up + Homework (10 min)
- **Footer note:** Hands-on time: ~130 min (54%) | Instruction/demo: ~90 min (38%) | Breaks: ~20 min (8%)

---

## Slide 03
- **Type:** Divider
- **Section Number:** 01
- **Section Title:** Time Savings Review
- **Duration:** 10 min

---

## Slide 04
- **Type:** Content
- **Title:** Weeks 1-2 Wins — Celebrating Progress
- **Bullets:**
  - What worked best? Which prompts saved the most time?
  - What surprised you? Any unexpected benefits or challenges?
  - Weekly totals: Share your time savings from tracking logs
  - Team impact: Did you share techniques with associates?
- **Callout:** Voice input is 3-5x faster than typing — today we add this capability
- **Visual note:** Discussion slide with sharing prompts, momentum callout
- **Footer:** Every prompt you tested made you better. Today we multiply those savings.

---

## Slide 05
- **Type:** Divider
- **Section Number:** 02
- **Section Title:** VS Code + Copilot Setup
- **Duration:** 20 min

---

## Slide 06
- **Type:** Grid
- **Title:** Setup Checklist — 6 Steps
- **Layout:** 2x3 grid of steps
- **Card 1 — Step 1: VS Code:**
  - Download from code.visualstudio.com
  - Or install from Microsoft Store
  - Launch after installation
- **Card 2 — Step 2: Copilot Extensions:**
  - Open Extensions (Ctrl+Shift+X)
  - Search "GitHub Copilot"
  - Install both Copilot + Copilot Chat
- **Card 3 — Step 3: Sign In:**
  - Click Copilot icon in Status Bar
  - Select "Set up Copilot"
  - Sign in with Tesla GitHub account
- **Card 4 — Step 4: Voice Extension:**
  - Search "VS Code Speech"
  - Install the extension
  - Look for microphone icon
- **Card 5 — Step 5: Verify:**
  - See Copilot icon in Status Bar
  - Open Copilot Chat (Ctrl+Alt+I)
  - Type "Hello" and get response
- **Card 6 — Step 6: Workspace:**
  - File > Open Folder
  - Create "ai-projects" on Desktop
  - This is your workspace for today
- **Footer:** Raise hand if stuck — we'll help troubleshoot

---

## Slide 07
- **Type:** Content
- **Title:** Troubleshooting Common Issues
- **Layout:** Problem/solution table
- **Table:**
  | Problem | Solution |
  |---------|----------|
  | Can't sign in | Sign out of browser, try again with Tesla GitHub |
  | No Copilot icon | Search "GitHub Copilot" in Extensions panel |
  | Auth loops | Sign out everywhere, fresh start |
  | Microphone not detected | Check Windows Sound Settings > Input |
- **Visual note:** Compact troubleshooting reference
- **Footer:** Most issues resolve with sign-out/sign-in. IT contact available if needed.

---

## Slide 08
- **Type:** Divider
- **Section Number:** 03
- **Section Title:** Copilot Chat, @ Commands & Voice Mode
- **Duration:** 15 min

---

## Slide 09
- **Type:** Grid
- **Title:** The @ Commands — Your AI Specialists
- **Layout:** 3 columns
- **Card 1 — @workspace:**
  - Searches your entire project folder
  - Example: "Find all files that mention inventory"
  - Best for: project navigation, file search
- **Card 2 — @terminal:**
  - Generates and runs terminal commands
  - Example: "Create a new folder called reports"
  - Best for: file operations, automation
- **Card 3 — @vscode:**
  - Controls VS Code settings and features
  - Example: "Change to dark theme"
  - Best for: editor customization, shortcuts
- **Footer:** Each @ command talks to a different specialist. Direct your questions.

---

## Slide 10
- **Type:** Comparison
- **Title:** Copilot Chat vs. Bottle Rocket
- **Left Column (Bottle Rocket):**
  - Header: Tesla Data OK
  - Tesla data: ALLOWED
  - File creation: No
  - Terminal commands: No
  - Voice input: No
  - Agent Mode: No
- **Right Column (Copilot Chat):**
  - Header: NO Tesla Data
  - Tesla data: NOT ALLOWED
  - File creation: Yes
  - Terminal commands: Yes
  - Voice input: Yes
  - Agent Mode: Yes
- **Bottom callout (red border):** CRITICAL: Never paste Tesla data into Copilot. Use Bottle Rocket for employee/customer/order data.

---

## Slide 11
- **Type:** Content
- **Title:** Voice Mode — 3-5x Faster Than Typing
- **Bullets:**
  - Humans speak at 150 WPM vs type at 40 WPM
  - Voice keeps you in flow state
  - Ctrl+U = Voice Chat (talk to Copilot)
  - Ctrl+Alt+V = Editor Dictation (type with voice)
  - Escape = Stop Dictation
  - Hold Ctrl+Alt+V = Walky-Talky mode
- **Visual note:** Keyboard shortcut reference card
- **Footer:** Voice may feel awkward at first. By end of Exercise 1, it will feel natural.

---

## Slide 12
- **Type:** Exercise
- **Badge:** EXERCISE 1
- **Title:** Voice + Chat Practice
- **Time Box:** 20 minutes
- **Scenario:** Practice @ commands, voice chat, and voice-dictated content
- **Instructions:**
  1. Exercise 1a (5 min): Use @workspace, @terminal, @vscode once each
  2. Exercise 1b (5 min): Have a voice conversation with Copilot (Ctrl+U)
  3. Exercise 1c (10 min): Draft an email to your regional director using voice
- **Success Criteria:**
  - [ ] Used all three @ commands
  - [ ] Completed voice chat conversation (2+ exchanges)
  - [ ] Dictated email draft using voice
  - [ ] Iterated with follow-up voice prompt
- **Policy reminder:** No Tesla data in Copilot — use placeholders like [INSERT METRICS]

---

## Slide 13
- **Type:** Template
- **Badge:** EXERCISE 1 TEMPLATE
- **Title:** Voice + Chat Prompt Templates
- **Layout:** Two-column code blocks
- **Left Column — Voice Chat Prompt:**
  ```
  "Create a professional email to my
  regional director summarizing our
  DC's performance this week.

  Include placeholder sections for:
  - Metrics
  - Highlights
  - Challenges
  - Action items

  Make it under 200 words."
  ```
- **Right Column — @ Command Examples:**
  ```
  @workspace What folders exist in
  this project?

  @terminal create a file called
  notes.md

  @vscode What keyboard shortcuts
  are available for Copilot?
  ```
- **Tip Box:** Replace placeholders with real DC info AFTER copying output to Bottle Rocket
- **Footer:** Time: 20 min | Tool: GitHub Copilot (NO Tesla Data)

---

## Slide 14
- **Type:** Divider
- **Section Number:** 05
- **Section Title:** What Is an AI Agent?
- **Duration:** 20 min

---

## Slide 15
- **Type:** Comparison
- **Title:** Chat vs. Agent — The Big Difference
- **Left Column (gray — CHAT MODE):**
  - Header: Helpline Approach
  - You say: "Write me a shift handoff template"
  - AI does: Generates text in chat window
  - Steps: 1 (answer the question)
  - Output: Text you copy-paste
  - Analogy: Calling a helpline
- **Right Column (green — AGENT MODE):**
  - Header: Assistant Approach
  - You say: "Create a shift handoff system with template, sample, and README"
  - AI does: Creates 3 files in your project
  - Steps: Multiple (plan, create, verify)
  - Output: Files ready to use
  - Analogy: Hiring an experienced assistant
- **Bottom callout:** Chat gives you text. Agents give you results.

---

## Slide 16
- **Type:** Interactive Quiz
- **Badge:** INTERACTIVE QUIZ
- **Title:** Chat or Agent Mode?
- **Subtitle:** For each scenario, call out: CHAT or AGENT
- **Table:**
  | # | Scenario | Answer |
  |---|----------|--------|
  | 1 | Quick answer about Excel formulas | ? |
  | 2 | Build a 5-file project template | ? |
  | 3 | Brainstorm email subject lines | ? |
  | 4 | Create folder structure for new initiative | ? |
  | 5 | Explain what a term means | ? |
  | 6 | Generate weekly report system with templates | ? |
  | 7 | Draft one email to copy-paste | ? |
  | 8 | Build automation that creates multiple files | ? |

---

## Slide 17
- **Type:** Answer Key
- **Badge:** ANSWER KEY
- **Title:** Chat or Agent Mode? — Answers
- **Subtitle:** Blue = Chat | Green = Agent
- **Table:**
  | # | Scenario | Answer |
  |---|----------|--------|
  | 1 | Quick answer about Excel formulas | CHAT |
  | 2 | Build a 5-file project template | AGENT |
  | 3 | Brainstorm email subject lines | CHAT |
  | 4 | Create folder structure for new initiative | AGENT |
  | 5 | Explain what a term means | CHAT |
  | 6 | Generate weekly report system with templates | AGENT |
  | 7 | Draft one email to copy-paste | CHAT |
  | 8 | Build automation that creates multiple files | AGENT |
- **Footer:** Rule: Chat = answers you copy. Agent = files it creates.

---

## Slide 18
- **Type:** Content
- **Title:** The ReAct Pattern — How Agents Think
- **Layout:** Process flow diagram
- **Steps:**
  1. THINK: Agent analyzes what needs to happen
     - "I need to create 3 files: template, sample, README"
  2. ACT: Agent takes one step
     - Creates the template file
  3. OBSERVE: Agent checks if it worked
     - "File created successfully. Moving to next step."
  4. REPEAT: Back to step 1 until goal is met
- **Analogy callout:** Like a new hire who thinks before acting and checks their work after each step
- **Visual note:** Circular flow diagram with arrows: Think -> Act -> Observe -> Repeat
- **Footer:** You describe the goal. The agent figures out the steps.

---

## Slide 19
- **Type:** Activity
- **Badge:** ACTIVITY A
- **Title:** Watch the Agent Think
- **Time Box:** 5 minutes (during demo)
- **Subtitle:** Observation exercise — watch for the ReAct pattern in action
- **Instructions:**
  1. As facilitator demos Agent Mode, observe each phase:
  2. THINK: What does the agent announce it will do?
  3. ACT: What specific action does it take?
  4. OBSERVE: How does it verify success?
  5. REPEAT: When does it loop back?
- **Observation Checklist:**
  - [ ] Agent announced its plan before acting
  - [ ] Created one file at a time (not all at once)
  - [ ] Confirmed each file was created successfully
  - [ ] Moved to next step only after verification
- **Footer:** Understanding the pattern helps you give better instructions and catch when agents go wrong.

---

## Slide 20
- **Type:** Grid
- **Title:** When to Use Chat vs. Agent
- **Layout:** 2 columns
- **Card 1 — Use CHAT when you need:**
  - Quick answer to a question
  - Brainstorming or idea generation
  - Simple draft (email, list, summary)
  - Explanation of a concept
  - One-shot output to copy-paste
- **Card 2 — Use AGENT when you need:**
  - Multiple files created as a project
  - Task with several connected steps
  - Files and folders on your computer
  - Terminal commands executed
  - Something BUILT, not just described
- **Footer:** Rule of thumb: Chat = answers, Agent = deliverables

---

## Slide 21
- **Type:** Divider
- **Section Number:** 06
- **Section Title:** Agent Mode Deep Dive
- **Duration:** 15 min

---

## Slide 22
- **Type:** Content
- **Title:** The Agent Mindset — Goal, Not Steps
- **Layout:** Before/after comparison
- **Left (red — OLD WAY):**
  - Header: Micro-Managing (Don't Do This)
  - "First create a file called template.md. Then add a header that says Shift Handoff. Then add a section for outgoing shift..."
- **Right (green — NEW WAY):**
  - Header: Goal-Oriented (Do This)
  - "Create a shift handoff system for a distribution center. Capture outgoing summary, ongoing issues, and incoming priorities. Include template and sample."
- **Bottom callout:** Describe the destination, not the turn-by-turn directions. The agent plans the steps.

---

## Slide 23
- **Type:** Grid
- **Title:** Terminal Command Approval — Safety First
- **Layout:** 2 columns
- **Card 1 — Safe to Approve:**
  - mkdir (create folder)
  - touch (create file)
  - git status, git log, git add
  - ls, pwd, dir
- **Card 2 — Review Carefully:**
  - rm, del (deleting files)
  - curl, wget (downloading)
  - npm install, pip install (software)
  - Anything you don't understand
- **Bottom callout (red border):** Rule: If you wouldn't type it yourself, don't approve it.
- **Footer:** Never click "Continue" without reading what the agent plans to do.

---

## Slide 24
- **Type:** Exercise
- **Badge:** EXERCISE 2
- **Title:** Build Your First DC Agent
- **Time Box:** 25 minutes
- **Scenario:** Use Agent Mode to build a weekly labor planning tool
- **Goal Prompt:**
  "Create a weekly labor planning tool for a distribution center. Include: (1) README explaining the tool, (2) markdown template for weekly labor data with headcount by shift, planned vs actual hours, overtime, open positions, (3) sample data file with realistic numbers, (4) summary report analyzing the sample, (5) weekly review checklist. Put all in folder 'labor-planning'."
- **Instructions:**
  1. Enter Agent Mode (mode selector in Copilot Chat)
  2. Type or dictate the goal prompt
  3. Watch the agent plan, create, and verify
  4. Review each file before approving
  5. Iterate: "Add a column for temp workers"
- **Success Criteria:**
  - [ ] Agent created 5 files in labor-planning folder
  - [ ] Reviewed all files for accuracy
  - [ ] Successfully iterated with follow-up request

---

## Slide 25
- **Type:** Template
- **Badge:** EXERCISE 2 TEMPLATE
- **Title:** DC Agent Builder — Prompt Template
- **Layout:** Code block with tip box
- **Code Block:**
  ```
  "Create a [PROJECT TYPE] for a distribution center.

  The project should include:
  1. A README file explaining what this does and how to use it
  2. A markdown template for [DATA TYPE] that captures:
     - [FIELD 1]
     - [FIELD 2]
     - [FIELD 3]
  3. A sample data file with realistic numbers
  4. A summary report that analyzes the sample
  5. A [ADDITIONAL FILE TYPE]

  Put all files in a folder called '[FOLDER-NAME]'."
  ```
- **Tip Box:** Replace bracketed items with your specific needs. Be specific about fields you want captured.
- **Footer:** Tool: Copilot Agent Mode | Remember: NO Tesla data

---

## Slide 26
- **Type:** Content
- **Title:** Expected Folder Structure
- **Layout:** File tree visual
- **File Tree:**
  ```
  labor-planning/
    README.md           # Explains the tool and usage
    template.md         # Blank labor planning template
    sample-data.md      # Filled-in example for one week
    summary-report.md   # Analysis of the sample data
    weekly-checklist.md # Monday morning review list
  ```
- **Verification Checklist:**
  - [ ] README explains purpose and usage
  - [ ] Template has all requested fields
  - [ ] Sample uses realistic (not Tesla-specific) data
  - [ ] Summary references actual sample numbers
  - [ ] Checklist is actionable
- **Footer:** After agent completes, verify each file matches this structure.

---

## Slide 27
- **Type:** Divider
- **Section Number:** 08
- **Section Title:** How AI Finds Information — RAG Lite
- **Duration:** 15 min

---

## Slide 28
- **Type:** Content
- **Title:** Why AI "Makes Things Up"
- **Bullets:**
  - AI learned patterns from billions of pages during training
  - It predicts what words should come next — generates, doesn't look up
  - No memory of sources — generates text that sounds right
  - When it doesn't have real data, it fills gaps with plausible-sounding fiction
  - This is called HALLUCINATION
- **Analogy box:** Like someone who read every operations textbook but never set foot in a DC. They can write convincing reports, but the specific numbers are made up.
- **Visual note:** Brain icon with question marks
- **Footer:** AI's goal is text that sounds right. It doesn't know the difference between real and plausible.

---

## Slide 29
- **Type:** Comparison
- **Title:** The Solution: Ground AI in Real Data (RAG)
- **Left Column (red — WITHOUT RAG):**
  - Header: AI Guesses
  - You ask a question
  - AI generates from patterns only
  - Answer may contain hallucinated facts
  - Example: "Your DC processed 15,247 orders" (no data provided)
- **Right Column (green — WITH RAG):**
  - Header: AI Searches First
  - You ask a question
  - AI searches your documents first
  - AI finds relevant information
  - AI generates answer based on what it found
  - Answer is grounded in reality
- **Bottom callout:** RAG = Retrieval-Augmented Generation. Give AI a filing cabinet to search before it answers.

---

## Slide 30
- **Type:** Interactive Quiz
- **Badge:** INTERACTIVE QUIZ
- **Title:** Grounded or Hallucinated?
- **Subtitle:** For each statement, call out: GROUNDED or HALLUCINATED
- **Table:**
  | # | AI Says This... | Context | Answer |
  |---|-----------------|---------|--------|
  | 1 | "Your overtime was 12.3% last week" | You uploaded a spreadsheet with overtime data | ? |
  | 2 | "Industry average on-time delivery is 99.7%" | No data provided | ? |
  | 3 | "Based on the README, setup takes 3 steps" | Agent read the README in your project | ? |
  | 4 | "Tesla DCs process 50,000 orders daily" | Chatting with no files uploaded | ? |
  | 5 | "Your night shift is understaffed by 2" | You shared staffing CSV | ? |
  | 6 | "According to the 2025 OSHA report..." | No documents referenced | ? |

---

## Slide 31
- **Type:** Answer Key
- **Badge:** ANSWER KEY
- **Title:** Grounded or Hallucinated? — Answers
- **Subtitle:** Green = Grounded (safe) | Red = Hallucinated (verify!)
- **Table:**
  | # | Statement | Answer | Why |
  |---|-----------|--------|-----|
  | 1 | "Your overtime was 12.3%" | GROUNDED | Data came from your uploaded spreadsheet |
  | 2 | "Industry average is 99.7%" | HALLUCINATED | No source provided — made up |
  | 3 | "Setup takes 3 steps per README" | GROUNDED | Agent read actual file in workspace |
  | 4 | "Tesla DCs process 50,000/day" | HALLUCINATED | No data source — plausible fiction |
  | 5 | "Night shift understaffed by 2" | GROUNDED | Based on your CSV data |
  | 6 | "According to 2025 OSHA report" | HALLUCINATED | Report may not exist |
- **Footer:** Key question: "Did I give the AI this data?" If no, verify independently.

---

## Slide 32
- **Type:** Grid
- **Title:** RAG Tools You Already Use
- **Layout:** 3 columns
- **Card 1 — Bottle Rocket File Upload:**
  - Upload CSV, ask questions about data
  - Example: "Which shift is understaffed?"
  - Grounded in: Your uploaded file
- **Card 2 — Copilot @workspace:**
  - Points AI at your project files
  - Example: "What does the README say?"
  - Grounded in: Your project folder
- **Card 3 — Agent Mode with Files:**
  - Agent reads files to inform its work
  - Example: Agent reads template to generate matching sample
  - Grounded in: Workspace context
- **Bottom callout:** Every time you upload a file or point AI at documents, you're doing RAG.
- **Footer:** Want accurate answers? Feed AI your data. Don't trust it to know your DC.

---

## Slide 33
- **Type:** Activity
- **Badge:** ACTIVITY B
- **Title:** Upload and Query Demo
- **Time Box:** 5 minutes (during instruction)
- **Subtitle:** Watch how grounding AI in data changes the response
- **Demo Steps:**
  1. **Without data:** Ask Bottle Rocket "What were the top 3 issues at my DC last week?"
     - Result: AI says it doesn't have that info OR makes something up
  2. **With data:** Upload a sample issues CSV, ask the same question
     - Result: AI references specific data points from your file
- **Observation Checklist:**
  - [ ] Ungrounded response was vague or invented
  - [ ] Grounded response cited specific data
  - [ ] AI mentioned file name or data source
  - [ ] Numbers matched actual file contents
- **Footer:** Always provide data when you want accurate, specific answers.

---

## Slide 34
- **Type:** Divider
- **Section Number:** 09
- **Section Title:** Git Basics: Reviewing AI Changes
- **Duration:** 15 min

---

## Slide 35
- **Type:** Content
- **Title:** Reading a Diff — Before vs. After
- **Layout:** Code diff example
- **Explanation:**
  - GREEN lines = text that was ADDED (new content)
  - RED lines = text that was REMOVED (deleted content)
  - GRAY lines = text that stayed THE SAME (unchanged)
- **Example diff box:**
  ```
    # Weekly Report Template
  - Last updated: January 2026
  + Last updated: February 2026
    ## Sections
    - Headcount Summary
  + - Overtime Analysis
  + - Safety Incidents
    - Action Items
  ```
- **Visual note:** Color-coded diff display
- **Footer:** Source Control (Ctrl+Shift+G) shows all changes. Review before accepting.

---

## Slide 36
- **Type:** Grid
- **Title:** Git Diff Color Legend
- **Layout:** 3 columns with visual examples
- **Card 1 — GREEN (+):**
  - Meaning: Line was ADDED
  - Visual: Green background, + prefix
  - Action: New content the agent created
  - Example: `+ - Overtime Analysis`
- **Card 2 — RED (-):**
  - Meaning: Line was REMOVED
  - Visual: Red background, - prefix
  - Action: Content that was deleted or replaced
  - Example: `- Last updated: January 2026`
- **Card 3 — GRAY (no prefix):**
  - Meaning: Line is UNCHANGED
  - Visual: Gray/white background, no prefix
  - Action: Context — shows surrounding content
  - Example: `  # Weekly Report Template`
- **Bottom callout:** If you see red lines you didn't expect, investigate before approving.

---

## Slide 37
- **Type:** Content
- **Title:** Common Diff Patterns
- **Layout:** 4 pattern examples
- **Pattern 1 — Simple Addition:**
  ```
    - Headcount Summary
  + - Overtime Analysis
  + - Safety Incidents
    - Action Items
  ```
  - What happened: Two new items added to a list
- **Pattern 2 — Replacement:**
  ```
  - Last updated: January 2026
  + Last updated: February 2026
  ```
  - What happened: One line replaced with another
- **Pattern 3 — Deletion:**
  ```
    ## Sections
  - - Deprecated Feature
    - Current Features
  ```
  - What happened: A line was removed
- **Pattern 4 — New File:**
  ```
  + # New Template
  +
  + This is a new file created by the agent.
  ```
  - What happened: All green — entire file is new
- **Footer:** U = Untracked (new file) | M = Modified (existing file changed)

---

## Slide 38
- **Type:** Exercise
- **Badge:** EXERCISE 3
- **Title:** Agent Builds a Tool + Git Review
- **Time Box:** 20 minutes
- **Part A — Build (10 min):**
  - Goal: "Create a shift handoff system in 'shift-handoff' folder with: (1) template capturing outgoing summary, ongoing issues, incoming priorities, safety notes, staffing, (2) filled-in sample from morning to afternoon shift, (3) README explaining usage."
  - Review each file as agent creates it
- **Part B — Review (10 min):**
  - Open Source Control (Ctrl+Shift+G)
  - Click each file to see contents
  - Verify all 5 sections in template
  - Make a manual edit and see diff update
- **Success Criteria:**
  - [ ] Agent created 3 files in shift-handoff folder
  - [ ] Reviewed all files in Source Control
  - [ ] Made manual edit and saw diff update
  - [ ] Can explain green vs. red lines

---

## Slide 39
- **Type:** Template
- **Badge:** EXERCISE 3 TEMPLATE
- **Title:** Shift Handoff Agent Prompt
- **Layout:** Code block with verification checklist
- **Code Block:**
  ```
  "Create a shift handoff system in a folder called
  'shift-handoff'. Include:

  1. A handoff template in markdown that captures:
     - Outgoing shift summary (what happened)
     - Ongoing issues (what's still in progress)
     - Incoming priorities (what to focus on next)
     - Safety notes
     - Staffing for the next shift

  2. A filled-in sample handoff from a morning shift
     to an afternoon shift at a distribution center.
     Use realistic but generic content — no Tesla data.

  3. A README that explains how managers should use
     this system and when to fill it out."
  ```
- **Tip Box:** After agent creates files, open Source Control (Ctrl+Shift+G) to review

---

## Slide 40
- **Type:** Content
- **Title:** Git Review Checklist
- **Layout:** Numbered checklist with icons
- **Checklist:**
  1. **Open Source Control** — Ctrl+Shift+G or click branch icon
  2. **Check file list** — Look for U (new) and M (modified) markers
  3. **Click each file** — See full diff view
  4. **Verify content matches request** — All sections present?
  5. **Check for Tesla data** — None should exist
  6. **Stage or Discard:**
     - Right-click > "Stage Changes" (accept)
     - Right-click > "Discard Changes" (reject)
  7. **Ask Copilot if unclear** — "Explain what [filename] does"
- **Bottom callout (red border):** Never approve changes you don't understand.
- **Footer:** Review agent work like you'd review an associate's work — before it goes out.

---

## Slide 41
- **Type:** Divider
- **Section Number:** 11
- **Section Title:** Hallucination, Safety & Debugging Agents
- **Duration:** 15 min

---

## Slide 42
- **Type:** Grid
- **Title:** Three Types of AI Mistakes
- **Layout:** 3 columns
- **Card 1 — HALLUCINATION:**
  - Making up facts
  - "Your DC processed 15,247 orders" (no data)
  - "According to the 2025 OSHA report..." (doesn't exist)
  - Spot it: Did you give AI this data?
- **Card 2 — DRIFT:**
  - Starting right, then wandering
  - Asked for template, also reorganized folders
  - Asked for list, got complex dashboard
  - Spot it: Did you ask for this?
- **Card 3 — OVER-CONFIDENCE:**
  - Presenting guesses as facts
  - "This will reduce overtime by 30%"
  - "The best practice is always..."
  - Spot it: Does it sound too certain?
- **Bottom callout (red border):** Trust but Verify: AI output is a first draft, not a final answer.

---

## Slide 43
- **Type:** Interactive Quiz
- **Badge:** INTERACTIVE QUIZ
- **Title:** Identify the Error Type
- **Subtitle:** For each AI output, call out: HALLUCINATION / DRIFT / OVER-CONFIDENCE
- **Table:**
  | # | AI Output | Answer |
  |---|-----------|--------|
  | 1 | "Your DC processed exactly 15,247 orders last week" (no data given) | ? |
  | 2 | You asked for a template, agent also created a dashboard and 3 extra reports | ? |
  | 3 | "This change will definitely reduce overtime by 22%" | ? |
  | 4 | "According to the 2025 MIT Supply Chain Study..." (no source verified) | ? |
  | 5 | "The best practice is always to use this approach" | ? |
  | 6 | You asked about staffing, agent started discussing inventory management | ? |

---

## Slide 44
- **Type:** Answer Key
- **Badge:** ANSWER KEY
- **Title:** Error Types — Answers
- **Subtitle:** Red = Hallucination | Yellow = Drift | Orange = Over-confidence
- **Table:**
  | # | AI Output | Answer | Why |
  |---|-----------|--------|-----|
  | 1 | "Exactly 15,247 orders" | HALLUCINATION | Specific number with no data source |
  | 2 | Extra dashboard and reports | DRIFT | Added unrequested deliverables |
  | 3 | "Definitely reduce overtime by 22%" | OVER-CONFIDENCE | Precise prediction with no analysis |
  | 4 | "2025 MIT Study..." | HALLUCINATION | Citation may not exist |
  | 5 | "Always use this approach" | OVER-CONFIDENCE | "Always" is too certain |
  | 6 | Switched to inventory topic | DRIFT | Wandered from requested topic |
- **Footer:** When in doubt: verify numbers, check scope, question certainty.

---

## Slide 45
- **Type:** Grid
- **Title:** The Verification Framework
- **Layout:** 2x3 grid
- **Card 1 — Check Numbers:**
  - Did you provide this data?
  - If not, it's probably made up
- **Card 2 — Cross-Check Sources:**
  - Compare AI output against original files
  - Verify cited documents exist
- **Card 3 — Test with Known Answers:**
  - Ask something you already know
  - If wrong, question everything
- **Card 4 — Watch for Over-Specificity:**
  - "Exactly 15,247 orders" with no data?
  - Red flag — too precise to be real
- **Card 5 — Let Agent Continue When:**
  - Minor formatting issues
  - Self-corrects errors
  - Asks clarifying questions
- **Card 6 — Intervene When:**
  - Wrong direction (files you didn't ask for)
  - Terminal command you don't understand
  - Stuck in a loop
  - Policy violation (Tesla data in Copilot)
- **Footer:** Redirect with: "Stop. Let's take a different approach. I want you to..."

---

## Slide 46
- **Type:** Activity
- **Badge:** ACTIVITY C
- **Title:** Verification Drill
- **Time Box:** 3 minutes
- **Subtitle:** Quick practice applying the verification framework
- **Scenario:** An agent just generated this output. Apply the verification checklist.
- **AI Output Box:**
  > "Based on analysis of your staffing patterns, the night shift is consistently understaffed by 2.3 workers. According to the 2025 National Warehousing Association report, this represents a 15% deviation from industry benchmarks. Recommendation: hire 3 part-time workers to achieve optimal coverage."
- **Verification Checklist:**
  - [ ] Did I provide staffing data? (If no, "2.3 workers" is hallucinated)
  - [ ] Does the NWA 2025 report exist? (Verify before citing)
  - [ ] Is "15% deviation" supported by data? (Too precise without analysis)
  - [ ] Is "3 part-time workers" a justified recommendation? (Needs human judgment)
- **Footer:** Answer: Multiple issues — likely hallucinated stats and over-confident recommendation.

---

## Slide 47
- **Type:** Exercise
- **Badge:** EXERCISE 4
- **Title:** Spot the Mistakes
- **Time Box:** 20 minutes
- **Scenario:** Review 3 AI-generated outputs and find the errors
- **Instructions:**
  1. Individual work (10 min): Read all 3 outputs, list every error
  2. Partner discussion (5 min): Compare findings
  3. Group debrief (5 min): Review answers together
- **Outputs to analyze:**
  - Output 1: Email draft (find 4 errors — hallucinated stats, contradictions, fake citations)
  - Output 2: Data analysis (find 3 errors — misinterpreted trends, invented correlations, fabricated projections)
  - Output 3: Agent report (find 3 errors — fake file references, fabricated sources, over-precise predictions)
- **Success Criteria:**
  - [ ] Found 3+ of 4 errors in Output 1
  - [ ] Found 2+ of 3 errors in Output 2
  - [ ] Found 2+ of 3 errors in Output 3
  - [ ] Can explain hallucination vs. drift vs. over-confidence
- **Key Takeaway:** AI is your first draft, not your final answer.

---

## Slide 48
- **Type:** Hallucination Hunt
- **Badge:** EXERCISE 4 — OUTPUT 1
- **Title:** Find the Errors: Email Draft
- **Timer:** 5 MIN
- **AI Output Box:**
  > **Subject: Weekly Performance Update — Tampa DC**
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
  > **Challenges:**
  > - Tuesday night shift was understaffed by 3 associates
  > - According to the 2025 OSHA Warehouse Safety Report, our incident rate is below the national average of 4.2 per 100 workers
  >
  > Best regards,
  > [AGM Name]
- **Error Boxes:**
  - Error 1: ______
  - Error 2: ______
  - Error 3: ______
  - Error 4: ______

---

## Slide 49
- **Type:** Hallucination Hunt
- **Badge:** EXERCISE 4 — OUTPUT 2
- **Title:** Find the Errors: Data Analysis
- **Timer:** 5 MIN
- **AI Output Box:**
  > **Weekly Productivity Analysis — Week 4**
  >
  > **Summary:** Productivity improved significantly this week. UPLH increased from 12.4 to 14.1.
  >
  > **Trend Analysis:**
  > - Week 1: 13.2 UPLH
  > - Week 2: 12.8 UPLH
  > - Week 3: 12.4 UPLH
  > - Week 4: 14.1 UPLH
  >
  > **Key Insight:** The conveyor system installation (Week 3) confirms that capital equipment investment directly drives throughput.
  >
  > **Recommendation:** A second conveyor would yield 13-15% additional improvement, saving $47,000 annually.
- **Error Boxes:**
  - Error 1: ______
  - Error 2: ______
  - Error 3: ______

---

## Slide 50
- **Type:** Hallucination Hunt
- **Badge:** EXERCISE 4 — OUTPUT 3
- **Title:** Find the Errors: Agent Report
- **Timer:** 5 MIN
- **AI Output Box:**
  > **Staffing Optimization Report**
  >
  > Based on my analysis of `staffing-data-2025.csv` and `shift-schedule-q4.xlsx`:
  >
  > **Current State:**
  > - Average daily headcount: 43 associates
  > - Night shift understaffed by 2-3 workers
  > - Morning shift has 15% excess capacity
  >
  > **Recommendation:**
  > - Redistribute 2 associates from morning to night
  > - This will reduce overtime by 22% and improve UPLH by 18%
  >
  > **Data Quality Note:**
  > All metrics validated against the National Warehousing Association (NWA) 2025 Annual Report.
- **Error Boxes:**
  - Error 1: ______
  - Error 2: ______
  - Error 3: ______

---

## Slide 51
- **Type:** Answer Key
- **Badge:** EXERCISE 4 ANSWERS
- **Title:** Spot the Mistakes — Answer Key
- **Layout:** Three columns
- **Column 1 — Email Errors:**
  1. "Industry average 99.7%" — hallucinated statistic
  2. 98.2% described as "above" 99.7% — math contradiction
  3. "2025 OSHA Report" — fake citation
  4. All specific numbers (47, 12.3%, 3) — hallucinated without data
- **Column 2 — Analysis Errors:**
  1. "Improved significantly" — ignores 3 weeks of DECLINE (13.2 > 12.8 > 12.4)
  2. "Confirms" causation — correlation != causation; over-confident
  3. "$47,000 savings" — fabricated projection with no basis
- **Column 3 — Report Errors:**
  1. Files may not exist — `staffing-data-2025.csv` could be invented
  2. "NWA 2025 Annual Report" — verify source exists
  3. "22% overtime reduction, 18% UPLH" — over-precise predictions
- **Footer:** Remember: AI is your first draft, not your final answer.

---

## Slide 52
- **Type:** Summary
- **Title:** Week 3 Key Takeaways
- **Takeaway 1:**
  - Number: 01
  - Text: VS Code + Copilot extends Bottle Rocket with file creation, terminal execution, and voice input
- **Takeaway 2:**
  - Number: 02
  - Text: Voice Mode is 3-5x faster than typing — Ctrl+U for chat, Ctrl+Alt+V for dictation
- **Takeaway 3:**
  - Number: 03
  - Text: Agents plan and execute autonomously using ReAct: Think, Act, Observe, Repeat
- **Takeaway 4:**
  - Number: 04
  - Text: RAG grounds AI in real data — always provide documents for accurate, specific answers
- **Takeaway 5:**
  - Number: 05
  - Text: Review agent changes using git diffs — green = added, red = removed
- **Takeaway 6:**
  - Number: 06
  - Text: Trust but verify — AI output is a first draft. Check numbers, verify citations, apply judgment.
- **Footer:**
  - Target: Continue building prompt library + personal project
  - Next week: Advanced Agents, Memory & Personal Project Showcase

---

## Slide 53
- **Type:** Grid
- **Title:** Week 3 Prompt Library — Quick Reference
- **Layout:** 2x5 grid of prompt cards
- **Card 1 — Voice Email:**
  - "Create a professional email to [RECIPIENT] summarizing [TOPIC]. Include sections for metrics, highlights, challenges, action items."
- **Card 2 — Agent Project Setup:**
  - "Create a [PROJECT TYPE] for a distribution center with README, template, sample data, summary report, and checklist in folder '[NAME]'."
- **Card 3 — @workspace Search:**
  - "@workspace Find all files that mention [KEYWORD]"
- **Card 4 — @terminal File Ops:**
  - "@terminal create a folder called [NAME]"
- **Card 5 — Shift Handoff System:**
  - "Create a shift handoff system with template capturing outgoing summary, ongoing issues, priorities, safety, staffing."
- **Card 6 — Labor Planning Tool:**
  - "Create weekly labor planning tool with headcount by shift, planned vs actual hours, overtime, open positions."
- **Card 7 — Meeting Prep Kit:**
  - "Create meeting preparation system with agenda template, pre-meeting checklist, notes template, follow-up email."
- **Card 8 — Incident Report System:**
  - "Create incident report system with template for date, time, location, description, root cause, corrective actions."
- **Card 9 — Template Customization:**
  - "Add a section to the README about [TOPIC]. Also add a column for [FIELD] in the template."
- **Card 10 — Explain Agent Output:**
  - "@workspace Explain the structure of the file [FILENAME]"
- **Footer:** All prompts work with Copilot Agent Mode (NO Tesla data) or adapt for Bottle Rocket

---

## Slide 54
- **Type:** Content
- **Title:** Homework & Next Week Preview
- **Layout:** Two columns
- **Left column — Homework (~45 min):**
  - Build 2 agent workflows using Copilot Agent Mode:
    - Meeting Prep Kit (agenda, checklist, notes, follow-up templates)
    - Incident Report System (template, sample, tracking sheet)
  - Review each with Source Control
  - Continue personal project — bring ready for Week 4 showcase
  - Track time savings daily
- **Right column — Week 4 Preview:**
  - Agents that remember your DC (memory)
  - Multi-agent workflows (chaining)
  - MCP tools (Playwright, filesystem)
  - Evaluating AI quality
  - Personal project showcase
  - AI rollout planning for your team
- **Footer:** Next Week: Advanced Agents, Memory & Optimization | Remember: NO Tesla data in Copilot

---

## Slide 55
- **Type:** Content
- **Title:** Week 4 Preview — What's Coming
- **Layout:** 4 highlight cards
- **Card 1 — Memory & Context:**
  - Agents that remember your DC
  - Building on previous conversations
  - Persistent project context
- **Card 2 — Multi-Agent Workflows:**
  - Chaining agents for complex tasks
  - Research > Draft > Review pipelines
  - Automated quality checks
- **Card 3 — MCP Tools:**
  - Playwright for web automation
  - Filesystem for local file operations
  - Extending agent capabilities
- **Card 4 — Project Showcase:**
  - Present your personal automation
  - Share wins and lessons learned
  - AI rollout planning for your team
- **Bottom callout:** Bring your personal project ready to demo!
- **Footer:** Week 4 is the capstone. Come prepared to show what you've built.

---

## Slide 56
- **Type:** Content
- **Title:** Time Savings Tracker — Week 3
- **Layout:** Table template
- **Table:**
  | Task | Traditional Method | With Week 3 Tools | Savings |
  |------|-------------------|-------------------|---------|
  | Email drafting | ___ min (typing) | ___ min (voice) | ___ min |
  | Project setup | ___ min (manual) | ___ min (agent) | ___ min |
  | Template creation | ___ min (manual) | ___ min (agent) | ___ min |
  | Change review | ___ min (scanning) | ___ min (diff) | ___ min |
  | **Weekly Total** | | | **___ min** |
- **Expected Savings:**
  - Email drafting: 3-7 min per email
  - Project setup (5 files): ~14 min
  - Template creation: 8-13 min
  - Change review: 5-10 min
- **Footer:** Track daily. Share totals next week during Week 4 opening.

---

## Slide 57
- **Type:** Content
- **Title:** Weekly Skill Checklist
- **Layout:** Three-column checklist
- **Column 1 — Voice & Chat:**
  - [ ] Use @workspace to search project files
  - [ ] Use @terminal to execute commands
  - [ ] Use @vscode to control the editor
  - [ ] Activate voice chat with Ctrl+U
  - [ ] Dictate content with Ctrl+Alt+V
- **Column 2 — Agent Mode:**
  - [ ] Switch to Agent Mode in Copilot Chat
  - [ ] Write goal-oriented prompts
  - [ ] Recognize the ReAct pattern
  - [ ] Review and approve agent plans
  - [ ] Know when to intervene vs continue
- **Column 3 — Review & Verify:**
  - [ ] Open Source Control (Ctrl+Shift+G)
  - [ ] Read a diff (green/red)
  - [ ] Stage (accept) or Discard (reject)
  - [ ] Identify hallucinations
  - [ ] Apply "trust but verify"
- **Footer:** Check off each skill as you master it. All should be checked by end of Week 3.

---

## Slide 58
- **Type:** Title
- **Title:** See You Next Week!
- **Subtitle:** Week 4: Advanced Agents, Memory & Project Showcase
- **Visual:** Tesla logo or fleet image
- **Key Reminders:**
  - Complete homework: 2 agent workflows + personal project progress
  - Track time savings daily
  - Bring personal project ready for showcase
  - Remember: NO Tesla data in Copilot
- **Footer:** Questions? Reach out before next session. Great work today!

---

## Slide Distribution Summary

| Section | Slides | Slide Numbers |
|---------|--------|---------------|
| Title + Agenda | 2 | 01-02 |
| Section 1: Time Savings Review | 2 | 03-04 |
| Section 2: VS Code + Copilot Setup | 3 | 05-07 |
| Section 3: Chat, @ Commands, Voice | 4 | 08-11 |
| Exercise 1: Voice + Chat | 2 | 12-13 |
| Section 5: What Is an AI Agent? | 7 | 14-20 |
| Section 6: Agent Mode Deep Dive | 3 | 21-23 |
| Exercise 2: Build First DC Agent | 3 | 24-26 |
| Section 8: RAG Lite | 6 | 27-33 |
| Section 9: Git Basics | 4 | 34-37 |
| Exercise 3: Agent + Git Review | 3 | 38-40 |
| Section 11: Hallucination & Safety | 5 | 41-46 |
| Exercise 4: Spot the Mistakes | 5 | 47-51 |
| Takeaways + Homework | 7 | 52-58 |
| **TOTAL** | **58** | |

**Slide Type Distribution:**
- Title: 2
- Agenda: 1
- Divider: 7
- Content: 15
- Comparison: 3
- Grid: 10
- Exercise: 4
- Template: 3
- Interactive Quiz: 3
- Answer Key: 4
- Activity: 3
- Hallucination Hunt: 3
- Summary: 1
- **Total: 58 slides**

**New Slides Added (25 new slides):**
1. Slide 13: Exercise 1 Template (Voice + Chat prompts)
2. Slide 16: Chat or Agent Mode? Quiz
3. Slide 17: Chat or Agent Mode? Answer Key
4. Slide 19: Activity A: Watch the Agent Think
5. Slide 25: Exercise 2 Template (DC Agent Builder)
6. Slide 26: Expected Folder Structure
7. Slide 30: Grounded or Hallucinated? Quiz
8. Slide 31: Grounded or Hallucinated? Answer Key
9. Slide 33: Activity B: Upload and Query Demo
10. Slide 36: Git Diff Color Legend (expanded)
11. Slide 37: Common Diff Patterns
12. Slide 39: Exercise 3 Template (Shift Handoff prompt)
13. Slide 40: Git Review Checklist
14. Slide 43: Error Type Quiz (Hallucination/Drift/Over-confidence)
15. Slide 44: Error Type Quiz Answer Key
16. Slide 46: Activity C: Verification Drill
17. Slide 48: Hallucination Hunt - Output 1 (Email)
18. Slide 49: Hallucination Hunt - Output 2 (Analysis)
19. Slide 50: Hallucination Hunt - Output 3 (Report)
20. Slide 51: Exercise 4 Answer Key
21. Slide 53: Week 3 Prompt Library (10 prompts grid)
22. Slide 55: Week 4 Preview
23. Slide 56: Time Savings Tracker
24. Slide 57: Weekly Skill Checklist
25. Slide 58: Closing/See You Next Week

**Key Improvements:**
- Added quizzes with answer keys for Chat vs Agent, Grounded vs Hallucinated, and Error Types
- Added exercise templates for Exercises 1, 2, and 3
- Added activities A, B, C for ReAct observation, RAG demo, and verification drill
- Expanded git diff coverage with color legend and common patterns
- Added Hallucination Hunt slides matching Week 1's format
- Added prompt library quick reference (10 prompts)
- Added takeaway slides for Week 4 preview, time tracking, and skill checklist

---

*Slide Plan v2.0 — Week 3: VS Code, Agents & How AI Thinks*
*Expanded to 58 slides to match Week 1 quality standard*
*Full 240-minute session with LIGHT theme*
*Designed for 960x540 HTML rendering with Tesla light theme*
