# Week 1: AI Foundations & Policy Compliance

**Duration:** 120 minutes
**Prerequisites:** None - this is the foundation week
**Tools Needed:** Laptop with browser access to go.tesla.com/chat

---

## Content Sources

This content is based on:
- `outputs/week-1/research.md` (primary source)
- `outputs/syllabus.md` (objectives)

---

## Learning Objectives

By the end of this session, participants will be able to:
1. Understand what AI can and cannot do for operations
2. Navigate Tesla's AI Acceptable Use Policy with confidence
3. Access and use Bottle Rocket effectively
4. Write effective prompts using the ROLE + CONTEXT + TASK + FORMAT formula

---

## Section 1: Why AI Matters for Operations

**Duration:** 10 minutes
**Objective:** Understand the business case for AI in operations management

### Key Concept

Artificial Intelligence is transforming how operations leaders work. AI tools can analyze data, draft communications, and summarize reports in minutes instead of hours. But AI is not magic - it's a tool that works best when you understand what it can and cannot do.

> **From Research:** "AI is most effective when positioned as a collaborative tool that handles high-volume, repetitive analytical work while humans focus on strategic decision-making, exception handling, and areas requiring contextual judgment."
> **Source:** research.md, Key Concepts - AI Capabilities for Operations Managers

### Why This Matters

As an AGM, you spend hours each week on tasks AI can help with:
- Preparing standup summaries
- Drafting emails to leadership
- Analyzing performance data
- Creating meeting agendas
- Investigating root causes

> **From Research:** Studies show employees using AI tools save an average of 7.5 hours per week on task completion.
> **Source:** research.md, Key Statistics (Worklytics 2025 Productivity Benchmarks)

### The Goal: 30+ Minutes Saved Daily

Our target for this course is for each of you to save 30+ minutes per day through AI-assisted tasks. That's 2.5 hours per week - time you can redirect to strategic work, team development, or simply reducing stress.

> **From Research:** "Organizations achieving 20-30% efficiency improvements when implementing proper AI training."
> **Source:** research.md, Executive Summary

### Common Mistakes

**Mistake 1:** Expecting AI to replace human judgment
- Why it happens: Media hype creates unrealistic expectations
- How to avoid: Position AI as augmentation, not replacement
- **Source:** research.md, Common Pitfalls

**Mistake 2:** Overreliance on AI outputs
- Why it happens: AI confidence appears authoritative
- How to avoid: Treat outputs as suggestions; verify critical information
- **Source:** research.md, Common Pitfalls

### Speaker Notes

```
TIMING: 10 minutes

SAY: "How many of you spent time this morning preparing for a meeting, writing an email, or reviewing reports? Raise your hands. Now imagine getting help with all of that from an AI assistant that knows operations. That's what we're here to learn."

ASK: "What's one task you do every day that feels repetitive but necessary?"

DEMO: None for this section - engagement discussion

TRANSITION: "Before we start using these tools, there's something critical we need to cover first - Tesla's AI policy. This isn't optional - it's how we protect our company and our jobs."
```

---

## Section 2: Tesla AI Policy Deep Dive

**Duration:** 20 minutes
**Objective:** Navigate Tesla's AI Acceptable Use Policy with confidence

### Key Concept

Tesla has a clear AI policy that determines which tools you can use and when. This isn't about limiting you - it's about protecting Tesla data and ensuring we use AI responsibly. Understanding this policy is non-negotiable.

> **From Research:** The policy categorizes tools into three tiers: Approved (Tesla data allowed), Conditionally Approved (no Tesla data), and Prohibited (never use).
> **Source:** research.md, Policy Reference Summary

### The Three Tiers

#### Tier 1: APPROVED - Tesla Data Allowed
These tools have been vetted by Tesla and can be used with internal information:
- **Bottle Rocket** (go.tesla.com/chat) - Our primary tool
- IT Assist Bot
- Employee Assist Bot

#### Tier 2: CONDITIONALLY APPROVED - No Tesla Data
These tools can be used for general tasks, but NEVER with Tesla information:
- **GitHub Copilot** - For coding and automation only
- GitHub Copilot CLI

#### Tier 3: PROHIBITED - Never Use
These tools are NOT approved for any work use:
- ChatGPT (chat.openai.com)
- Claude.ai (web version)
- Gemini (external/web version)
- Meeting transcription/recording AI
- Apple Intelligence on corporate devices
- Any tool not listed on go.tesla.com/aitools

### What is "Tesla Data"?

> **From Research:** "Tesla Data means any information about Tesla, customers, employees, affiliates, or users including: Performance metrics, KPIs, Employee names, schedules, personal data, Customer information, Internal processes, SOPs, Financial data, Proprietary code."
> **Source:** research.md, Policy Reference Summary

**The Simple Rule:** If it came from inside Tesla, it's Tesla Data. Use Bottle Rocket.

### Real Examples

| Scenario | Can I use ChatGPT? | Can I use Bottle Rocket? |
|----------|-------------------|-------------------------|
| Draft email about yesterday's shipment numbers | NO | YES |
| Learn how to write a Python script (generic) | NO (use Copilot) | YES |
| Summarize a vendor's public press release | NO | YES |
| Ask about my DC's safety incident | NO | YES |
| Get help with Excel formulas (no Tesla data) | Use Copilot | YES |

### Common Mistakes

**Mistake 1:** Using prohibited tools out of convenience
- Why it happens: ChatGPT is familiar and easy to access
- How to avoid: Bookmark go.tesla.com/chat as your default AI tool
- **Source:** research.md, Common Pitfalls

**Mistake 2:** Not recognizing what counts as "Tesla Data"
- Why it happens: Unclear on policy scope
- How to avoid: When in doubt, assume it's Tesla Data and use Bottle Rocket
- **Source:** research.md, Common Pitfalls

### Speaker Notes

```
TIMING: 20 minutes

SAY: "I know some of you may have used ChatGPT before. It's a great tool - but it's not approved for our work. Here's why: when you enter information into ChatGPT, that data could potentially be used to train future models. That's not something we can allow with Tesla information."

ASK: "Can someone give me an example of something that IS Tesla Data?"
[Wait for answers: employee names, KPIs, schedules, etc.]

ASK: "What about this scenario: You want to draft an email to a vendor about a delayed shipment. Is that Tesla Data?"
[Answer: YES - it involves Tesla business information]

DEMO: Show go.tesla.com/aitools briefly on screen

TRANSITION: "Now that we know the rules, let's get hands-on with Bottle Rocket - our approved AI tool."
```

---

## Section 3: Introduction to Bottle Rocket

**Duration:** 15 minutes (Demo)
**Objective:** Access and navigate Bottle Rocket effectively

### Key Concept

Bottle Rocket is Tesla's approved AI chat interface. It gives you access to multiple AI models (Grok, Claude, Gemini) in one place, and it's approved for Tesla data. Think of it as your AI assistant that follows Tesla's rules.

> **From Research:** "Bottle Rocket provides access to multiple models including Grok 3, Grok 4, Claude 4 Sonnet, Claude 4.5 Sonnet, Claude 4 Opus, Gemini 2.5 Pro, and Gemini 2.5 Flash."
> **Source:** research.md, Tool-Specific Insights - Bottle Rocket

### Accessing Bottle Rocket

1. Open your browser
2. Go to **go.tesla.com/chat**
3. Sign in with your Tesla credentials
4. You're ready to go!

### The Interface

- **Chat window:** Where you type your prompts
- **Model selector:** Choose which AI model to use
- **New chat:** Start fresh conversations
- **History:** Access previous conversations

### Model Selection Tips

| Model | Best For | Speed |
|-------|----------|-------|
| Grok 4 | Complex analysis, nuanced writing | Medium |
| Claude 4.5 Sonnet | Balanced tasks, good reasoning | Fast |
| Gemini 2.5 Flash | Quick answers, simple tasks | Fastest |

> **From Research:** Different models excel at different tasks. For most daily operations work, Claude 4.5 Sonnet or Gemini 2.5 Flash provide a good balance of quality and speed.
> **Source:** research.md, Tool-Specific Insights

### Your First Prompt

Let's start simple. Type this into Bottle Rocket:

```
What are three things an operations manager should know about using AI tools?
```

**What to expect:** The AI will give you a thoughtful response in seconds. Notice how it writes in complete sentences and organizes information clearly.

### Common Mistakes

**Mistake 1:** Treating Bottle Rocket like a search engine
- Why it happens: Habit from using Google
- How to avoid: Ask complete questions, provide context
- **Source:** research.md, Common Pitfalls

**Mistake 2:** Not exploring different models
- Why it happens: Sticking with defaults
- How to avoid: Try different models for different tasks
- **Source:** research.md, Tool-Specific Insights

### Speaker Notes

```
TIMING: 15 minutes (Demo)

SAY: "Everyone open your laptops and go to go.tesla.com/chat. I'll give you a moment to log in."
[Wait 2 minutes for everyone to access]

DEMO:
1. Show the interface on screen
2. Point out model selector
3. Type the sample prompt live
4. Show the response

SAY: "Notice how I didn't ask 'what is AI?' - I asked a specific question relevant to us. That's the first step to getting useful results."

ASK: "Did everyone get a response? Any issues logging in?"

TRANSITION: "Now that you can access Bottle Rocket, let's learn the secret to getting great results: prompt engineering."
```

---

## Section 4: Prompt Engineering Basics

**Duration:** 10 minutes
**Objective:** Understand the ROLE + CONTEXT + TASK + FORMAT framework

### Key Concept

Prompt engineering is the practice of crafting effective instructions for AI. It's not about magic words - it's about being clear and specific. The better your prompt, the better your results.

> **From Research:** "Research shows non-technical users who incorporate role, context, task, and format specifications obtain outputs rated substantially more helpful, relevant, and actionable than users who simply state their request."
> **Source:** research.md, Key Concepts - ROLE + CONTEXT + TASK + FORMAT Framework

### The Formula: ROLE + CONTEXT + TASK + FORMAT

Think of this as a recipe for great prompts:

| Component | What It Does | Example |
|-----------|--------------|---------|
| **ROLE** | Tell the AI who to be | "You are an experienced operations manager" |
| **CONTEXT** | Give background information | "I manage the morning shift at Tampa DC with 45 associates" |
| **TASK** | State exactly what you need | "Create a standup summary for today" |
| **FORMAT** | Specify how you want the output | "Use bullet points, keep under 200 words" |

### Why Each Component Matters

**ROLE:** When you tell the AI to act as an operations manager, it draws on that perspective. The same question gets different answers from an "operations manager" vs. a "marketing specialist."

**CONTEXT:** The AI doesn't know your situation unless you tell it. More context = more relevant answers.

**TASK:** Be specific about what you want. "Help me with data" is vague. "Summarize yesterday's shipment metrics" is specific.

**FORMAT:** If you don't specify format, the AI guesses. Tell it exactly what you want: bullets, paragraphs, tables, word limits.

> **From Research:** "Prompt engineering is not a one-shot process but an iterative activity. Initial responses from AI systems often require refinement."
> **Source:** research.md, Best Practices - Iterate Rather Than Perfect

### Example: Before and After

**Before (Vague):**
```
Help me with standup prep
```

**After (ROLE + CONTEXT + TASK + FORMAT):**
```
ROLE: You are an experienced operations manager at a distribution center.

CONTEXT: I manage the morning shift at the Tampa DC. Yesterday we processed 2,847 orders with 42 associates. We had a conveyor issue from 2-4 PM that caused a 2-hour delay in outbound shipments.

TASK: Create a brief standup summary highlighting yesterday's performance and today's priorities.

FORMAT: Use bullet points. Keep it under 150 words. Include:
1) Yesterday's key metrics
2) Main issue and resolution
3) Today's focus areas
```

### Common Mistakes

**Mistake 1:** Vague prompts
- Why it happens: Assuming AI knows your context
- How to avoid: Always include ROLE + CONTEXT
- **Source:** research.md, Common Pitfalls

**Mistake 2:** Asking too much at once
- Why it happens: Trying to combine multiple tasks
- How to avoid: Break complex requests into sequential prompts
- **Source:** research.md, Common Pitfalls

### Speaker Notes

```
TIMING: 10 minutes

SAY: "The difference between a frustrating AI experience and a productive one often comes down to how you ask. Let me show you the formula that makes the difference."

DEMO:
1. Show the vague prompt and its generic response
2. Show the structured prompt and its specific response
3. Highlight the difference in quality

ASK: "What do you notice is different about these two outputs?"

SAY: "The formula is ROLE + CONTEXT + TASK + FORMAT. Write it down. We'll be using it all session."

TRANSITION: "Now it's your turn. Let's practice."
```

---

## BREAK

**Duration:** 5 minutes

```
TIMING: 5 minutes

SAY: "Let's take a quick 5-minute break. Stretch, grab coffee, check your phones. When we come back, we're going hands-on."
```

---

## Section 5: Exercise 1 - First Bottle Rocket Prompt (Guided Practice)

**Duration:** 20 minutes
**Objective:** Successfully use the ROLE + CONTEXT + TASK + FORMAT formula

### Exercise Setup

This is guided practice. I'll walk you through creating your first structured prompt.

### The Scenario

You need to prepare talking points for this morning's standup meeting.

### Step-by-Step Instructions

**Step 1:** Open Bottle Rocket (go.tesla.com/chat)

**Step 2:** Copy this prompt template:

```
ROLE: You are an experienced operations manager at a Tesla distribution center.

CONTEXT: I manage the [SHIFT] shift at the [LOCATION] DC. Yesterday we processed approximately [NUMBER] orders with [NUMBER] associates. [Add one thing that happened - good or challenging].

TASK: Create a brief standup summary highlighting yesterday's performance and today's priorities.

FORMAT: Use bullet points. Keep it under 150 words. Include:
1) Yesterday's key metrics (estimated is fine)
2) Key highlight or challenge
3) Today's focus areas
```

**Step 3:** Fill in the [PLACEHOLDERS] with your actual information

**Step 4:** Submit and review the output

### What Good Output Looks Like

Your output should be:
- Organized in bullet points
- Under 150 words
- Relevant to YOUR DC
- Ready to use (with minor edits)

> **From Research:** "Draft talking points in 2 minutes, saving 13-18 minutes compared to manual preparation."
> **Source:** research.md, Real-World Examples - Daily Standup Preparation

### Troubleshooting

| Problem | Cause | Solution |
|---------|-------|----------|
| Output too generic | Missing context | Add more specific details about your DC |
| Output too long | No format constraint | Add "Keep it under 150 words" |
| Wrong tone | Missing role | Add the ROLE component |
| Missing sections | Vague task | List exactly what you want included |

### Speaker Notes

```
TIMING: 20 minutes

SAY: "Everyone should have the prompt template on their screen. Let's fill it in together."

DEMO:
1. Show template on screen
2. Fill in YOUR example live
3. Submit and show result

SAY: "Now it's your turn. Fill in the placeholders with your DC's information. You have 5 minutes."
[Set timer for 5 minutes]

CIRCULATE: Walk around to help anyone stuck

ASK: "Who wants to share their result? What worked? What would you change?"
[Get 2-3 volunteers to share]

TRANSITION: "Great work! Now let's try more prompts."
```

---

## Section 6: Exercise 2 - Write 3 Operations Prompts (Hands-On Practice)

**Duration:** 25 minutes
**Objective:** Create multiple prompts using ROLE + CONTEXT + TASK + FORMAT

### Your Challenge

Create 3 prompts for tasks you actually do at work. Use the formula for each.

### Prompt Ideas (Choose 3)

1. **Professional Email Draft**
   - Draft an email to a vendor about a late delivery
   - Draft an update email to regional leadership
   - Draft a recognition message for a team member

2. **Meeting Preparation**
   - Create an agenda for a safety meeting
   - Prepare discussion points for a 1:1 with a supervisor
   - Generate questions for an end-of-shift debrief

3. **Performance Summary**
   - Summarize this week's key metrics
   - Create a quick report on an incident
   - Prepare a shift handoff summary

4. **Problem Analysis**
   - Analyze why missed shipments increased
   - Identify potential causes for overtime spikes
   - List factors affecting dock efficiency

### Template to Use

```
ROLE: [Who should the AI act as?]

CONTEXT: [What's the situation? What do they need to know?]

TASK: [What exactly do you need?]

FORMAT: [How should the output look?]
```

### Time Allocation

- 5 minutes: Choose your 3 prompt topics
- 15 minutes: Write and test all 3 prompts
- 5 minutes: Refine based on results

### Success Criteria

For each prompt, check:
- [ ] Includes all 4 components (ROLE, CONTEXT, TASK, FORMAT)
- [ ] Output is relevant to your actual work
- [ ] You could use this prompt again tomorrow

### Speaker Notes

```
TIMING: 25 minutes

SAY: "You're going to create 3 prompts for tasks you actually do. Not hypothetical - real work tasks. Pick from the list or come up with your own."

SAY: "Remember the formula: ROLE + CONTEXT + TASK + FORMAT. Every prompt should have all four."

[Set timer for 15 minutes]

CIRCULATE: Help anyone stuck, suggest improvements

SAY: "If a prompt doesn't give you what you want, don't start over. Add more context or specify the format better. Iteration is normal."

ASK: "Who got a result they're really happy with? Share your prompt and output."
[Get 2-3 volunteers]

TRANSITION: "Last exercise - let's practice iterating on our prompts."
```

---

## Section 7: Exercise 3 - Iterate & Improve (Hands-On Practice + Sharing)

**Duration:** 15 minutes
**Objective:** Practice refining prompts through iteration

### The Concept

Your first prompt output is rarely perfect. That's normal. The skill is knowing how to improve it.

> **From Research:** "View your first prompt as a foundation for refinement, not a final product. Initial responses often require adjustment; iteration is normal and expected."
> **Source:** research.md, Best Practices - Iterate Rather Than Perfect

### Iteration Techniques

When output isn't quite right, try these follow-up prompts:

| Problem | Follow-up Prompt |
|---------|------------------|
| Too long | "Make this more concise - under 100 words" |
| Too formal | "Rewrite this in a more conversational tone" |
| Missing details | "Add a section on [specific topic]" |
| Wrong format | "Convert this to bullet points" |
| Too generic | "Make this more specific to distribution center operations" |

### Your Task

1. Pick your best prompt from Exercise 2
2. Review the output - what's not quite right?
3. Use a follow-up prompt to improve it
4. Compare before and after

### Sharing

We'll spend the last 5 minutes sharing:
- What prompt did you iterate on?
- What follow-up did you use?
- How did the output improve?

### Speaker Notes

```
TIMING: 15 minutes

SAY: "Pick your best prompt from Exercise 2. Now look at the output critically. What would you change? Too long? Too formal? Missing something?"

SAY: "Instead of rewriting your whole prompt, just tell the AI what to fix. Watch."

DEMO:
1. Show an output that's too long
2. Type "Make this more concise - under 100 words"
3. Show the improved result

SAY: "Your turn. Pick one prompt and iterate on it."
[Set timer for 7 minutes]

ASK: "Let's hear from 3-4 people. What did you change? How did it improve?"
[Get volunteers to share]

SAY: "This iteration skill is crucial. You'll use it every time you work with AI."

TRANSITION: "Let's wrap up with key takeaways and your homework."
```

---

## Section 8: Wrap-Up & Homework Preview

**Duration:** 5 minutes
**Objective:** Reinforce key learning and set expectations for homework

### Key Takeaways

1. **AI augments, doesn't replace** - Use AI for repetitive tasks while you focus on judgment and strategy
   *Source: research.md, Key Concepts*

2. **Policy matters** - Use Bottle Rocket for Tesla data, GitHub Copilot only for generic coding (no Tesla data)
   *Source: research.md, Policy Reference*

3. **The formula works** - ROLE + CONTEXT + TASK + FORMAT produces dramatically better outputs
   *Source: research.md, Key Concepts*

4. **Iteration is normal** - Your first output is a starting point, not a final product
   *Source: research.md, Best Practices*

### Homework Preview

**Time Required:** ~45 minutes

**Part 1: Build Your Prompt Library (30 min)**
Create 5 prompts for daily tasks:
1. Daily standup preparation
2. Professional email drafting
3. Performance data summary
4. Meeting agenda creation
5. Problem root cause analysis

**Part 2: Select Your Personal Project (15 min)**
Review the project themes and choose one that solves a real problem at your DC.

**Part 3: Track Time Savings**
For each prompt, estimate time saved vs. doing it manually.

### Resources

- **Bottle Rocket:** go.tesla.com/chat
- **AI Policy:** go.tesla.com/aitools
- **Support:** teamchat.tesla.com/tesla/channels/github-copilot

### Speaker Notes

```
TIMING: 5 minutes

SAY: "Let's recap what we learned today."
[Go through the 4 takeaways]

SAY: "Your homework has two parts: build a 5-prompt library and select your personal project for the course. This isn't busy work - you'll use these prompts tomorrow."

SAY: "Remember to track your time savings. We want to measure the real impact."

ASK: "Questions before we wrap?"
[Answer 2-3 questions]

SAY: "Great session everyone. See you next week for advanced prompt engineering!"
```

---

## Key Takeaways

1. **AI augments human work** - Handle high-volume tasks while humans focus on judgment and strategy — *Source: research.md, Key Concepts*
2. **Tesla AI Policy is mandatory** - Use Bottle Rocket for Tesla data; never use prohibited tools — *Source: research.md, Policy Reference*
3. **ROLE + CONTEXT + TASK + FORMAT** - The formula for effective prompts — *Source: research.md, Key Concepts*
4. **Iteration is expected** - First outputs are starting points, not final products — *Source: research.md, Best Practices*
5. **Verify before trusting** - Treat AI outputs as suggestions, not facts — *Source: research.md, Best Practices*

---

## Research Citation Log

| Section | Citations | Source Sections Referenced |
|---------|-----------|---------------------------|
| Section 1: Why AI Matters | 4 | Key Concepts, Statistics, Executive Summary |
| Section 2: Policy Deep Dive | 3 | Policy Reference, Common Pitfalls |
| Section 3: Bottle Rocket Intro | 3 | Tool-Specific Insights, Common Pitfalls |
| Section 4: Prompt Engineering | 4 | Key Concepts, Best Practices, Common Pitfalls |
| Section 5: Exercise 1 | 2 | Real-World Examples, Common Pitfalls |
| Section 6: Exercise 2 | 1 | ROLE+CONTEXT+TASK+FORMAT Framework |
| Section 7: Exercise 3 | 2 | Best Practices - Iteration |
| Section 8: Wrap-Up | 4 | Key Takeaways from all sections |
| **Total** | **23** | |

---

## Terminology Introduced

| Term | Definition | First Used |
|------|------------|------------|
| Prompt Engineering | The practice of crafting effective instructions for AI systems | This week |
| ROLE + CONTEXT + TASK + FORMAT | Four-component framework for writing effective AI prompts | This week |
| Bottle Rocket | Tesla's approved AI chat interface (go.tesla.com/chat) | This week |
| Tesla Data | Any information about Tesla, customers, employees, affiliates | This week |
| GitHub Copilot | AI coding assistant in VS Code (conditional approval) | This week |
| Iteration | The practice of refining prompts through follow-up requests | This week |

---

## Time Summary

| Section | Duration |
|---------|----------|
| Section 1: Why AI Matters | 10 min |
| Section 2: Policy Deep Dive | 20 min |
| Section 3: Bottle Rocket Intro | 15 min |
| Section 4: Prompt Engineering | 10 min |
| BREAK | 5 min |
| Section 5: Exercise 1 | 20 min |
| Section 6: Exercise 2 | 25 min |
| Section 7: Exercise 3 | 15 min |
| Section 8: Wrap-Up | 5 min |
| **TOTAL** | **120 min** |

**Hands-On Time:** 60 min (50%) + 15 min demo = **75 min (63%)**

---

## Sources Used

All content derived from:
- `outputs/week-1/research.md` - 23 citations
- `outputs/syllabus.md` - objectives and structure
