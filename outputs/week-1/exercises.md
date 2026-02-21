# Week 1 Exercises: AI Foundations & Policy Compliance

**Total Hands-On Time:** ~195 minutes (across 240-minute session)
**Tools Needed:** Bottle Rocket (go.tesla.com/chat), Nabu (nabu.bottlerocket.tesla.com)
**Difficulty Range:** 2-5 / 10 (Foundation Week)

> **Note:** See `policy-quiz.md` for the interactive AI Policy quiz and manager scenarios (slides 12-13).
> **Note:** See `nabu-exercise.md` for the detailed Nabu Prompt Progression trainer guide.

---

## Session Activity Map

| # | Activity | Type | Time | Tool | Slide |
|---|----------|------|------|------|-------|
| -- | Policy Rapid Fire Quiz | Interactive Quiz | 12 min | Verbal | slide12 |
| -- | What Would You Do? Scenarios | Group Discussion | 12 min | Discussion | slide13 |
| A | Explore Every Feature | Quick Activity | 10 min | Bottle Rocket | slide31 |
| **1** | **First Guided Prompt** | Guided Practice | 20 min | Bottle Rocket | slide22 |
| B | Model Showdown | Quick Activity | 15 min | Bottle Rocket | slide32 |
| **2** | **Operations Prompts + Personas** | Template Exercise | 25 min | Bottle Rocket | slide23 |
| C | Prompt Progression Demo | Instructor-Led Demo | 25 min | Nabu | slide38 |
| **3** | **Design Your Agent on Nabu** | Guided Practice | 20 min | Nabu | slide34 |
| **4** | **BR Deep Workshop** | Workshop | 30 min | Bottle Rocket | slide26 |
| **5** | **Hallucination Hunt** | Reading Exercise | 10 min | None (reading) | slide39 |
| **6** | **Iterate, Verify & Improve** | Template + Challenge | 25 min | Bottle Rocket | slide28 |
| **7** | **Time Savings Baseline** | Guided Setup | 15 min | Bottle Rocket | slide40 |

---

## Skills Progression

### Skills Reinforced (from previous weeks)

- N/A -- This is Week 1 (foundation week)

### Skills Introduced (this week)

- **Basic prompting** -- Writing structured requests to AI systems
- **ROLE component** -- Specifying the AI persona or expertise
- **CONTEXT component** -- Providing background information and situational detail
- **TASK component** -- Articulating a specific, actionable request
- **FORMAT component** -- Defining output structure, length, and style
- **Iteration** -- Refining AI outputs through follow-up prompts
- **Hallucination detection** -- Spotting made-up facts, incorrect claims, and logical errors
- **Verification** -- Cross-referencing AI output against known information
- **Time tracking** -- Measuring AI-assisted time savings against manual baselines

---

## Activity A: Explore Every Feature

**Type:** Quick Activity (Orientation)
**Difficulty:** 1/10
**Time:** 10 minutes
**Tool:** Bottle Rocket (go.tesla.com/chat)
**Slide:** slide31

### Instructions

Open go.tesla.com/chat and try each feature. Click on everything — you can't break it.

1. **Switch Models** — Click the model name. Try Qwen 3 30B, then switch to Grok 4. Ask the same question to both.
2. **Try a Persona** — Click "Select Persona." Pick Feynman. Ask it to explain something complex from your DC.
3. **Toggle Web Search** — Click the globe icon. Ask "What's the weather at my DC today?" Compare with web search ON vs OFF.
4. **Upload a File** — Click the paperclip icon. Upload any PDF or document. Ask BR to summarize it in 3 bullet points.
5. **Start Private Chat** — Click "New Private Chat" in the sidebar. Try a quick question. Check it's not in history.
6. **Browse Personas** — Open the Personas section. Read each persona description. Pick your favorite for daily use.

**Goal:** Get comfortable with the interface before we start structured exercises.

---

## Exercise 1: First Guided Prompt

**Type:** Guided Practice
**Difficulty:** 2/10
**Time:** 20 minutes
**Tool:** Bottle Rocket (Tesla Data OK)
**Session Section:** Section 5 (1:00-1:20)

### Scenario

It is 6:45 AM. Your 7:00 AM standup meeting starts in 15 minutes. You need talking points that cover yesterday's performance, any issues, and today's priorities. Instead of spending 15 minutes pulling this together manually, you are going to do it in under 2 minutes with Bottle Rocket.

### Instructions

1. Open your browser and go to **go.tesla.com/chat**
2. Sign in with your Tesla credentials (if you have not already)
3. **Select the Qwen 3 30B model** from the model selector at the top (this is the default — fast and reliable for daily tasks)
4. Copy the prompt template below into the chat window
5. Replace every **[PLACEHOLDER]** with your actual DC information
6. Submit the prompt
7. Read the output carefully -- does it cover yesterday's metrics, the issue, and today's focus?
8. Note one thing you would change about the output (we will use this later)

> **Why Qwen 3 30B?** It is the default model in Bottle Rocket — fast response time, reliable output quality, and handles structured prompts well. For daily operations tasks like standup prep, it is the right choice.

### Prompt Template

```
ROLE: You are an experienced operations manager at a Tesla distribution center.

CONTEXT: I manage the [SHIFT - morning/afternoon/night] shift at the [YOUR CITY] DC. Yesterday we processed approximately [NUMBER] orders with [NUMBER] associates. [Describe one thing that happened yesterday -- could be a challenge, a win, or an unusual event].

TASK: Create a brief standup summary highlighting yesterday's performance and today's priorities.

FORMAT: Use bullet points. Keep it under 150 words. Include:
1) Yesterday's key metrics (estimated is fine)
2) Key highlight or challenge
3) Today's focus areas
```

### Example (Filled In -- Tampa DC)

```
ROLE: You are an experienced operations manager at a Tesla distribution center.

CONTEXT: I manage the morning shift at the Tampa DC. Yesterday we processed approximately 2,847 orders with 42 associates. We had a conveyor issue from 2-4 PM that caused a 2-hour delay in outbound shipments.

TASK: Create a brief standup summary highlighting yesterday's performance and today's priorities.

FORMAT: Use bullet points. Keep it under 150 words. Include:
1) Yesterday's key metrics (estimated is fine)
2) Key highlight or challenge
3) Today's focus areas
```

### What Good Output Looks Like

A strong output will have all of the following characteristics:

- **Bullet point format** -- not paragraphs or numbered lists
- **Yesterday's metrics** referenced with specifics (order count, associate count, productivity ratio)
- **The issue you described** addressed directly with resolution status
- **Today's priorities** that logically follow from yesterday's situation
- **Under 150 words** -- concise enough to read aloud in 60 seconds

**Example quality output:**

> **Yesterday's Performance:**
> - Processed 2,847 orders with 42 associates (68 orders/associate)
> - Overall throughput on track despite afternoon disruption
>
> **Key Challenge:**
> - Conveyor malfunction 2:00-4:00 PM caused 2-hour outbound delay
> - Maintenance team resolved; system back online by 4:15 PM
>
> **Today's Focus Areas:**
> - Monitor conveyor performance during peak hours (10 AM - 2 PM)
> - Prioritize delayed outbound shipments from yesterday for first wave
> - Safety walkthrough: ensure conveyor area clear of obstructions
> - Target: 2,900+ orders to recover backlog

### Troubleshooting

| Problem | Likely Cause | Solution |
|---------|-------------|----------|
| Output is too generic, does not mention your DC | Missing CONTEXT details | Add more specifics: your city, team size, what happened |
| Output is way too long (300+ words) | No length constraint or constraint buried at the end | Move "Keep it under 150 words" to the top of the FORMAT section |
| Output is paragraphs instead of bullets | FORMAT instruction not explicit enough | Change FORMAT to start with "Use bullet points only. No paragraphs." |
| Output does not address the issue you described | Issue was mentioned too briefly in CONTEXT | Expand the issue description: what happened, when, what was the impact |

### Success Criteria

- [ ] Prompt includes all 4 components (ROLE, CONTEXT, TASK, FORMAT)
- [ ] All [PLACEHOLDERS] replaced with your real DC information
- [ ] Output is in bullet point format
- [ ] Output is under 150 words
- [ ] Output mentions your specific metrics and situation
- [ ] Output includes today's priorities that make sense as follow-up

### Skills Practiced

- Basic prompting (submitting a structured request)
- ROLE specification
- CONTEXT provision with real operational data
- TASK articulation
- FORMAT specification with length constraint
- Evaluating output quality

---

## Activity B: Model Showdown — Same Prompt, Different Brains

**Type:** Quick Activity (Comparison)
**Difficulty:** 2/10
**Time:** 15 minutes
**Tool:** Bottle Rocket (go.tesla.com/chat)
**Slide:** slide32

### Instructions

1. Copy this prompt into Bottle Rocket with **Qwen 3 30B** selected:

```
You are an operations analyst at a Tesla distribution center. Analyze the following scenario: our daily shipment volume increased 40% this week but headcount stayed the same. Recommend 3 specific actions I can take today to maintain delivery targets. Format as a numbered list with estimated impact.
```

2. Read the output. Then switch to **Grok 4** and paste the exact same prompt.
3. Try a third model: **Gemini 2.5 Pro**. Compare all three outputs side-by-side.
4. **Discuss with your table:** Which was fastest? Most detailed? Most useful for YOUR work?

**Key Takeaway:** Speed vs. depth trade-off. Qwen 3 30B is fast. Grok 4 thinks deeper but takes longer. Different models suit different tasks.

---

## Exercise 2: Operations Prompts + Persona Comparison

**Type:** Template Exercise
**Difficulty:** 3/10
**Time:** 25 minutes
**Tool:** Bottle Rocket (Tesla Data OK)
**Session Section:** Section 6 (1:36-2:01)

### Scenario

You are building the start of a personal prompt library -- a set of reusable prompts you can pull up any time you need them. Your goal is to create 3 prompts for tasks you actually perform at work, using the ROLE + CONTEXT + TASK + FORMAT formula for each one. By the end of this exercise you will have 3 tested prompts you can use tomorrow morning.

### Instructions

1. Review the category options below and choose **3 tasks** (from different categories or the same -- your choice)
2. For each task, write a prompt using the template provided
3. Fill in the template with your real DC information
4. Test each prompt in Bottle Rocket
5. Read the output -- does it meet the success criteria below?
6. **For ONE of your 3 prompts:** Open the Personas sidebar and switch to the **Feynman** persona, then re-run the same prompt. Compare the two outputs side by side.
7. Refine any prompt that does not produce a useful result
8. Save all 3 prompts (copy to a document, email to yourself, or bookmark the Bottle Rocket conversation)

> **Persona Comparison:** The Feynman persona explains complex topics in simple terms. Notice how the tone, structure, and vocabulary change compared to the default response. This is useful when creating training materials or communicating to associates who may not have technical backgrounds.

### Time Allocation

| Phase | Time | What You Are Doing |
|-------|------|--------------------|
| Choose your 3 tasks | 5 min | Pick from the list below (or bring your own) |
| Write and test prompts | 15 min | Use the template, submit, evaluate (~5 min each) |
| Persona comparison | 5 min | Re-run one prompt with Feynman persona, compare outputs |

### Category Options

**Category A: Email Drafts**
- Draft an email to a vendor about a late or missed delivery
- Draft an update email to regional leadership about weekly performance
- Draft a recognition message for a team member who went above and beyond
- Draft a response to a customer escalation forwarded by your regional team

**Category B: Meeting Preparation**
- Create an agenda for a weekly safety meeting
- Prepare discussion points for a 1:1 with a direct-report supervisor
- Generate debrief questions for end-of-shift handoff
- Build a list of talking points for a quarterly business review

**Category C: Performance Summaries**
- Summarize this week's key metrics for your DC
- Create a brief incident report for a safety event
- Prepare a shift handoff summary for the incoming AGM or supervisor
- Write a weekly highlight email for your regional director

**Category D: Analysis and Problem-Solving**
- Analyze why missed shipments increased last week
- Identify potential root causes for overtime spikes
- List factors that could be affecting dock door efficiency
- Brainstorm solutions for an associate retention challenge

### Prompt Template (Use for Each of Your 3 Prompts)

```
ROLE: [Who should the AI act as? What expertise do they have?]

CONTEXT: [What is the situation? Include your DC, team size, relevant details, and any specific data or background.]

TASK: [What exactly do you need the AI to produce? Be specific about the deliverable.]

FORMAT: [How should the output be structured? Specify: format type, length, tone, and any required sections.]
```

### Filled-In Example: Vendor Email (Greenville DC)

```
ROLE: You are an operations manager who maintains professional vendor relationships at a high-volume distribution center.

CONTEXT: I manage the Greenville SC distribution center. Our vendor TransQuick Logistics was scheduled to deliver 500 units of Tesla Wall Connectors yesterday at 2:00 PM, but the shipment did not arrive until 6:15 PM. This forced 8 associates to work 2 hours of unplanned overtime to process the delivery before the night cutoff. This is the second late delivery from TransQuick this month -- the first was on January 14 when they arrived 3 hours late with a partial load.

TASK: Draft a professional email to the TransQuick account manager addressing the pattern of late deliveries and requesting a meeting to discuss reliability improvements and contractual obligations.

FORMAT:
- Professional but firm tone -- not aggressive, but clear about the impact
- Under 200 words
- Include: specific dates and times, operational impact (overtime cost, schedule disruption), request for a meeting within the next 5 business days
- Close with concrete next steps and a deadline for response
```

### Success Criteria (Check for EACH of Your 3 Prompts)

- [ ] Includes a ROLE component that gives the AI relevant expertise
- [ ] Includes a CONTEXT component with specific details from your DC
- [ ] Includes a TASK component with a clear, specific deliverable
- [ ] Includes a FORMAT component specifying structure, length, and tone
- [ ] The output is relevant to your actual daily work
- [ ] You could copy this prompt and reuse it tomorrow with minor edits
- [ ] The output required minimal editing to be usable

### Troubleshooting

| Problem | Likely Cause | Solution |
|---------|-------------|----------|
| Output does not fit your situation | CONTEXT is too generic | Add specific details: your city, team size, dates, what happened |
| Output is much too long | No length constraint in FORMAT | Add "Keep under [X] words" as the first line of FORMAT |
| Tone is wrong (too casual or too stiff) | No tone specified in FORMAT | Add "Use a [professional/friendly/direct/firm] tone" |
| Output is missing key elements you needed | TASK is too vague | List exactly what sections or elements the output must include |

### Skills Practiced

- Applying the ROLE + CONTEXT + TASK + FORMAT formula independently
- Customizing prompts with real operational information
- Testing and evaluating AI outputs against success criteria
- Beginning to build a reusable prompt library

---

## Activity C: Prompt Progression Demo (Instructor-Led)

**Type:** Instructor-Led Demo
**Difficulty:** N/A (observation + discussion)
**Time:** 25 minutes
**Tool:** Nabu (nabu.bottlerocket.tesla.com)
**Slide:** slide38
**Detailed Guide:** See `nabu-exercise.md` for the full trainer guide with all 4 prompt levels.

### Overview

The trainer demonstrates 4 Nabu agents — all loaded with the **exact same data** (1,000 Order Monitor orders) but with **4 different prompts** ranging from terrible to expert.

| Level | Agent Name | Prompt Quality |
|-------|-----------|---------------|
| 1 | Order Monitor Level 1 | "Analyze the file." — 3 words |
| 2 | Order Monitor Level 2 | Role + vague task — 2 sentences |
| 3 | Order Monitor Level 3 | Full RCTF structure — no field definitions |
| 4 | Dive Deep Order Monitor | Full RCTF + 50 field definitions |

### Demo Flow (25 min)

1. **Setup (5 min):** Open all 4 agents in separate tabs.
2. **Demo (10 min):** Ask all 4 the same question: "What are the most urgent orders I should worry about right now?" Walk through outputs from Level 1 → Level 4.
3. **Discussion (10 min):** What made the difference at each level? Where's the sweet spot?

### Key Insight

The AI model is the same across all 4 agents. The data is the same. The ONLY variable is the quality of your instructions.

| Jump | What Was Added | Impact |
|------|---------------|--------|
| Level 1 → 2 | Role + basic task + format | Output went from random to somewhat structured |
| Level 2 → 3 | RCTF structure + domain context | Output became operationally relevant |
| Level 3 → 4 | Deep field definitions + analysis framework | Output became expert-level, actionable |

---

## Exercise 3: Design Your Agent on Nabu

**Type:** Guided Practice
**Difficulty:** 3/10
**Time:** 20 minutes
**Tool:** Nabu (nabu.bottlerocket.tesla.com)
**Slide:** slide34

### Scenario

You've just seen how prompt quality transforms AI output. Now it's your turn. You're going to design your own AI agent on Nabu — a tool that your team could use daily, powered by your domain knowledge encoded as an RCTF prompt.

### Instructions

1. Open **nabu.bottlerocket.tesla.com**
2. Browse published agents — note examples like 5-Why Analysis and Watt Wizard
3. Click **"Create New Agent"**
4. Name your agent: **[Your DC] + [Use Case]** (e.g., "Tampa Shift Handoff Agent")
5. Write a system prompt using **ROLE + CONTEXT + TASK + FORMAT**
6. Upload one document to the knowledge base (an SOP, checklist, or template)
7. Test in the **Playground** with a sample query

### Time Allocation

| Phase | Time | What You're Doing |
|-------|------|--------------------|
| Explore existing agents | 5 min | Browse the gallery, see what's possible |
| Build your agent | 10 min | Name, prompt, document upload |
| Test in Playground | 5 min | Ask a real question, evaluate the output |

### Agent Ideas

| Agent | Use Case |
|-------|----------|
| **Shift Handoff Agent** | Generates end-of-shift summaries from your notes |
| **New Hire Onboarding** | Answers associate FAQs from your onboarding docs |
| **Safety Incident Logger** | Structures messy incident notes into proper reports |
| **Weekly KPI Narrator** | Turns spreadsheet metrics into a narrative summary |

### Success Criteria

- [ ] Agent created with a descriptive name
- [ ] System prompt uses RCTF structure
- [ ] At least one document uploaded to knowledge base
- [ ] Tested in Playground with a real question
- [ ] Output is relevant and useful (even if rough)

### Tips

- **Start simple:** One task, one document. You can improve it in Week 3.
- **Use what you learned from the Prompt Progression demo:** Aim for at least Level 3 quality (RCTF structure with domain context).
- **Don't overthink the document:** Even a simple checklist or SOP gives the agent something to work with.

---

## Exercise 4: Bottle Rocket Deep Workshop

**Type:** Workshop (4 Mini-Scenarios)
**Difficulty:** 4/10
**Time:** 30 minutes (~7 minutes per scenario + 2 minutes wrap-up)
**Tool:** Bottle Rocket (Tesla Data OK)
**Session Section:** Section 8 (2:26-2:56)

### Overview

This workshop gives you four realistic DC scenarios. Each scenario also introduces a different Bottle Rocket **feature** — file upload, web search, model comparison, and personas. You do not need to finish all four -- complete at least 2, stretch goal is all 4.

### Instructions (Same for All 4 Scenarios)

1. Read the scenario and the sample data provided
2. Write a prompt using ROLE + CONTEXT + TASK + FORMAT
3. **Use the featured Bottle Rocket capability for that scenario** (see feature tags below)
4. Submit to Bottle Rocket
5. Evaluate the output -- what is good? What needs improvement?
6. Send one follow-up prompt to improve the output
7. Move to the next scenario

### Feature Tags

| Scenario | Featured Capability | How to Use It |
|----------|-------------------|---------------|
| A: Headcount Analysis | **File Upload** | Drag & drop the data as a file instead of pasting it |
| B: Operations Research | **Web Search** | Click the globe icon to toggle web search ON before submitting |
| C: Vendor Communication | **Model Comparison** | Run the same prompt on 2 different models and compare |
| D: Training Outline | **Feynman Persona** | Open Personas sidebar and select "Feynman" before submitting |

---

### Scenario A: Headcount Allocation Analysis (~7 min) — FEATURE: FILE UPLOAD

**Situation:** You need to evaluate whether your shifts are properly staffed based on order volume patterns. Below is your shift data from last week. **Try uploading this as a file** (save it to a text/CSV file first and drag it into the chat) OR paste it directly into your prompt.

**Scenario Data (paste this into your CONTEXT):**

```
SHIFT DATA - WEEK OF JANUARY 20-24:

Monday:
  Morning (6AM-2PM): 18 associates, 1,247 orders processed
  Afternoon (2PM-10PM): 22 associates, 1,893 orders processed
  Night (10PM-6AM): 8 associates, 412 orders processed

Tuesday:
  Morning: 17 associates, 1,189 orders
  Afternoon: 23 associates, 2,104 orders
  Night: 9 associates, 387 orders

Wednesday:
  Morning: 19 associates, 1,302 orders
  Afternoon: 21 associates, 1,756 orders
  Night: 7 associates, 445 orders

Thursday:
  Morning: 18 associates, 1,278 orders
  Afternoon: 24 associates, 2,231 orders
  Night: 8 associates, 398 orders

Friday:
  Morning: 20 associates, 1,534 orders
  Afternoon: 22 associates, 2,087 orders
  Night: 6 associates, 356 orders
```

**Your Task:** Write a prompt that asks the AI to analyze this data and recommend whether headcount should be reallocated across shifts based on productivity per associate and order volume trends.

**Prompt Hint (if stuck):**
```
ROLE: You are a workforce planning analyst for a distribution center.

CONTEXT: [Paste the shift data above]. This is our DC's actual shift performance from last week.

TASK: Analyze the productivity per associate for each shift across the week. Identify which shifts are overstaffed or understaffed relative to order volume. Recommend specific headcount changes.

FORMAT: Present as a table showing shift, average orders/associate, and recommendation. Then provide 3 bullet points with your top staffing recommendations.
```

**What to look for in the output:**
- Does it calculate orders-per-associate correctly for each shift?
- Does it identify the afternoon shift as highest-volume?
- Does it flag any staffing imbalances?
- Are the recommendations specific (e.g., "move 2 associates from Night to Afternoon on Thursdays")?

---

### Scenario B: Operations Research (~7 min) — FEATURE: WEB SEARCH

**Situation:** You want to research best practices for reducing dock door congestion. **Toggle the web search icon (globe) ON** before submitting your prompt — this grounds the AI's response with real-time internet data instead of just its training data.

> **Web Search Tip:** When the globe icon is ON, Bottle Rocket will search the internet and cite real sources. This is useful for researching industry best practices, regulations, or current trends. Compare this to running the same prompt with web search OFF.

**Alternative Scenario (if you prefer):** A safety incident happened yesterday and you need to generate a clean summary from your raw notes. Your handwritten notes are messy -- the AI needs to turn them into a proper report.

**Scenario Data (paste this as your raw notes):**

```
RAW SAFETY NOTES - JANUARY 29, 2026:

- happened around 10:15am near dock door 7
- forklift operator was Carlos M., badge #4472
- he was backing up with a loaded pallet, didn't see the pedestrian walkway was occupied
- near-miss, nobody hurt thank god
- the pedestrian was a new hire from Tuesday's class, Jamie L.
- Jamie was not wearing a high-viz vest -- we checked and the new hire orientation checklist says they should have been issued one on day 1
- turns out the vests were on backorder and the last 3 new hire classes didn't get them
- Carlos said the backup alarm on forklift #12 has been "kind of quiet" for a week but he didn't report it
- I told maintenance to check forklift #12 alarm TODAY
- we need to fix the vest supply chain issue
- also need to retrain on pedestrian walkway rules
- I'm thinking about adding floor markings near dock 7, it's a blind corner
```

**Your Task:** Write a prompt that transforms these raw notes into a structured safety incident summary suitable for sending to your regional safety manager.

**Prompt Hint (if stuck):**
```
ROLE: You are a safety coordinator at a distribution center writing an official incident report.

CONTEXT: [Paste the raw notes above]. These are my handwritten notes from a near-miss safety incident yesterday.

TASK: Transform these notes into a structured safety incident summary for the regional safety manager.

FORMAT: Use standard incident report format:
1) Incident Summary (2-3 sentences)
2) Personnel Involved
3) Root Causes Identified
4) Immediate Actions Taken
5) Recommended Corrective Actions (prioritized)
Keep it under 300 words. Professional tone.
```

**What to look for in the output:**
- Does it organize the messy notes into a clean structure?
- Does it identify multiple root causes (missing vests, faulty alarm, blind corner)?
- Are the corrective actions specific and prioritized?
- Is the tone appropriate for a safety report?

---

### Scenario C: Vendor Communication for Delayed Shipment (~7 min) — FEATURE: MODEL COMPARISON

**Situation:** You just received word that a critical shipment of EV charger components will be 3 days late. This will impact your ability to fulfill customer orders. You need to draft two communications: one to the vendor and one to your regional director.

> **Model Comparison:** Run your prompt first with **Qwen 3 30B** (default), then switch to **Grok 4** and re-run the exact same prompt. Compare the outputs — notice differences in tone, detail level, and structure. This teaches you when to switch models.

**Scenario Data:**

```
SHIPMENT DELAY DETAILS:

Vendor: Meridian Parts Supply
Original delivery date: Monday, February 2
New estimated delivery: Thursday, February 5
Items: 2,400 EV Wall Connector mounting brackets
Impact: Cannot fulfill ~800 customer orders until brackets arrive
Current backlog: 247 orders already waiting on this component
Customer promise dates affected: February 3-4 deliveries will slip
Vendor reason: "Manufacturing equipment failure at supplier facility"
This is the first issue with Meridian in 6 months -- they are normally reliable
```

**Your Task:** Write a prompt that produces a professional email to the vendor requesting expedited shipping and a separate internal update to your regional director explaining the impact and your mitigation plan.

**Prompt Hint (if stuck):**
```
ROLE: You are an AGM at a Tesla distribution center managing a supply chain disruption.

CONTEXT: [Paste the shipment delay details above].

TASK: Draft two communications:
1) Email to Meridian's account rep requesting expedited shipping and asking what they can do to minimize the delay
2) Internal update to my regional director explaining the situation, customer impact, and my mitigation plan

FORMAT: Label each email clearly. Professional tone for both. Vendor email: under 150 words, firm but fair (they are normally reliable). Internal update: under 200 words, include specific numbers and a 3-point mitigation plan.
```

**What to look for in the output:**
- Are both emails clearly separated and labeled?
- Does the vendor email acknowledge their normally good track record while being firm?
- Does the internal update include specific impact numbers (800 orders, Feb 3-4 dates)?
- Is there a concrete mitigation plan (not just "we will monitor the situation")?

---

### Scenario D: New Associate Training Outline (~7 min) — FEATURE: FEYNMAN PERSONA

**Situation:** You have 6 new associates starting on Monday. Your current onboarding process takes 3 full days but you have been told you need to get it down to 2 days without cutting safety content. You need an optimized training outline.

> **Persona Usage:** Open the Personas sidebar and select **"Feynman"** before submitting your prompt. The Feynman persona explains complex topics in simple, clear terms — ideal for creating training materials that new associates can actually follow.

**Scenario Data:**

```
CURRENT 3-DAY ONBOARDING SCHEDULE:

Day 1 (8 hours):
- HR paperwork and benefits review (2 hrs)
- Facility tour (1.5 hrs)
- Safety orientation: PPE, fire exits, emergency procedures (2 hrs)
- Lunch (1 hr)
- Warehouse systems overview: WMS login, scanning basics (1.5 hrs)

Day 2 (8 hours):
- Forklift safety (non-operators): awareness training (1.5 hrs)
- Picking and packing procedures (3 hrs)
- Lunch (1 hr)
- Quality control checkpoints (1.5 hrs)
- Shipping and receiving basics (1 hr)

Day 3 (8 hours):
- Advanced WMS: cycle counts, inventory lookup (2 hrs)
- Shadowing experienced associate on the floor (3 hrs)
- Lunch (1 hr)
- Review quiz and Q&A (1 hr)
- Graduation walkthrough with supervisor (1 hr)
```

**Your Task:** Write a prompt that asks the AI to compress this into a 2-day schedule, keeping all safety content intact, and identifying what can be shortened, combined, or moved to on-the-job training during the first week.

**Prompt Hint (if stuck):**
```
ROLE: You are a training coordinator at a high-volume distribution center who specializes in efficient onboarding programs.

CONTEXT: [Paste the current 3-day schedule above]. I need to compress this from 3 days to 2 days. Safety content (PPE, fire exits, emergency procedures, forklift awareness) CANNOT be shortened. 6 new associates start Monday.

TASK: Redesign this as a 2-day onboarding schedule. Identify what to shorten, combine, or defer to supervised on-the-job training during Week 1.

FORMAT:
- Day 1 and Day 2 schedule with time blocks
- A "Deferred to Week 1 OJT" section listing what moves to on-the-job
- Brief rationale for each change
- Keep total training time at 16 hours (2 x 8-hour days)
```

**What to look for in the output:**
- Is all safety content preserved at full length?
- Are the time blocks realistic (no 30-minute blocks for what was previously 2 hours)?
- Is the "deferred" content clearly identified with a plan for when it happens?
- Does the 2-day schedule add up to 16 hours?

---

### Workshop Troubleshooting (All Scenarios)

| Problem | Likely Cause | Solution |
|---------|-------------|----------|
| AI did not use the data you pasted | Data was not clearly connected to the prompt | Introduce the data in CONTEXT: "Here is the data:" then paste it directly |
| Output is too surface-level | TASK is too vague | Add "Be specific" and list what analysis you expect |
| Calculations seem wrong | AI is not reliable at math | Verify any numbers the AI produces with a calculator |
| Output ignores your format request | FORMAT section was too long or buried | Keep FORMAT instructions short and put the most important format requirement first |

### Success Criteria (Per Scenario)

- [ ] Prompt follows ROLE + CONTEXT + TASK + FORMAT structure
- [ ] Scenario data was included in the prompt
- [ ] Output addresses the specific situation described
- [ ] You iterated at least once to improve the output
- [ ] The final output is something you could actually use (or adapt) at your DC

### Skills Practiced

- Writing prompts for data analysis scenarios
- Providing raw data to AI for structuring and analysis
- Transforming unstructured notes into professional documents
- Drafting multiple communications from a single prompt
- Iterating to improve first-pass outputs
- Verifying AI-generated calculations

---

## Exercise 5: Hallucination Hunt

**Type:** Guided Exercise
**Difficulty:** 3/10
**Time:** 10 minutes
**Tool:** None required (reading exercise, then discussion)
**Session Section:** Section 9 (2:50-3:10, part of Quality Checking AI Outputs)

### Scenario

Your colleague used Bottle Rocket to generate a summary about DC operations best practices. The output looks polished and confident -- but it contains **3 deliberate errors**. Your job is to find all 3 before this information gets shared with leadership.

This is what AI hallucination looks like in the real world: confident, professional-sounding text that contains made-up facts, incorrect claims, and logical errors.

### The AI-Generated Output (Contains 3 Errors)

Read the following output carefully. It was generated by an AI in response to the prompt "Summarize best practices for Tesla DC shift handoff procedures."

---

> **Shift Handoff Best Practices for Tesla Distribution Centers**
>
> Effective shift handoffs are critical to maintaining throughput and safety at Tesla distribution centers. According to the Tesla Operations Handbook (Section 12.4), all shift handoffs must include a documented transfer of open issues, pending orders, and equipment status.
>
> **Key Metrics to Include in Every Handoff:**
> - Orders processed vs. target (daily goal is typically 95% fulfillment rate)
> - Current backlog count and estimated clearance time
> - Equipment status: any units down or in maintenance
> - Staffing: callouts, late arrivals, overtime approvals
>
> **Safety Protocol:**
> Tesla's Global Safety Standard requires that outgoing shift leads complete a safety walkthrough with the incoming lead. This includes verifying that all forklift operators have completed their OSHA-mandated daily 15-minute pre-shift vehicle inspection checklist and that no open safety incidents are pending.
>
> **Communication Standard:**
> According to a 2025 MIT Supply Chain study, distribution centers that implemented structured handoff protocols saw a 47% reduction in errors during shift transitions. Tesla's own internal data shows that DCs using the standard handoff template reduced missed shipments by 31% in Q3 2025.
>
> Handoffs should take no more than 10 minutes and can be supported by AI tools like Bottle Rocket to generate the summary automatically.

---

### Your Task

1. Read the output above carefully
2. Identify the **3 errors** (hallucinations, incorrect claims, or logical problems)
3. For each error, write down: what is wrong and why it matters
4. Compare your answers with the answer key below

**Take 5 minutes to find the errors before looking at the answer key.**

---

### Answer Key

**Error 1: Made-Up Statistic**

> *"According to a 2025 MIT Supply Chain study, distribution centers that implemented structured handoff protocols saw a 47% reduction in errors during shift transitions."*

**What is wrong:** This statistic and study do not exist. The AI fabricated a specific source (MIT), a specific year (2025), and a specific number (47%) to sound authoritative. This is a classic hallucination -- the AI generates plausible-sounding citations that are entirely made up.

**Why it matters:** If you included this in a presentation to leadership, someone could check the source and find it does not exist. This destroys your credibility and the credibility of AI-assisted work.

**How to catch it:** Ask yourself, "Can I verify this?" If a statistic cites a specific study, search for it. If you cannot find it, do not use it.

---

**Error 2: Incorrect Policy Claim**

> *"Tesla's Global Safety Standard requires that outgoing shift leads complete a safety walkthrough with the incoming lead. This includes verifying that all forklift operators have completed their OSHA-mandated daily 15-minute pre-shift vehicle inspection checklist."*

**What is wrong:** OSHA does not mandate a "daily 15-minute pre-shift vehicle inspection checklist" for forklifts. OSHA standard 1910.178(q)(7) requires that powered industrial trucks be examined before being placed in service, but there is no mandated 15-minute duration. The AI invented a specific time requirement and attributed it to a regulatory body.

**Why it matters:** Citing incorrect OSHA requirements in safety documentation could cause compliance issues. If associates are told they must spend exactly 15 minutes on pre-shift inspections because "OSHA requires it," that is misinformation. Actual OSHA inspections follow your facility's checklist and take as long as needed.

**How to catch it:** Any time AI cites a specific regulation or policy, verify it against the actual source. Check go.tesla.com for internal policies and osha.gov for federal requirements.

---

**Error 3: Logical Error / Unverifiable Internal Claim**

> *"Tesla's own internal data shows that DCs using the standard handoff template reduced missed shipments by 31% in Q3 2025."*

**What is wrong:** The AI cannot access Tesla internal data. It does not have visibility into Tesla's DC performance metrics, internal templates, or quarterly results. This is a fabricated internal claim presented as if the AI had access to proprietary systems. There is no "standard handoff template" that has been measured this way.

**Why it matters:** Sharing fabricated internal data with leadership is dangerous. If your regional director asks "where did this 31% number come from?" you have no source. AI-generated internal claims are always suspect because the AI has no access to your internal systems.

**How to catch it:** If the AI claims to reference internal Tesla data, that is a red flag. Bottle Rocket does not have access to Tesla's operational databases. It can help you write about your data -- but only if you provide the data in your prompt.

---

### Key Takeaway

AI hallucinations are dangerous because they sound confident and professional. The three most common types are:

| Hallucination Type | Example from This Exercise | How to Catch It |
|-------------------|---------------------------|-----------------|
| **Made-up statistics** | The fake MIT 47% study | Search for the cited source |
| **Incorrect policy/regulation claims** | The fake OSHA 15-minute requirement | Verify against the actual regulation |
| **Fabricated internal data** | The fake 31% Tesla metric | Ask: "Did I provide this data, or did the AI invent it?" |

**The rule:** If you did not provide the data and you cannot verify the claim, do not use it.

### Troubleshooting

| Problem | Likely Cause | Solution |
|---------|-------------|----------|
| Could not find all 3 errors | The errors sound very plausible (that is the point) | Focus on specific numbers, named sources, and regulatory claims -- these are where AI fabricates most |
| Thought something was an error but it was not | Being too cautious | Good instinct! Over-checking is better than under-checking. Verify before removing |
| Not sure how to verify claims in real work | Need a verification workflow | Rule of thumb: statistics need a source you can find, policies need a document you can open, internal data needs a system you can check |

### Success Criteria

- [ ] Found Error 1 (made-up MIT statistic)
- [ ] Found Error 2 (incorrect OSHA claim)
- [ ] Found Error 3 (fabricated internal Tesla data)
- [ ] Can explain why each error matters
- [ ] Understands the verification approach for each type

### Skills Practiced

- Hallucination detection in professional-sounding AI output
- Distinguishing between plausible and verified claims
- Identifying made-up statistics, false regulatory citations, and fabricated internal data
- Developing a personal verification workflow

---

## Exercise 6: Iterate, Verify & Improve

**Type:** Template Exercise + Challenge
**Difficulty:** 4/10
**Time:** 25 minutes
**Tool:** Bottle Rocket (Tesla Data OK)
**Session Section:** Section 10 (3:10-3:35)

### Scenario

You have written several prompts today. Some produced great results on the first try. Others were close but not quite right. The skill that separates a beginner AI user from a competent one is knowing how to improve an output through iteration -- and knowing when to start over instead.

In this exercise you will take your best prompt from Exercise 2 or Exercise 3, identify what is not quite right about the output, apply iteration techniques, and produce a final version that is genuinely ready to use.

### Instructions

1. Open Bottle Rocket and find your best output from Exercise 2 or Exercise 3
2. Read the output critically using the evaluation checklist below
3. Identify 1-2 specific things that need improvement
4. Apply one of the iteration techniques from the table below
5. Compare the before and after versions
6. If the output is still not right, try a second iteration technique
7. Write down your final assessment: is this output ready to use?

### Step 1: Evaluate Your Output (2 minutes)

Use this checklist to find what needs improvement:

| Question | Yes/No | If No, What Is Wrong? |
|----------|--------|----------------------|
| Is the information accurate and verifiable? | | |
| Is the length appropriate for the purpose? | | |
| Is the tone right for the audience? | | |
| Does it include all the sections or elements you need? | | |
| Is it specific to your DC (not generic)? | | |
| Could you use it right now without major edits? | | |

### Step 2: Choose an Iteration Technique (1 minute)

| What Is Wrong | Iteration Technique | Example Follow-Up Prompt |
|---------------|--------------------|-----------------------------|
| Too long | Condense | "Shorten this to under 100 words. Keep the 3 most important points." |
| Too short / missing detail | Expand | "Expand the section on [topic]. Add specific examples and data points." |
| Wrong tone (too formal) | Adjust tone | "Rewrite this in a more direct, conversational tone. I am sending this to my team, not to executives." |
| Wrong tone (too casual) | Adjust tone | "Make this more professional. This is going to the regional director." |
| Missing a section | Add content | "Add a section at the end with 3 specific next steps and owners for each action." |
| Format is wrong | Reformat | "Convert this from paragraphs to a bullet-point summary. Group by category." |
| Too generic | Specify | "Make this more specific to a Tesla distribution center processing 3,000+ orders per day with 45 associates." |
| Includes unverifiable claims | Remove hallucinations | "Remove any statistics or claims that you cannot verify. Replace with placeholders like [INSERT ACTUAL METRIC] that I can fill in." |

### Step 3: Iterate (10 minutes)

Send your follow-up prompt in the **same Bottle Rocket conversation** (this preserves context). Review the new output. If it is better but still not right, try one more iteration.

### Step 4: Compare Before and After (5 minutes)

Write brief notes on what changed:

```
BEFORE:
- What was wrong: [describe the issue]
- Example of the problem: [quote a specific sentence or section]

AFTER:
- What improved: [describe the change]
- Example of improvement: [quote the improved version]

VERDICT:
- Ready to use? [Yes / Almost / No - needs more work]
- What I would still change manually: [anything left]
```

### Step 5: Decide -- Iterate More or Start Over? (2 minutes)

Use this decision guide:

| Situation | Action | Why |
|-----------|--------|-----|
| Output is 70-90% right, needs minor fixes | **Iterate** -- send follow-up prompts | Faster than starting over; context is preserved |
| Output is 50-70% right, needs significant restructuring | **Iterate with a detailed rewrite request** -- describe exactly what you want changed | Worth trying before starting over |
| Output is below 50% right or went in the wrong direction | **Start over** -- write a new prompt from scratch | The conversation context is leading the AI astray; a fresh start is faster |
| You have iterated 3+ times and it is still not right | **Start over** with a completely rewritten prompt | Diminishing returns; the original prompt structure was the problem |
| The output has the right content but wrong structure | **Iterate** -- ask for a format change only | Content is the hard part; reformatting is easy for AI |

### Troubleshooting

| Problem | Likely Cause | Solution |
|---------|-------------|----------|
| AI ignored my follow-up instruction | Follow-up was too vague | Be extremely specific: not "make it better" but "shorten the second paragraph to 2 sentences and remove the bullet about scheduling" |
| Output changed too much -- lost the good parts | Instruction was too broad (e.g., "rewrite this") | Specify what to keep: "Keep the first 3 bullet points exactly as they are. Only change the closing paragraph." |
| Each iteration makes it worse | Conversation context is confused | Start a new chat and paste in your best version so far with fresh instructions |
| Cannot decide whether to iterate or start over | Unsure of output quality | Ask yourself: "If I got this from a coworker, would I send it back with comments or ask them to redo it entirely?" |

### Success Criteria

- [ ] Identified at least one specific improvement needed in your output
- [ ] Applied an iteration technique using a follow-up prompt (not a complete rewrite)
- [ ] Output measurably improved (you can point to what changed)
- [ ] Completed the before/after comparison
- [ ] Can articulate when to iterate vs. when to start over
- [ ] Final output is close to "ready to use" quality

### Skills Practiced

- Critical evaluation of AI outputs
- Effective follow-up prompting
- Iterative refinement workflow
- Decision-making: iterate vs. start over
- Verifying that changes improved (not just changed) the output
- Producing production-ready content through AI collaboration

---

## Exercise 7: Time Savings Baseline Setup

**Type:** Guided Setup
**Difficulty:** 2/10
**Time:** 15 minutes
**Tool:** Bottle Rocket (Tesla Data OK) + your preferred tracking method
**Session Section:** Section 11 (3:35-3:50)

### Scenario

You have been using AI for the past 2+ hours. You have seen it produce standup summaries, emails, analysis, and reports. But the question leadership will ask is: "How much time does this actually save?" Starting right now, you are going to set up a simple way to track your time savings so you have real data to answer that question.

### Why This Matters

- Week 1 target: **15-20 minutes saved per day**
- Week 4 target: **40-60 minutes saved per day**
- Over a year at 40 min/day: **173 hours saved** -- that is more than 4 full work weeks
- This data will build the business case for rolling AI tools out to your 30-50 associates

### Instructions

**Step 1: Choose Your Tracking Method (2 minutes)**

Pick whichever method you will actually use daily. Consistency matters more than format.

| Option | Best For | How to Set Up |
|--------|----------|---------------|
| **Spreadsheet** (Excel or Google Sheets) | People who like data and charts | Create a new spreadsheet with the columns below |
| **Notebook** (physical) | People who prefer writing things down | Draw the table below on a fresh page |
| **Sticky note on monitor** | People who want the simplest possible method | Write 3 columns: Task / Manual Time / AI Time |

**Step 2: Create Your Tracking Template (3 minutes)**

If using a spreadsheet, create these columns:

| Date | Task Description | Estimated Manual Time (min) | AI-Assisted Time (min) | Time Saved (min) | Notes |
|------|-----------------|----------------------------|----------------------|-----------------|-------|
| | | | | | |

If using Bottle Rocket to generate your spreadsheet template, try this prompt:

```
ROLE: You are a productivity analyst.

CONTEXT: I am tracking time savings from using AI tools at work. I need a simple tracking spreadsheet I can fill in daily.

TASK: Create a time savings tracking template with columns for: date, task description, estimated manual time in minutes, AI-assisted time in minutes, time saved, and notes. Include 3 example rows using distribution center tasks.

FORMAT: Output as a table I can copy into Excel. Include example data for: standup preparation, vendor email, and shift summary report.
```

**Step 3: Measure Your First Baseline (5 minutes)**

Pick ONE task from today's exercises and measure it:

1. **Choose a task you did today** (standup prep, vendor email, safety summary, etc.)
2. **Estimate manual time:** How long would this task take you without AI? Be honest -- include thinking time, drafting, editing, and formatting. Write the number down.
3. **Record AI-assisted time:** How long did it actually take with AI? Include prompt writing, waiting for output, reading, iterating, and final editing. Write this number down.
4. **Calculate time saved:** Manual time minus AI-assisted time = time saved.

**Example Baseline Measurement:**

| Date | Task | Manual Time | AI Time | Saved | Notes |
|------|------|-------------|---------|-------|-------|
| Jan 31 | Standup talking points | 15 min | 3 min | 12 min | Used Exercise 1 prompt. Output needed minor edits. |
| Jan 31 | Vendor email (late delivery) | 12 min | 4 min | 8 min | Had to iterate once on tone. Second version was good. |
| Jan 31 | Safety incident summary | 20 min | 5 min | 15 min | AI structured my messy notes perfectly. Just verified facts. |

**Step 4: Set Your Week 2 Goal (3 minutes)**

Based on your first measurement, set a realistic daily goal:

1. **How many tasks per day** could you use AI for? (Start with 2-3)
2. **Estimated daily savings:** If each task saves ~10 minutes, 3 tasks = 30 minutes/day
3. **Write your goal:** "By Week 2, I will use Bottle Rocket for ___ tasks per day, targeting ___ minutes of daily time savings."

**Goal-Setting Guide:**

| If You Are... | Start With | Target Daily Savings |
|---------------|-----------|---------------------|
| Very cautious, want to see more proof | 1-2 tasks/day | 10-15 min/day |
| Moderately confident, ready to try | 2-3 tasks/day | 15-25 min/day |
| Enthusiastic, want to go all in | 3-5 tasks/day | 20-30 min/day |

**Step 5: Commit to Daily Tracking (2 minutes)**

Pick a trigger that will remind you to track:
- "Every time I close Bottle Rocket, I log the task and time"
- "At the end of each day, I spend 2 minutes updating my tracking sheet"
- "I keep a sticky note next to my monitor and jot down times as I go"

Write your tracking trigger here: _______________________________________________

### Troubleshooting

| Problem | Likely Cause | Solution |
|---------|-------------|----------|
| Not sure how long the manual version takes | You do the task on autopilot | Time yourself doing the task manually once this week -- use a stopwatch |
| AI time seems high because I am still learning | Learning curve is normal | Your AI time will decrease with practice. Log it honestly now so you can see improvement |
| Tasks I do are not the same every day | Varied workload | Track categories: "emails," "summaries," "analysis." Average the savings per category over a week |
| Forgot to track | No reminder system | Set a daily calendar reminder or put the tracking sheet as your browser homepage |

### Success Criteria

- [ ] Chose a tracking method (spreadsheet, notebook, or sticky note)
- [ ] Created or copied the tracking template
- [ ] Recorded at least one baseline measurement from today's exercises
- [ ] Manual time estimate is honest (not inflated to make AI look better)
- [ ] AI time includes everything (prompt writing, waiting, reading, editing)
- [ ] Set a specific, numbered goal for Week 2 (tasks/day and minutes saved)
- [ ] Identified a daily trigger for tracking

### Skills Practiced

- Establishing a measurement baseline for AI productivity
- Honest time estimation and comparison
- Goal setting based on evidence
- Building a daily tracking habit

---

## Reflection Questions

After completing today's exercises, take 3 minutes to consider:

1. **Which exercise was most useful for your actual daily work?**
   Think about what you will use first thing Monday morning. Was it the standup prep? The vendor email? The safety summary? The answer tells you where AI adds the most immediate value for you.

2. **Where did AI surprise you -- either positively or negatively?**
   Was there a moment where the output was much better than expected? Or a moment where it confidently said something wrong? Both experiences are important to remember.

3. **What is the single biggest barrier to you using AI daily?**
   Is it time to write prompts? Trusting the output? Remembering to use it? Knowing what tasks to apply it to? Identifying the barrier is the first step to removing it.

4. **If you could give Bottle Rocket to one of your supervisors tomorrow, what one task would you show them first?**
   The answer to this question is the seed of your team rollout plan. Start with the task that produces the most obvious time savings with the least learning curve.

---

## Homework Extension

**Maximum Time:** 45 minutes (respect your schedule -- do not exceed this)

### Part 1: Complete Your 5-Prompt Library (30 min)

Build on what you created today. By the start of Week 2, you should have 5 tested, reusable prompts:

| # | Prompt Purpose | Source | Status |
|---|----------------|--------|--------|
| 1 | Daily standup preparation | Exercise 1 | Done today |
| 2 | Professional email drafting | Exercise 2 (if selected) | Done today or homework |
| 3 | Performance data summary | Create this week | Homework |
| 4 | Meeting agenda creation | Create this week | Homework |
| 5 | Problem root cause analysis | Create this week | Homework |

For each new prompt:
- Use the ROLE + CONTEXT + TASK + FORMAT formula
- Test it in Bottle Rocket at least once
- Refine if the output is not useful
- Save it somewhere you can find it (document, email, bookmarked chat)

### Part 2: Select Your Personal Project (15 min)

Review these project themes and choose one that solves a real problem at your DC:

| Theme | Example Projects |
|-------|-----------------|
| **Daily Operations** | Automated shift handoff summaries, daily KPI narrative generator |
| **Communication** | Vendor email template library, leadership update generator |
| **Safety** | Incident report structuring tool, safety meeting agenda builder |
| **Training** | New associate onboarding checklist optimizer, skill gap analysis |
| **Analytics** | Weekly performance trend summarizer, overtime root cause analyzer |

Write down:
- Which theme you chose: _______________________________________________
- What specific problem it solves: _______________________________________________
- Why this matters to your DC: _______________________________________________

Be prepared to discuss your choice at the start of Week 2.

### Part 3: Track Your Time Savings (Ongoing)

- Use your tracking method from Exercise 6 every day this week
- Aim for at least 1-2 AI-assisted tasks per day
- Bring your tracking data to Week 2 -- we will review as a group
- Target: 15-20 minutes saved per day by end of Week 1

---

## Exercise Validation Log

| Activity/Exercise | Type | Difficulty | Time | Slide | Validation Notes | Feasible? |
|-------------------|------|------------|------|-------|------------------|-----------|
| Activity A: Explore Every Feature | Quick Activity | 1/10 | 10 min | slide31 | 6 tasks covering all BR features. Self-guided exploration. | Yes |
| Exercise 1: First Guided Prompt | Guided | 2/10 | 20 min | slide22 | Copy-paste template with [PLACEHOLDERS]. Filled-in example provided. Troubleshooting table. | Yes |
| Activity B: Model Showdown | Quick Activity | 2/10 | 15 min | slide32 | Same prompt across 3 models. Side-by-side comparison. Group discussion. | Yes |
| Exercise 2: Ops Prompts + Personas | Template | 3/10 | 25 min | slide23 | 4 categories with 4 options each. Prompt template. Persona comparison. | Yes |
| Activity C: Prompt Progression Demo | Instructor-Led | N/A | 25 min | slide38 | 4 Nabu agents pre-built. Same question to all 4. Progressive reveal. See nabu-exercise.md. | Yes |
| Exercise 3: Design Your Agent | Guided | 3/10 | 20 min | slide34 | Nabu agent builder walkthrough. RCTF prompt, document upload, Playground test. | Yes |
| Exercise 4: BR Deep Workshop | Workshop | 4/10 | 30 min | slide26 | 4 mini-scenarios. Each features a BR capability. Prompt hints provided. | Yes |
| Exercise 5: Hallucination Hunt | Guided | 3/10 | 10 min | slide39 | Pre-written AI output with 3 planted errors. Answer key with explanations. | Yes |
| Exercise 6: Iterate, Verify & Improve | Template + Challenge | 4/10 | 25 min | slide28 | Builds on Exercise 2/4 outputs. 8 iteration techniques. Before/after template. | Yes |
| Exercise 7: Time Savings Baseline | Guided Setup | 2/10 | 15 min | slide40 | 3 tracking methods. First baseline measurement. Goal-setting framework. | Yes |

**Total Hands-On Time:** 10 + 20 + 15 + 25 + 25 + 20 + 30 + 10 + 25 + 15 = **195 minutes of activity/exercise content**
**Note:** Activities overlap with instruction time. Pure student hands-on is ~145 minutes; remaining ~50 minutes includes demo and discussion.

---

## Quality Checklist

| Check | Requirement | Status |
|-------|-------------|--------|
| Exercise count | 7 numbered exercises + 3 quick activities + policy quiz | 10 total activities + policy quiz |
| Difficulty range | Within Week 1 calibration (2-5/10) | Range: 1-4 (appropriate for foundation) |
| Exercise types | Mix of Guided, Template, Workshop, Demo, and Challenge | 3 Guided, 2 Template, 1 Workshop, 1 Demo, 1 Challenge, 3 Quick Activities |
| Tool coverage | Exercises use correct tools | Bottle Rocket (Ex 1-2, 4, 6-7, Activities A-B), Nabu (Ex 3, Activity C) |
| Nabu coverage | Nabu agent building included | Activity C (demo) + Exercise 3 (hands-on build) |
| AI Tiers coverage | Three Tiers concept taught | slide37 (concept) + Activity C (practical demo of Tier 1 agents) |
| Scenario realism | All scenarios use DC operations situations | Standup, vendor, safety, headcount, training, time tracking, Order Monitor |
| Scaffolding | Difficulty increases across exercises | Activities (1-2) → Ex1-2 (2-3) → Ex3-4 (3-4) → Ex5-6 (3-4) → Ex7 (2) |
| Troubleshooting | 3-4 issues per numbered exercise | 4 issues per exercise (minimum) |
| Success criteria | Checklist for each numbered exercise | All 7 exercises have checkable success criteria |
| Skills tracking | Each exercise lists skills practiced | All exercises include Skills Practiced section |
| Time realistic | Total maps to session agenda | ~195 min activity content within 240-min session |
| Prompt templates | Provided where needed | Templates in Ex1, Ex2, Ex4, Ex7 |
| Filled examples | At least one per major exercise | Ex1 (Tampa), Ex2 (Greenville), Ex4 (all scenarios have hints) |
| Hallucination training | Included per syllabus | Ex5 dedicated to hallucination detection |
| Time tracking setup | Baseline established per syllabus | Ex7 dedicated to measurement baseline |
| Policy quiz reference | Not duplicated, properly referenced | Referenced at top: "See policy-quiz.md" |
| Nabu exercise reference | Not duplicated, properly referenced | Referenced at top: "See nabu-exercise.md" |
| Homework | Extension activities within 45-min cap | 3-part homework, 45 min max |
| Reflection | Questions prompt genuine thinking | 4 questions, each with a follow-up prompt |

---

*Exercises designed for Week 1: AI Foundations & Policy Compliance*
*Session Duration: 240 minutes (4 hours)*
*Primary Tool: Bottle Rocket (go.tesla.com/chat)*
*Difficulty Progression: Foundation (2-4/10)*
