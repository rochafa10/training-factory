# Week 2 Exercises: Prompt Engineering for Operations

**Total Time:** 70 minutes (during session)
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

## Exercise 3: Model Comparison Challenge

**Type:** Scenario Challenge
**Difficulty:** 6/10
**Time:** 20 minutes
**Tool:** 🟢 Bottle Rocket (Tesla Data OK)

### Scenario

Different AI models have different strengths. In this challenge, you'll discover these differences firsthand by running the same prompt through multiple models and comparing results.

### Your Task

1. **Select your best template** from Exercise 2
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
   - Chain-of-thought? Few-shot? Enhanced personas?

2. **Which template will you use first at work?**
   - Tomorrow? This week?

3. **How confident are you switching between models?**
   - What would help you feel more confident?

4. **What time savings do you expect this week?**
   - Estimate minutes saved per task

---

## Homework Extension

Continue building your template library after the session:

### Part 1: Complete Your 3 Operations Templates (~20 min)

Finalize and save templates for:
1. **Labor Planning Template** - Include CoT reasoning, DC-specific data placeholders
2. **Incident Analysis Template** - 5-Whys structure, system focus (not blame)
3. **Leadership Update Template** - Enhanced persona, few-shot format examples

### Part 2: Time Savings Tracking (~10 min daily)

Use this log to track your actual time savings:

| Task | Without AI | With AI | Saved | Notes |
|------|------------|---------|-------|-------|
| Labor planning | ___ min | ___ min | ___ min | |
| Incident analysis | ___ min | ___ min | ___ min | |
| Leadership update | ___ min | ___ min | ___ min | |
| Other: _________ | ___ min | ___ min | ___ min | |
| **Weekly Total** | | | **___ min** | |

### Part 3: Model Experimentation

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
| Exercise 3: Model Comparison | 6/10 | Requires critical evaluation. Builds model selection awareness. May need facilitator help with model switching. | ✅ |

---

## Quality Checklist

| Check | Requirement | Status |
|-------|-------------|--------|
| Exercise count | 3+ exercises per week | ✅ 3 exercises |
| Difficulty range | Within week's calibration (4-6) | ✅ Range: 4-6 |
| Exercise mix | Matches week's ratio (50% Guided, 40% Template, 10% Challenge) | ✅ Mixed types |
| Tool coverage | Correct tool per exercise | ✅ All Bottle Rocket |
| Troubleshooting | 3+ issues per exercise | ✅ 4 per exercise |
| Time realistic | Total ≤ 70 min | ✅ 70 min total |
| Skills tracked | Reinforce + Introduce documented | ✅ 6 reinforced, 6 introduced |

---

*Exercises designed for Week 2: Prompt Engineering for Operations*
*Primary Tool: Bottle Rocket (go.tesla.com/chat)*
*Difficulty Focus: Intermediate (4-6/10)*
