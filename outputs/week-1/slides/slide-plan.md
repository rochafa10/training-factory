# Slide Plan: Week 1 — AI Foundations & Policy Compliance

**Session Duration:** 240 minutes (4 hours)
**Total Slides:** 28
**Slide Dimensions:** 960px x 540px (16:9)
**Theme:** Tesla dark (#0a0a0a background, #e82127 accent red)
**Version:** 2.0 — Updated with live Bottle Rocket v2.0.5 data, policy quizzes, Nabu agents, personas

---

## Slide 01
- **Type:** Title
- **Title:** AI Foundations & Policy Compliance
- **Subtitle:** AI Tools for Operations Leaders
- **Metadata:**
  - Label: WEEK 1 OF 4
  - Duration: 240 minutes
  - Audience: Area General Managers — Tesla Distribution Centers

---

## Slide 02 *(NEW)*
- **Type:** Grid
- **Title:** Your AI Journey — 4-Week Overview
- **Layout:** 4 columns (week cards)
- **Card 1 — WEEK 1 (this week, highlighted with red border):**
  - Header: AI Foundations & Policy
  - Items: Tesla AI Policy, Bottle Rocket basics, Prompt engineering intro, Your first AI prompts
- **Card 2 — WEEK 2:**
  - Header: Advanced Prompts & Data
  - Items: Multi-shot prompting, Data analysis with AI, Report generation, Building prompt libraries
- **Card 3 — WEEK 3:**
  - Header: Workflows & Automation
  - Items: Multi-step AI workflows, Team prompt sharing, Process optimization, Agent design basics
- **Card 4 — WEEK 4:**
  - Header: Mastery & Rollout
  - Items: Advanced agent creation, Team AI rollout plan, Measuring ROI, Capstone project
- **Footer:** 16 total hours of training → from zero AI experience to confident AI-powered leader

---

## Slide 03 *(NEW)*
- **Type:** Content
- **Title:** After This Course, You Will Be Able To...
- **Bullets:**
  - Use Bottle Rocket confidently for any operations task involving Tesla Data
  - Write effective prompts using the ROLE + CONTEXT + TASK + FORMAT formula
  - Make instant, correct decisions about which AI tools are allowed at Tesla
  - Verify AI outputs and catch hallucinations before they reach leadership
  - Build a personal prompt library that saves 30+ minutes per day
  - Train your associates on Tesla-approved AI tools and policy compliance
- **Visual note:** Checkmark icons next to each bullet, green accent

---

## Slide 04 *(UPDATE)*
- **Type:** Agenda
- **Title:** Today's Agenda
- **Items:**
  1. Why AI Matters for Operations (10 min)
  2. Tesla AI Policy Deep Dive (20 min)
  3. Policy Quiz & Scenarios (16 min)
  4. Introduction to Bottle Rocket (15 min)
  5. Prompt Engineering Basics (15 min)
  6. Exercise 1: First Guided Prompt (20 min)
  7. Exercise 2: Operations Prompts + Personas (25 min)
  8. BREAK (10 min)
  9. AI Models & Tesla Agents (15 min)
  10. Exercise 3: Bottle Rocket Deep Workshop (30 min)
  11. Quality Checking AI Outputs (15 min)
  12. Exercise 4: Iterate, Verify & Improve (25 min)
  13. Wrap-up, Homework & Next Steps (14 min)
- **Footer note:** Hands-on time: ~116 min (48%) | Instruction/demo: ~124 min (52%)

---

## Slide 05
- **Type:** Divider
- **Section Number:** 01
- **Section Title:** Why AI Matters for Operations
- **Duration:** 10 min

---

## Slide 06
- **Type:** Content
- **Title:** AI Is a Tool, Not a Replacement
- **Bullets:**
  - AI handles high-volume, repetitive analytical work at scale
  - You provide strategic judgment, exception handling, and contextual decisions
  - Organizations see 20-30% efficiency gains with proper AI training
  - Employees using AI tools save an average of 7.5 hours per week
  - Our target: save 30+ minutes per day — redirected to strategic work
  - Common trap: expecting magic instead of treating AI as a skilled assistant
- **Visual note:** Stat callout cards for "7.5 hrs/week" and "30+ min/day target"

---

## Slide 07
- **Type:** Divider
- **Section Number:** 02
- **Section Title:** Tesla AI Policy Deep Dive
- **Duration:** 20 min

---

## Slide 08 *(UPDATE)*
- **Type:** Grid
- **Title:** Three Tiers of AI Tools at Tesla
- **Layout:** 3 columns (color-coded cards)
- **Column 1 — APPROVED (green #4ade80 accent):**
  - Label: Tesla Data OK
  - Chat.BottleRocket (go.tesla.com/chat)
  - IT Assist (it.bottlerocket.tesla.com)
  - Employee Assist (hr.bottlerocket.tesla.com)
  - Energy Chats (energy.bottlerocket.tesla.com)
  - Nabu RAG Agents (nabu.bottlerocket.tesla.com)
  - Nova (nova.tesla.com)
  - M365 Copilot Chat (corporate link only)
- **Column 2 — CONDITIONAL (yellow #facc15 accent):**
  - Label: NO Tesla Data
  - GitHub Copilot (code only, no Tesla data)
  - GitHub Copilot CLI
  - Power Automate AI features (no OpenAI connector)
- **Column 3 — PROHIBITED (red #f87171 accent):**
  - Label: Never for Work
  - ChatGPT, Claude.ai, Gemini web
  - Perplexity, Grok via X/xAI
  - Apple Intelligence (corporate devices)
  - AI meeting transcription
  - AI wearables (Ray-Ban Meta, etc.)
  - DeepSeek (China-hosted)

---

## Slide 09
- **Type:** Content
- **Title:** What Counts as "Tesla Data"?
- **Bullets:**
  - Any information not publicly available outside Tesla
  - Employee names, headcount, schedules, shift assignments
  - KPIs, throughput rates, error rates, safety incident details
  - Vendor names, contract terms, customer order information
  - Internal SOPs, financial data, email content about Tesla business
- **Visual note:** Two-column example box at bottom:
  - Left (red X): "Sort my DC's headcount data by shift" in ChatGPT
  - Right (green check): "Sort my DC's headcount data by shift" in Bottle Rocket
- **Footer:** When in doubt, assume it is Tesla Data and use Bottle Rocket.

---

## Slide 10
- **Type:** Comparison
- **Title:** The Grok Trap — Same Model, Different Rules
- **Left Column (green — APPROVED):**
  - Header: Grok via Bottle Rocket
  - Platform: go.tesla.com/chat
  - Tesla Data: YES — fully approved
  - Routing: Through Tesla's secure infrastructure
  - Verdict: Use freely with internal data
- **Right Column (red — PROHIBITED):**
  - Header: Grok via X / xAI Apps
  - Platform: x.com, xAI website, xAI apps
  - Tesla Data: NO — policy violation
  - Routing: Through external xAI servers
  - Verdict: Never use for Tesla work
- **Bottom callout:** The platform determines data protection, not the model name.

---

## Slide 11
- **Type:** Content
- **Title:** The Two-Question Test
- **Bullets:**
  - Before using any AI tool, ask two questions:
  - Question 1: Is this tool listed at go.tesla.com/aitools?
  - Question 2: Does my task involve Tesla Data?
  - If YES + YES: Use an Approved tool (Bottle Rocket, Nova, IT/Employee Assist)
  - If YES + NO: Any approved or conditionally approved tool is fine
  - If NO to Question 1: STOP — the tool is prohibited for work use
- **Visual note:** Decision tree or flowchart layout with two branching questions
- **Footer:** Violations can result in disciplinary action up to and including termination.

---

## Slide 12 *(NEW — Policy Quiz)*
- **Type:** Exercise
- **Badge:** INTERACTIVE QUIZ
- **Title:** Policy Rapid Fire — Approved, Conditional, or Prohibited?
- **Instructions:**
  - Instructor reads each tool/action aloud
  - Participants call out the answer: Approved, Conditional, or Prohibited
  - Reveal the correct answer and discuss tricky ones
- **Quiz Items (compact 3-column table, 15 items):**

  | # | Tool or Action | Answer |
  |---|---------------|--------|
  | 1 | Bottle Rocket | Approved |
  | 2 | Grok via X app | Prohibited |
  | 3 | Grok via Bottle Rocket | Approved |
  | 4 | Claude.ai (website) | Prohibited |
  | 5 | Claude inside Bottle Rocket | Approved |
  | 6 | M365 Copilot Chat (m365.cloud.microsoft.chat) | Approved |
  | 7 | M365 Copilot Chat (copilot.microsoft.com) | Prohibited |
  | 8 | GitHub Copilot with Tesla code | Prohibited |
  | 9 | GitHub Copilot with generic Python | Conditional |
  | 10 | AI meeting transcription | Prohibited |
  | 11 | Apple Intelligence on corp device | Prohibited |
  | 12 | Perplexity for generic research | Prohibited |
  | 13 | Nova searching Confluence | Approved |
  | 14 | Employee Assist for HR | Approved |
  | 15 | DeepSeek | Prohibited |

- **Time Box:** 5 minutes
- **Key Teaching Points:** Same model can be approved OR prohibited depending on platform. Same product name can differ by URL. Some actions are banned regardless of tool.

---

## Slide 13 *(NEW — Policy Scenarios)*
- **Type:** Exercise
- **Badge:** GROUP DISCUSSION
- **Title:** What Would You Do? — Manager Scenarios
- **Layout:** 3 scenario cards
- **Card 1 — The VP Request:**
  - Your VP messages at 4:45 PM: "I need a Dive Deep on Q4 throughput by 8 AM." A colleague says "use ChatGPT — it's faster." What do you do?
  - Key point: Urgency and seniority don't override policy. Bottle Rocket has the same models.
- **Card 2 — The Data Leak:**
  - Your supervisor has been uploading weekly KPI spreadsheets to Perplexity for a month. They didn't know it was wrong. Now what?
  - Key point: Stop immediately, report to infosec@tesla.com, rebuild using approved tools.
- **Card 3 — The Competitive Pressure:**
  - A peer AGM's team uses a mix of approved + unapproved tools. Their numbers look better than yours. Do you match them?
  - Key point: Policy violations aren't justified by productivity. Master Bottle Rocket deeply instead.
- **Time Box:** 7 minutes (2 min per scenario + 1 min wrap-up)
- **Instruction:** "Discuss with your table, then we'll share out."

---

## Slide 14 *(NEW — Gray Zones)*
- **Type:** Content
- **Title:** Gray Zones — It's Trickier Than You Think
- **Bullets (scenario cards):**
  - "I anonymized the data first" — Removing names doesn't make Tesla Data non-Tesla. Overtime patterns, staffing ratios, and productivity metrics from inside Tesla are still Tesla Data.
  - "It's my personal phone, on my own time" — The policy follows the DATA, not the clock or the device. If you typed Tesla headcount into ChatGPT at midnight on your own phone, it's still a violation.
  - "I only shared the AI output, not the input" — AI output containing Tesla Data must be handled like any Tesla Data. Sharing a Bottle Rocket analysis via WhatsApp may violate data handling rules.
  - "I used Bottle Rocket first, then polished in Claude.ai" — Two-step workarounds add risk for zero benefit. Bottle Rocket runs Claude models internally — just refine there.
- **Callout box:** "When in doubt: use Bottle Rocket, keep it in approved channels, and ask."
- **Time:** 4 min instructor-led discussion

---

## Slide 15
- **Type:** Divider
- **Section Number:** 03
- **Section Title:** Introduction to Bottle Rocket
- **Duration:** 15 min

---

## Slide 16 *(REWRITE)*
- **Type:** Content
- **Title:** Inside Bottle Rocket
- **Bullets:**
  - Access at go.tesla.com/chat — sign in with Tesla credentials
  - Chat interface: type your prompt, AI responds in real-time
  - Model selector (top): choose from 8 AI models for different tasks
  - Personas (sidebar): pre-built AI personalities for specialized tasks
  - File upload: drag & drop PDFs, spreadsheets, images for AI analysis
  - Web search toggle (globe icon): ground responses with live internet data
- **Visual note:** Annotated layout showing the Bottle Rocket interface areas
- **Footer:** All models inside Bottle Rocket are approved for Tesla Data. Version 2.0.5

---

## Slide 17 *(REWRITE)*
- **Type:** Grid
- **Title:** Choosing Your AI Model
- **Layout:** 2x4 grid of model cards (8 models from live app)
- **Card 1 — Qwen 3 30B (DEFAULT):**
  - Speed: Fast | Best for: Daily tasks, quick answers
- **Card 2 — Qwen 3 235B:**
  - Speed: Medium | Best for: Complex analysis, detailed reasoning
- **Card 3 — OpenAI GPT OSS 120B:**
  - Speed: Medium | Best for: Writing, general tasks
- **Card 4 — Grok 4:**
  - Speed: Medium | Best for: Deep research, nuanced analysis
- **Card 5 — Grok 4 Mini:**
  - Speed: Fast | Best for: Quick reasoning, fast iteration
- **Card 6 — Grok 4 Mini (High):**
  - Speed: Medium-Fast | Best for: Balanced Grok quality/speed
- **Card 7 — Gemini 3 Pro:**
  - Speed: Medium | Best for: Multimodal, image analysis
- **Card 8 — Gemini 2.5 Pro:**
  - Speed: Slower | Best for: Long document analysis, complex tasks
- **Footer:** Start with the default (Qwen 3 30B). Switch models if you need deeper analysis or specific strengths.

---

## Slide 18 *(NEW)*
- **Type:** Content
- **Title:** Personas — Customize Your AI Assistant
- **Layout:** 4 persona cards + custom persona note
- **Card 1 — Feynman:**
  - Explains complex topics in simple terms — great for training materials
- **Card 2 — General:**
  - Balanced all-purpose assistant — good default for most tasks
- **Card 3 — Swiss Army Knife:**
  - Multi-tool assistant for diverse tasks — formatting, analysis, writing
- **Card 4 — The Visionary:**
  - Strategic thinking and big-picture analysis — planning, initiatives
- **Custom Persona Note:**
  - You can create your own persona with custom instructions
  - Example: "DC Operations Manager" persona with your site's SOPs built in
- **Footer:** Access personas from the sidebar. They shape HOW the AI responds to your prompts.

---

## Slide 19
- **Type:** Divider
- **Section Number:** 04
- **Section Title:** Prompt Engineering Basics
- **Duration:** 15 min

---

## Slide 20
- **Type:** Grid
- **Title:** The Prompt Formula: ROLE + CONTEXT + TASK + FORMAT
- **Layout:** 2x2 grid of cards
- **Card 1 — ROLE:**
  - Tell the AI who to be
  - Example: "You are an experienced operations manager at a distribution center"
- **Card 2 — CONTEXT:**
  - Give background information
  - Example: "I manage the morning shift at Tampa DC with 45 associates"
- **Card 3 — TASK:**
  - State exactly what you need
  - Example: "Create a standup summary for today's meeting"
- **Card 4 — FORMAT:**
  - Specify the output structure
  - Example: "Bullet points, under 150 words, 3 sections"

---

## Slide 21
- **Type:** Comparison
- **Title:** Good Prompt vs. Bad Prompt
- **Left Column (red — BAD):**
  - Header: Vague Prompt
  - Text: "Help me with standup prep"
  - Result: Generic, unfocused, not usable without heavy editing
  - Missing: role, context, specific task, format constraints
- **Right Column (green — GOOD):**
  - Header: Structured Prompt
  - Text: "ROLE: Experienced ops manager at a Tesla DC. CONTEXT: Tampa DC, morning shift, 42 associates, 2,847 orders yesterday, conveyor issue 2-4 PM. TASK: Standup summary — yesterday's performance and today's priorities. FORMAT: Bullets, under 150 words, 3 sections."
  - Result: Specific, actionable, ready to use with minor edits
- **Footer:** The same AI model produced both outputs. The difference is entirely in the prompt.

---

## Slide 22 *(UPDATE)*
- **Type:** Exercise
- **Badge:** EXERCISE 1
- **Title:** First Guided Prompt — Standup Summary
- **Instructions:**
  1. Open Bottle Rocket (go.tesla.com/chat)
  2. Select Qwen 3 30B model (the default — fast and reliable)
  3. Copy the prompt template (provided)
  4. Replace placeholders with your DC's real information
  5. Submit and review the output
  6. Check: Is it under 150 words? In bullet format? Relevant to your DC?
- **Tips:**
  - Add specific details — the more context, the better the output
  - If the output is too generic, add more CONTEXT
  - If the format is wrong, be more explicit in FORMAT
- **Time Box:** 20 minutes (5 min fill template, 10 min test, 5 min share)

---

## Slide 23 *(UPDATE)*
- **Type:** Exercise
- **Badge:** EXERCISE 2
- **Title:** Operations Prompts + Persona Comparison
- **Instructions:**
  1. Choose 3 real work tasks (email drafting, meeting prep, performance summary, problem analysis)
  2. Write each prompt using ROLE + CONTEXT + TASK + FORMAT
  3. Test each in Bottle Rocket and review results
  4. For ONE prompt: switch to the Feynman persona and re-run — compare the output
  5. Refine any prompt that does not produce usable output
- **Tips:**
  - Use tasks you actually do every day — not hypothetical scenarios
  - Each prompt should be reusable tomorrow
  - Notice how the persona changes the tone and structure of the response
- **Time Box:** 25 minutes (5 min choose topics, 15 min write and test, 5 min persona comparison)

---

## Slide 24 *(NEW — AI Models & Agents section)*
- **Type:** Grid
- **Title:** Tesla Employees Are Already Building AI Agents
- **Section Label:** Section 05 — AI Models & Agents
- **Layout:** 2x3 grid (6 agent cards from Nabu)
- **Card 1 — 5-Why Analysis Agent:**
  - Dept: Operations
  - Does: Guides structured root cause analysis
- **Card 2 — Parts SOP Generator:**
  - Dept: Operations
  - Does: Generates standard operating procedures from parts docs
- **Card 3 — Watt Wizard:**
  - Dept: Energy
  - Does: Answers energy storage technical questions
- **Card 4 — SPARQ:**
  - Dept: Engineering
  - Does: Spark plug analysis and quality checks
- **Card 5 — Megafactory 5S:**
  - Dept: Manufacturing
  - Does: 5S audit assistance for factory operations
- **Card 6 — Your Agent?:**
  - Dept: Your DC
  - Does: What repetitive task could AI handle for your team?
- **Footer:** Built on Nabu (nabu.bottlerocket.tesla.com) — 38 agents and growing. No code required.

---

## Slide 25
- **Type:** Divider
- **Section Number:** 06
- **Section Title:** Bottle Rocket Deep Workshop
- **Duration:** 30 min

---

## Slide 26 *(UPDATE)*
- **Type:** Exercise
- **Badge:** EXERCISE 3
- **Title:** Bottle Rocket Deep Workshop
- **Instructions:**
  1. Scenario A: Analyze headcount allocation across shifts (use file upload with sample spreadsheet)
  2. Scenario B: Research a real-world operations topic (use web search toggle — globe icon ON)
  3. Scenario C: Draft vendor communication for delayed shipment (try different models)
  4. Scenario D: Create training outline for new associates (use the Feynman persona)
- **Sub-instruction for each:**
  - Write the prompt using ROLE + CONTEXT + TASK + FORMAT
  - Submit to Bottle Rocket, review the output
  - Iterate at least once to improve quality
- **Tips:**
  - Toggle web search ON for Scenario B to get real-time data
  - Try uploading a file in Scenario A (PDF, Excel, or image)
  - Compare output from different models on the same prompt
- **Time Box:** 30 minutes — Complete at least 2 of the 4 scenarios. Stretch goal: all 4.

---

## Slide 27
- **Type:** Content
- **Section Label:** Section 07 — Quality Checking AI Outputs
- **Title:** Hallucination Detection & Verification
- **Bullets:**
  - Hallucination: AI confidently presents made-up facts as truth
  - Always cross-reference specific claims against known data
  - Ask the AI: "What sources support this?" — then verify those sources exist
  - The 80/20 trust rule: trust formatting and structure, verify facts and numbers
  - Never forward AI-generated numbers to leadership without checking them
  - You own the accuracy of everything you send — AI assisted, you are accountable
- **Visual note:** Callout box: "Trust the draft. Verify the data."

---

## Slide 28
- **Type:** Exercise
- **Badge:** EXERCISE 4
- **Title:** Iterate, Verify & Improve
- **Instructions:**
  1. Take your best prompt from Exercise 2
  2. Review the output critically — what is not quite right?
  3. Apply a verification technique (cross-reference a claim, check a number)
  4. Use a follow-up prompt to improve (e.g., "Make this more concise" or "Add a section on safety")
  5. Bonus: Re-run with web search ON and compare accuracy
- **Tips:**
  - Common follow-ups: "Make this more concise," "Rewrite in a more conversational tone," "Add specific metrics"
  - Do not rewrite the entire prompt — just tell the AI what to fix
  - Iteration is the skill that separates good AI users from great ones
- **Time Box:** 25 minutes (5 min review, 10 min verify and iterate, 10 min share with group)

---

## Slide 29 *(UPDATE)*
- **Type:** Summary
- **Title:** Week 1 Key Takeaways
- **Takeaway 1:**
  - Number: 01
  - Text: AI augments your expertise — it handles repetitive work while you focus on judgment and strategy
- **Takeaway 2:**
  - Number: 02
  - Text: Policy is non-negotiable — Bottle Rocket for Tesla Data, the Two-Question Test is your guide, platform determines protection
- **Takeaway 3:**
  - Number: 03
  - Text: ROLE + CONTEXT + TASK + FORMAT — the four-part formula transforms vague requests into actionable outputs
- **Takeaway 4:**
  - Number: 04
  - Text: Iterate, verify, and use personas — your first output is a draft, not a deliverable. Check facts, refine, then use.
- **Footer:**
  - Homework: Build a 5-prompt library, select your personal project, track time savings this week
  - Next week: Advanced Prompt Engineering & Data Analysis
  - Bottle Rocket: go.tesla.com/chat | Policy: go.tesla.com/aitools

---

## Slide Distribution Summary

| Section | Slides | Slide Numbers |
|---------|--------|---------------|
| Title + Overview + Agenda | 4 | 01-04 |
| Section 1: Why AI Matters | 2 | 05-06 |
| Section 2: Tesla AI Policy | 5 | 07-11 |
| Policy Quiz & Scenarios | 3 | 12-14 |
| Section 3: Bottle Rocket | 4 | 15-18 |
| Section 4: Prompt Engineering | 3 | 19-21 |
| Exercise 1 + Exercise 2 | 2 | 22-23 |
| Section 5: AI Models & Agents | 1 | 24 |
| Section 6: BR Workshop | 2 | 25-26 |
| Section 7: Quality + Exercise 4 | 3 | 27-29 |
| **TOTAL** | **29** | |

**Slide Type Distribution:**
- Title: 1
- Agenda: 1
- Divider: 4
- Content: 8
- Comparison: 2
- Grid: 4
- Exercise: 7
- Summary: 1
- **Total: 29 slides** (expanded from 24 to accommodate policy quizzes and new content)

**Key Changes from v1.0:**
- Added course overview slides (02-03)
- Added 3 policy quiz/scenario slides (12-14) from policy-quiz.md
- Updated Bottle Rocket slides with live app v2.0.5 data (16-18)
- Added 8 actual AI models from live app (17)
- Added Personas feature (18)
- Added Nabu agents (24)
- Updated exercises with personas, web search, file upload (22, 23, 26, 28)

---

*Slide Plan v2.0 — Week 1: AI Foundations & Policy Compliance*
*Updated with live Bottle Rocket data, policy quizzes, and Nabu agents*
*Designed for 960x540 HTML rendering with Tesla dark theme*
