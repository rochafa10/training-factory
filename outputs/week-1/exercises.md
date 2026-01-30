# Week 1 Exercises: AI Foundations & Policy Compliance

**Total Time:** 60 minutes (during session)
**Tools Needed:** Bottle Rocket (go.tesla.com/chat)
**Difficulty Range:** 2-4 / 10

---

## Skills Progression

### Skills Reinforced (from previous weeks)
- N/A - This is Week 1 (foundation week)

### Skills Introduced (this week)
- **Basic prompting** - Writing requests to AI systems
- **ROLE component** - Specifying AI persona
- **CONTEXT component** - Providing background information
- **TASK component** - Articulating specific requests
- **FORMAT component** - Specifying output structure
- **Iteration** - Refining prompts through follow-ups

---

## Exercise 1: First Bottle Rocket Prompt

**Type:** Guided Practice
**Difficulty:** 2/10
**Time:** 20 minutes
**Tool:** 🟢 Bottle Rocket (Tesla Data OK)

### Scenario

It's 6:45 AM and you need to prepare talking points for the 7:00 AM standup meeting. You want to summarize yesterday's performance and today's priorities.

### Instructions

1. Open Bottle Rocket at **go.tesla.com/chat**
2. Sign in with your Tesla credentials
3. Copy the prompt template below
4. Replace the [PLACEHOLDERS] with your actual DC information
5. Submit the prompt
6. Review the output and note what you'd change

### Prompt to Use

```
ROLE: You are an experienced operations manager at a Tesla distribution center.

CONTEXT: I manage the [SHIFT - morning/afternoon/night] shift at the [LOCATION] DC. Yesterday we processed approximately [NUMBER] orders with [NUMBER] associates. [Add one thing that happened - good or challenging].

TASK: Create a brief standup summary highlighting yesterday's performance and today's priorities.

FORMAT: Use bullet points. Keep it under 150 words. Include:
1) Yesterday's key metrics (estimated is fine)
2) Key highlight or challenge
3) Today's focus areas
```

### Example (Filled In)

```
ROLE: You are an experienced operations manager at a Tesla distribution center.

CONTEXT: I manage the morning shift at the Tampa DC. Yesterday we processed approximately 2,847 orders with 42 associates. We had a conveyor issue from 2-4 PM that caused delays.

TASK: Create a brief standup summary highlighting yesterday's performance and today's priorities.

FORMAT: Use bullet points. Keep it under 150 words. Include:
1) Yesterday's key metrics (estimated is fine)
2) Key highlight or challenge
3) Today's focus areas
```

### What Good Output Looks Like

Your output should include:
- **Bullet point format** (not paragraphs)
- **Yesterday's metrics** mentioned (order count, associate count)
- **The issue you mentioned** addressed
- **Today's priorities** that make sense for follow-up
- **Under 150 words**

Example quality output:
> **Yesterday's Performance:**
> - Processed 2,847 orders with 42 associates
> - Average productivity: 68 orders/associate
>
> **Key Challenge:**
> - Conveyor issue from 2-4 PM caused 2-hour outbound delay
> - Maintenance resolved; monitoring today
>
> **Today's Focus Areas:**
> - Monitor conveyor performance during peak hours
> - Catch up on delayed outbound shipments
> - Safety reminder: clear conveyor areas

### Troubleshooting

| Problem | Likely Cause | Solution |
|---------|--------------|----------|
| Output is too generic | Missing CONTEXT details | Add more specific information about your DC |
| Output is too long | No FORMAT constraint | Add "Keep it under 150 words" to FORMAT |
| Output is paragraphs, not bullets | Missing format instruction | Add "Use bullet points" to FORMAT |
| Doesn't mention your issue | Issue buried in context | Make the issue more prominent in CONTEXT |

### Skills Practiced
- Basic prompting (submitting a request)
- ROLE specification
- CONTEXT provision
- TASK articulation
- FORMAT specification

---

## Exercise 2: Write 3 Operations Prompts

**Type:** Template Exercise
**Difficulty:** 3/10
**Time:** 25 minutes
**Tool:** 🟢 Bottle Rocket (Tesla Data OK)

### Scenario

You're building a personal prompt library for tasks you do regularly. Choose 3 tasks from the categories below and create prompts using the ROLE + CONTEXT + TASK + FORMAT formula.

### Instructions

1. Choose 3 tasks from the options below (or pick your own)
2. Use the template to create a prompt for each task
3. Test each prompt in Bottle Rocket
4. Refine if needed
5. Save your prompts for future use

### Category Options

**Email Drafts:**
- Draft email to vendor about late delivery
- Draft update email to regional leadership
- Draft recognition message for team member

**Meeting Preparation:**
- Create agenda for safety meeting
- Prepare discussion points for 1:1 with supervisor
- Generate questions for end-of-shift debrief

**Performance Summaries:**
- Summarize this week's key metrics
- Create report on an incident
- Prepare shift handoff summary

**Analysis:**
- Analyze why missed shipments increased
- Identify potential causes for overtime spikes
- List factors affecting dock efficiency

### Prompt Template

```
ROLE: [Who should the AI act as?]

CONTEXT: [What's the situation? What background do they need?]

TASK: [What exactly do you need created or analyzed?]

FORMAT: [How should the output be structured? How long?]
```

### Example: Vendor Email

```
ROLE: You are an operations manager who maintains professional vendor relationships.

CONTEXT: I manage the Greenville DC. Our vendor ABC Logistics was scheduled to deliver 500 units yesterday at 2 PM, but they arrived at 6 PM, causing overtime for my team. This is the second late delivery this month.

TASK: Draft a professional email to the vendor's account manager addressing the late deliveries and requesting a meeting to discuss improvement.

FORMAT:
- Professional but firm tone
- Under 200 words
- Include: specific dates, impact on our operations, request for meeting
- Close with next steps
```

### Success Criteria

For each of your 3 prompts, check:
- [ ] Includes ROLE component
- [ ] Includes CONTEXT component (specific to your situation)
- [ ] Includes TASK component (clear deliverable)
- [ ] Includes FORMAT component (structure specified)
- [ ] Output is relevant to your actual work
- [ ] You could reuse this prompt tomorrow

### Troubleshooting

| Problem | Likely Cause | Solution |
|---------|--------------|----------|
| Output doesn't fit my situation | Context too generic | Add specific details about YOUR DC, team, situation |
| Output is too long | No length constraint | Add "Keep under [X] words" to FORMAT |
| Tone is wrong | No tone specified | Add "Use [professional/friendly/direct] tone" |
| Missing key elements | Vague task | List exactly what should be included in FORMAT |

### Skills Practiced
- Applying formula to multiple scenarios
- Customizing prompts with real information
- Testing and evaluating outputs
- Building a reusable prompt library

---

## Exercise 3: Iterate & Improve

**Type:** Template Exercise (with iteration focus)
**Difficulty:** 4/10
**Time:** 15 minutes
**Tool:** 🟢 Bottle Rocket (Tesla Data OK)

### Scenario

Your first prompt output is rarely perfect - that's normal! The skill is knowing how to improve it through follow-up prompts (iteration).

### Instructions

1. Select your **best prompt** from Exercise 2
2. Review the output critically - what's not quite right?
3. Use a **follow-up prompt** to improve it (see techniques below)
4. Compare before and after
5. Be ready to share what you changed

### Iteration Techniques

When your output isn't quite right, try these follow-up prompts:

| Problem | Follow-up Prompt to Try |
|---------|------------------------|
| Too long | "Make this more concise - under 100 words" |
| Too formal | "Rewrite this in a more conversational tone" |
| Too casual | "Make this more professional" |
| Missing details | "Add a section on [specific topic]" |
| Wrong format | "Convert this to bullet points" |
| Too generic | "Make this more specific to distribution center operations" |
| Wrong emphasis | "Focus more on [topic] and less on [other topic]" |
| Needs action items | "Add clear next steps at the end" |

### Your Task

1. **Identify:** What's one thing you'd change about your Exercise 2 output?
2. **Follow-up:** Type a follow-up prompt to fix it (don't rewrite the whole thing!)
3. **Compare:** How did the output improve?

### Example Iteration

**Original output problem:** Email is 350 words, too long for a quick read

**Follow-up prompt:** "Make this more concise - keep it under 150 words while preserving the key points"

**Result:** Focused email that gets to the point faster

### Success Criteria

- [ ] You identified a specific improvement needed
- [ ] You used a follow-up prompt (not a complete rewrite)
- [ ] The output improved
- [ ] You understand when to use iteration vs. starting over

### Troubleshooting

| Problem | Likely Cause | Solution |
|---------|--------------|----------|
| AI ignores my follow-up | Too vague | Be specific: "Make it shorter" → "Under 100 words" |
| Output changed too much | Instruction too broad | Focus on one change at a time |
| Lost good parts | Didn't specify what to keep | Add "Keep [specific element] but change [other element]" |
| Still not right | May need multiple iterations | Try another follow-up, or combine: "Make it shorter AND more professional" |

### Skills Practiced
- Evaluating AI outputs critically
- Using follow-up prompts effectively
- Iterative refinement
- Knowing when iteration is enough vs. starting over

---

## Reflection Questions

After completing the exercises, consider:

1. **Which exercise was most useful for your daily work?**
   - What made it useful?

2. **What would you change about your prompts?**
   - More context? Different format?

3. **What other tasks could you use AI for?**
   - Think about your most repetitive tasks

4. **When will you use these prompts again?**
   - Tomorrow's standup? Next vendor email?

---

## Homework Extension

Continue building your prompt library after the session:

**Part 1: Complete Your 5-Prompt Library (~30 min)**
1. Daily standup preparation ✓ (from Exercise 1)
2. Professional email drafting ✓ (from Exercise 2, if selected)
3. Performance data summary
4. Meeting agenda creation
5. Problem root cause analysis

**Part 2: Select Your Personal Project (~15 min)**
- Review the project themes in the syllabus
- Choose one that solves a real problem at your DC
- Be prepared to discuss in Week 2

**Part 3: Track Your Time Savings**
- For each prompt you use, estimate time saved vs. doing it manually
- Example: Standup prep - AI: 2 min, Manual: 15 min = 13 min saved

---

## Exercise Validation Log

| Exercise | Difficulty | Validation Notes | Feasible? |
|----------|------------|------------------|-----------|
| Exercise 1: First Prompt | 2/10 | Guided, copy-paste with placeholders. Realistic DC scenario. Clear success criteria. | ✅ |
| Exercise 2: Write 3 Prompts | 3/10 | Template-based. Multiple choice of scenarios. Tests formula application. | ✅ |
| Exercise 3: Iterate | 4/10 | Requires critical evaluation. Builds on Exercise 2. Teaches iteration skill. | ✅ |

---

## Quality Checklist

| Check | Requirement | Status |
|-------|-------------|--------|
| Exercise count | 3+ exercises per week | ✅ 3 exercises |
| Difficulty range | Within week's calibration (2-4) | ✅ Range: 2-4 |
| Exercise mix | Matches week's ratio (80% Guided) | ✅ 2 Guided, 1 Template |
| Tool coverage | Correct tool per exercise | ✅ All Bottle Rocket |
| Troubleshooting | 3+ issues per exercise | ✅ 4 per exercise |
| Time realistic | Total ≤ 60 min | ✅ 60 min total |
| Skills tracked | Reinforce + Introduce documented | ✅ 6 skills introduced |

---

*Exercises designed for Week 1: AI Foundations & Policy Compliance*
*Primary Tool: Bottle Rocket (go.tesla.com/chat)*
