# Week 2 Exercises: Prompt Engineering & Data Analysis

**Total Time:** 100 minutes (during session)
**Tools Needed:** Bottle Rocket (go.tesla.com/chat)
**Difficulty Range:** 4-6 / 10

---

## Skills Progression

### Skills Reinforced (from Week 1)
- **Basic prompting** - Submitting requests to AI systems
- **ROLE component** - Specifying AI persona
- **CONTEXT component** - Providing background information
- **TASK component** - Articulating specific requests
- **FORMAT component** - Specifying output structure
- **Iteration** - Refining prompts through follow-ups

### Skills Introduced (Week 2)
- **Chain-of-thought prompting** - Forcing step-by-step reasoning
- **Few-shot prompting** - Providing examples for consistent output
- **Persona enhancement** - Adding specific expertise and traits
- **Data analysis with AI** - Presenting data and extracting insights
- **Structured outputs** - Controlling AI output format (tables, checklists, reports)
- **Prompt library building** - Organizing and versioning reusable prompts
- **Model selection** - Choosing the right model for the task
- **Template creation** - Building reusable prompt templates
- **Testing & refinement** - Validating templates with real data

---

## Exercise 1: Chain-of-Thought Analysis

**Type:** Guided Practice → Template Exercise
**Difficulty:** 4/10
**Time:** 25 minutes
**Tool:** 🟢 Bottle Rocket (Tesla Data OK)

### Scenario

Your DC missed its productivity target by 8% last week. Leadership wants to understand the root cause and what actions to take. Instead of a generic answer, you need a structured analysis that shows the thinking process.

**The Data:**
| Day | Performance | Notes |
|-----|-------------|-------|
| Monday | 95% of target | Normal operations |
| Tuesday | 92% of target | 2 call-outs |
| Wednesday | 78% of target | Conveyor down 3 hours |
| Thursday | 88% of target | Running behind on orders |
| Friday | 85% of target | Still catching up |

### Instructions

1. Open Bottle Rocket at **go.tesla.com/chat**
2. **Part A (Guided):** Copy the prompt below and run it
3. Review how the AI shows its reasoning step-by-step
4. **Part B (Template):** Create your own CoT prompt for a different analysis
5. Compare the depth of analysis to a simple question

### Part A: Guided Prompt (Copy This)

```
ROLE: You are an operations analyst helping a distribution center manager understand a productivity shortfall.

CONTEXT: Our DC missed its weekly productivity target by 8%. Here's the daily breakdown:
- Monday: 95% of target (normal)
- Tuesday: 92% (2 call-outs)
- Wednesday: 78% (conveyor down 3 hours)
- Thursday: 88% (running behind)
- Friday: 85% (catching up)

TASK: Analyze this step by step:
1. First, calculate the impact of each day's shortfall on the weekly total
2. Then, identify which day had the biggest impact and why
3. Next, determine if this was a single event or multiple issues
4. Finally, recommend 2-3 specific actions to prevent recurrence

FORMAT: Use numbered sections matching the steps above. Include specific percentages and calculations where relevant. Keep recommendations actionable.
```

### Part B: Create Your Own CoT Prompt

Now apply chain-of-thought to one of these scenarios (or choose your own):

**Option 1: Overtime Analysis**
- Why did overtime spike 40% last month?
- Include: department breakdown, historical comparison, causes

**Option 2: Safety Incident Investigation**
- A minor injury occurred during picking operations
- Include: what happened, contributing factors, system issues

**Your Template:**
```
ROLE: [Expert role appropriate to the analysis]

CONTEXT: [Your specific situation with data]

TASK: Analyze step by step:
1. First, [initial analysis step]
2. Then, [deeper analysis step]
3. Next, [connection/pattern identification]
4. Finally, [recommendations]

FORMAT: [How you want the output structured]
```

### What Good Output Looks Like

A strong CoT response will:
- **Show calculations** - "Monday's 5% shortfall = 5% × 0.2 (one day of five) = 1% contribution to weekly miss"
- **Identify the key driver** - "Wednesday's conveyor failure accounts for 60% of the total shortfall"
- **Trace cascade effects** - "Thursday and Friday's shortfalls were recovery from Wednesday's backlog"
- **Provide specific actions** - "Implement weekly conveyor inspection checklist" not just "improve maintenance"

### Troubleshooting

| Problem | Likely Cause | Solution |
|---------|--------------|----------|
| AI gives generic advice | No data in CONTEXT | Include specific numbers and dates |
| Analysis is shallow | Missing "step by step" instruction | Explicitly number the analysis steps |
| Skips to conclusions | Steps not specific enough | Make each step concrete: "First calculate..., Then identify..." |
| Recommendations too vague | No format guidance | Add "Keep recommendations actionable with specific who/what/when" |

### Skills Practiced
- Chain-of-thought prompting
- Step-by-step reasoning structure
- Data-driven analysis
- Building on ROLE + CONTEXT + TASK + FORMAT

---

## Exercise 2: Build 3 Operations Templates

**Type:** Template Exercise
**Difficulty:** 5/10
**Time:** 25 minutes
**Tool:** 🟢 Bottle Rocket (Tesla Data OK)

### Scenario

You're building a library of reusable prompt templates for tasks you do weekly. These templates should incorporate the advanced techniques from today: chain-of-thought where appropriate, enhanced personas, and clear formatting.

### Instructions

1. **Choose 3 use cases** from the options below (or propose your own)
2. **Build each template** using the structure provided
3. **Test each template** in Bottle Rocket with real or realistic data
4. **Refine** until the output is work-ready
5. **Save** your templates for ongoing use

### Use Case Options

| Category | Use Case | Recommended Technique |
|----------|----------|----------------------|
| **Planning** | Labor planning for next week | Chain-of-thought |
| **Analysis** | Safety incident root cause (5-Whys) | Chain-of-thought |
| **Communication** | Vendor performance email | Enhanced persona |
| **Reporting** | KPI narrative for leadership | Persona + CoT |
| **Documentation** | SOP creation or update | Persona + few-shot |
| **Your Choice** | A task you do frequently | Mix of techniques |

### Template Structure (Use for Each)

```
ROLE: [Specific expert with years of experience, known for specific strengths]

CONTEXT:
- Facility: [Your DC name]
- Situation: [What's happening]
- Data: [Relevant numbers, dates, specifics]
- [Additional context as needed]

TASK: [What you need, with CoT structure if analysis is involved]
[If using CoT]: Analyze step by step:
1. First, [step]
2. Then, [step]
3. Finally, [step]

FORMAT:
- [Specific structure]
- [Length constraint]
- [Tone if relevant]
- [What to include/exclude]
```

### Example: Labor Planning Template

```
ROLE: You are a workforce planning specialist with 10 years of experience in distribution center operations. You're known for practical recommendations that balance efficiency with realistic constraints.

CONTEXT:
- Facility: [DC NAME] distribution center
- Current headcount: [NUMBER] associates across [NUMBER] shifts
- Average productivity: [NUMBER] units per labor hour
- Upcoming challenge: [DESCRIBE - e.g., Prime Week, new product launch]
- Recent patterns: [Any relevant trends - absenteeism, overtime, etc.]

TASK: Create a labor plan for next week, analyzing step by step:
1. First, calculate capacity vs. projected demand
2. Then, identify any gaps by shift or function
3. Next, consider contingencies (call-outs, equipment issues)
4. Finally, recommend specific staffing actions

FORMAT:
- Summary table: current vs. recommended headcount by shift
- Bullet points for each recommendation
- Include cost impact estimates where possible
- Flag any risks or dependencies
- Keep under 400 words
```

### Success Criteria (For Each Template)

- [ ] **Enhanced ROLE** - Specific expertise, years of experience, "known for"
- [ ] **Complete CONTEXT** - Uses [PLACEHOLDERS] for variable data
- [ ] **Structured TASK** - Uses CoT where analysis is needed
- [ ] **Detailed FORMAT** - Specifies structure, length, and elements
- [ ] **Tested** - Run with real or realistic data from your DC
- [ ] **Useful** - Output is something you would actually use at work

### Troubleshooting

| Problem | Likely Cause | Solution |
|---------|--------------|----------|
| Output too generic | CONTEXT lacks specifics | Add your DC name, real numbers, actual situation |
| Template doesn't save time | Too many [PLACEHOLDERS] | Pre-fill stable elements; only vary what changes |
| Output wrong length | No length constraint | Add "Keep under [X] words" to FORMAT |
| Analysis too shallow | No CoT structure | Add numbered "step by step" instructions to TASK |

### Skills Practiced
- Template creation for reuse
- Enhanced persona writing
- Chain-of-thought structure
- Format specification
- Testing and refinement

---

## Exercise 3: Analyze a Sample DC Dataset

**Type:** Guided Practice → Independent Analysis
**Difficulty:** 5/10
**Time:** 30 minutes
**Tool:** 🟢 Bottle Rocket (Tesla Data OK)

### Scenario

You've been given 6 weeks of operations data from a distribution center. Leadership wants insights — trends, anomalies, and recommendations. Instead of spending 45+ minutes manually combing through a spreadsheet, you'll use AI to extract executive-ready insights in minutes.

**The Dataset:**

| Week | Orders | Fill Rate | Overtime Hrs | Headcount | Safety |
|------|--------|-----------|-------------|-----------|--------|
| Week 1 | 12,450 | 97.2% | 85 | 42 | 0 |
| Week 2 | 13,100 | 96.8% | 110 | 42 | 1 |
| Week 3 | 11,800 | 98.1% | 60 | 40 | 0 |
| Week 4 | 14,200 | 94.5% | 145 | 42 | 0 |
| Week 5 | 13,900 | 95.1% | 130 | 41 | 2 |
| Week 6 | 15,100 | 93.8% | 160 | 43 | 1 |

### Instructions

1. Open Bottle Rocket at **go.tesla.com/chat**
2. **Part A (Simple Prompt):** Paste the data with a basic question — "What do you see in this data?"
3. Note what the AI produces (likely surface-level observations)
4. **Part B (CoT Prompt):** Use the structured prompt below to get deeper analysis
5. **Compare** the two outputs side by side
6. **Part C (Your Data):** If you brought your own DC data, run the same structured prompt on it

### Part A: Simple Prompt (Try This First)

```
Here's 6 weeks of DC operations data:

Week 1: 12,450 orders, 97.2% fill rate, 85 OT hrs, 42 headcount, 0 safety
Week 2: 13,100 orders, 96.8% fill rate, 110 OT hrs, 42 headcount, 1 safety
Week 3: 11,800 orders, 98.1% fill rate, 60 OT hrs, 40 headcount, 0 safety
Week 4: 14,200 orders, 94.5% fill rate, 145 OT hrs, 42 headcount, 0 safety
Week 5: 13,900 orders, 95.1% fill rate, 130 OT hrs, 41 headcount, 2 safety
Week 6: 15,100 orders, 93.8% fill rate, 160 OT hrs, 43 headcount, 1 safety

What do you see in this data?
```

### Part B: Chain-of-Thought Analysis Prompt

```
ROLE: You are a distribution center operations analyst with 10 years of experience finding actionable insights in operations data.

CONTEXT: Here is 6 weeks of operations data from our DC:

| Week | Orders | Fill Rate | Overtime Hrs | Headcount | Safety |
|------|--------|-----------|-------------|-----------|--------|
| Week 1 | 12,450 | 97.2% | 85 | 42 | 0 |
| Week 2 | 13,100 | 96.8% | 110 | 42 | 1 |
| Week 3 | 11,800 | 98.1% | 60 | 40 | 0 |
| Week 4 | 14,200 | 94.5% | 145 | 42 | 0 |
| Week 5 | 13,900 | 95.1% | 130 | 41 | 2 |
| Week 6 | 15,100 | 93.8% | 160 | 43 | 1 |

TASK: Analyze this data step by step:
1. First, identify the overall trend for each metric (improving, declining, stable)
2. Then, find correlations between metrics (e.g., does volume affect fill rate?)
3. Next, flag any anomalies or warning signs
4. Finally, recommend 3 specific actions based on your analysis

FORMAT:
- Use a trend summary table first
- Include specific numbers and percentages in your analysis
- Highlight the most critical finding
- Keep recommendations actionable with specific targets
```

### Part C: Use Your Own Data (Optional)

If you brought data from your DC, swap out the sample dataset with your own numbers. Keep the same ROLE, TASK, and FORMAT structure — just change the CONTEXT.

### What Good Output Looks Like

A strong data analysis response will:
- **Identify the inverse relationship** between orders and fill rate (as volume rises, quality drops)
- **Flag the overtime trend** — 85 → 160 hours is an 88% increase over 6 weeks
- **Spot the safety correlation** — incidents cluster in high-volume weeks (Weeks 2, 5, 6)
- **Quantify the trade-off** — "Each 1,000 additional orders costs approximately 25 overtime hours and 0.5% fill rate"
- **Recommend specific targets** — not just "reduce overtime" but "cap at 120 hours by adding 2 headcount"

### Troubleshooting

| Problem | Likely Cause | Solution |
|---------|--------------|----------|
| AI only describes the data | No "analyze" instruction | Use CoT prompt with explicit analysis steps |
| Missing correlations | Data not in table format | Present data as a clean table, not paragraphs |
| Recommendations too vague | No specificity requirement | Add "Include specific numbers and targets" to FORMAT |
| AI hallucinates data | Too much interpretation requested | Add "Only use the data provided — do not invent additional data points" |

### Skills Practiced
- Presenting data to AI systems
- Chain-of-thought for data analysis
- Comparing simple vs. structured prompts
- Extracting actionable insights from operations data

---

## Exercise 4: Model Comparison Challenge

**Type:** Scenario Challenge
**Difficulty:** 6/10
**Time:** 20 minutes
**Tool:** 🟢 Bottle Rocket (Tesla Data OK)

### Scenario

Different AI models have different strengths. In this challenge, you'll discover these differences firsthand by running the same prompt through multiple models and comparing results.

### Your Task

1. **Select your best template** from Exercise 2 or 3
2. **Run it on your default model** (likely Claude)
3. **Switch to a different model** and run the exact same prompt
4. **Compare** using the worksheet below
5. **Decide** which model worked better for this specific task

### How to Switch Models (in Bottle Rocket)

[Note: Model selection may vary by Bottle Rocket version. Look for model selector in the interface, or consult go.tesla.com/aitools for current instructions.]

### Comparison Worksheet

Complete this for each model you test:

| Criteria | Model 1: _________ | Model 2: _________ |
|----------|-------------------|-------------------|
| **Speed** (how fast?) | | |
| **Format adherence** (followed structure?) | | |
| **Content quality** (useful insights?) | | |
| **Instruction following** (did what you asked?) | | |
| **Specificity** (actionable vs. generic?) | | |
| **Overall Winner** | ☐ | ☐ |

### Model Selection Guidelines

Use this as a reference when comparing:

| Model | Best For | Watch For |
|-------|----------|-----------|
| **Claude** | Writing, complex analysis, nuanced tone | May be slower |
| **Gemini** | Speed, large documents, visual content | May be less nuanced |
| **Grok** | Math, real-time info, quantitative tasks | May be more direct |

### Discussion Questions

After completing your comparison:

1. **Which differences surprised you?**
2. **For THIS specific task, which model worked better?**
3. **Would you switch models for other tasks?**
4. **What would make you choose one over another?**

### Success Criteria

- [ ] Ran the same prompt on at least 2 models
- [ ] Completed the comparison worksheet
- [ ] Can articulate why one was better for THIS task
- [ ] Have a sense of when you might switch models in future

### Troubleshooting

| Problem | Likely Cause | Solution |
|---------|--------------|----------|
| Models give identical output | Simple prompt doesn't differentiate | Use a more complex analysis prompt |
| Can't find model selector | UI varies by version | Check Bottle Rocket help or ask facilitator |
| One model failed | Input too long or unsupported | Try shorter prompt; check context limits |
| No clear winner | Task doesn't favor one model | That's valid! Note that any model works here |

### Skills Practiced
- Model selection awareness
- Critical evaluation of AI outputs
- Comparative analysis
- Matching tools to tasks

---

## Reflection Questions

After completing the exercises, consider:

1. **Which technique made the biggest difference today?**
   - Chain-of-thought? Few-shot? Enhanced personas? Structured outputs?

2. **Which template will you use first at work?**
   - Tomorrow? This week?

3. **How did the data analysis exercise change your approach?**
   - Will you start pasting data into AI for quick insights?

4. **How confident are you switching between models?**
   - What would help you feel more confident?

5. **How many prompts are in your library now?**
   - Target: 10+ by end of this week

---

## Homework Extension

Continue building your template library after the session:

### Part 1: Build 2 More Templates (~20 min)

Create 2 additional templates using techniques from today:
1. **Use CoT or Few-Shot technique** — apply what you learned
2. **Test with real DC data** — validate with actual numbers from your operations
3. **Add to your prompt library** — save with clear naming (e.g., `weekly-overtime-analysis-v1`)

### Part 2: Prepare for Week 3 (~25 min)

1. **Track time savings daily** — target 20-30 min/day savings using your templates
2. **Bring a real dataset** from your DC to Week 3 (any spreadsheet or report you analyze regularly)
3. **Grow your prompt library** to 10+ prompts (you should have 5-7 after today)

### Part 3: Time Savings Tracking (daily)

Use this log to track your actual time savings:

| Task | Without AI | With AI | Saved | Notes |
|------|------------|---------|-------|-------|
| Data analysis | ___ min | ___ min | ___ min | |
| Report drafting | ___ min | ___ min | ___ min | |
| Email/comms | ___ min | ___ min | ___ min | |
| Other: _________ | ___ min | ___ min | ___ min | |
| **Weekly Total** | | | **___ min** | |

### Part 4: Model Experimentation

Over the next week, try switching models when:
- Your first output isn't quite right
- You're doing a math-heavy analysis
- You need to process a long document

Note which model worked better for each task type.

---

## Exercise Validation Log

| Exercise | Difficulty | Validation Notes | Feasible? |
|----------|------------|------------------|-----------|
| Exercise 1: Chain-of-Thought | 4/10 | Guided start with template follow-up. Clear data provided. Step-by-step structure teaches technique. | ✅ |
| Exercise 2: Build 3 Templates | 5/10 | Template-based with options. Tests technique application. Real-world use cases. Requires customization skill. | ✅ |
| Exercise 3: DC Dataset Analysis | 5/10 | Guided data analysis with compare-and-contrast structure. Sample data provided. Builds on CoT from Exercise 1. Optional self-data extension. | ✅ |
| Exercise 4: Model Comparison | 6/10 | Requires critical evaluation. Builds model selection awareness. May need facilitator help with model switching. | ✅ |

---

## Quality Checklist

| Check | Requirement | Status |
|-------|-------------|--------|
| Exercise count | 3+ exercises per week | ✅ 4 exercises |
| Difficulty range | Within week's calibration (4-6) | ✅ Range: 4-6 |
| Exercise mix | Matches week's ratio (50% Guided, 40% Template, 10% Challenge) | ✅ Mixed types |
| Tool coverage | Correct tool per exercise | ✅ All Bottle Rocket |
| Troubleshooting | 3+ issues per exercise | ✅ 4 per exercise |
| Time realistic | Total ≤ 100 min | ✅ 100 min total (25+25+30+20) |
| Skills tracked | Reinforce + Introduce documented | ✅ 6 reinforced, 9 introduced |

---

*Exercises designed for Week 2: Prompt Engineering & Data Analysis*
*Primary Tool: Bottle Rocket (go.tesla.com/chat)*
*Difficulty Focus: Intermediate (4-6/10)*
