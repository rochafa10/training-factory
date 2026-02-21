# Week 2 Prompt Library: Prompt Engineering & Data Analysis

This library contains advanced prompts incorporating chain-of-thought reasoning, few-shot examples, enhanced personas, data analysis techniques, and structured output patterns for operations management tasks.

**Tool Legend:**
- 🟢 Bottle Rocket - Tesla Data OK
- 🟡 GitHub Copilot - No Tesla Data

**Week 2 Techniques Applied:**
- **CoT** = Chain-of-Thought (step-by-step reasoning)
- **Few-Shot** = Examples provided for consistent output
- **Persona+** = Enhanced persona with experience and traits

---

## Prompts Overview

| # | Prompt Name | Category | Tool | Technique | Effectiveness |
|---|-------------|----------|------|-----------|---------------|
| 1 | Advanced Root Cause Analysis | Analysis | 🟢 | CoT | 9/10 |
| 2 | Vendor Performance Communication | Communications | 🟢 | Persona+ | 8/10 |
| 3 | Leadership KPI Narrative | Reporting | 🟢 | Few-Shot + Persona+ | 9/10 |
| 4 | Team Announcement Creator | Communications | 🟢 | Few-Shot | 8/10 |
| 5 | Labor Planning Analysis | Planning | 🟢 | CoT + Persona+ | 9/10 |
| 6 | Incident Investigation Report | Analysis | 🟢 | CoT | 8/10 |
| 7 | DC Data Trend Analysis | Data Analysis | 🟢 | CoT | 9/10 |
| 8 | Structured Report Generator | Structured Output | 🟢 | Few-Shot + Format | 8/10 |
| 9 | Prompt Library Organizer | Meta / Productivity | 🟢 | Persona+ | 8/10 |
| 10 | Model Comparison Test | Evaluation | 🟢 | CoT | 8/10 |

---

## Category: Analysis

### Prompt 1: Advanced Root Cause Analysis (5-Whys with CoT)

🟢 **Tool:** Bottle Rocket
📋 **Category:** Analysis
⏱️ **When to use:** Complex problems requiring systematic investigation
⭐ **Effectiveness:** 9/10
🔧 **Technique:** Chain-of-Thought (CoT)

#### Template

```
ROLE: You are a continuous improvement specialist with 15 years of experience in distribution center operations. You're known for methodical analysis that gets to true root causes, not just symptoms.

CONTEXT:
- Facility: [DC NAME] distribution center
- Problem: [DESCRIBE THE ISSUE - what happened, when, impact]
- Data available: [LIST METRICS OR DATA POINTS]
- What we've already ruled out: [ANY INITIAL FINDINGS]

TASK: Conduct a comprehensive root cause analysis step by step:
1. First, quantify the impact by calculating the deviation from normal
2. Then, identify all potential contributing factors (people, process, equipment, environment)
3. Next, apply 5-whys analysis to the top 3 most likely causes
4. Finally, recommend specific countermeasures with owner and timeline

FORMAT:
- Use numbered sections matching the analysis steps
- Include a root cause fishbone diagram structure
- Provide specific data to pull for validation
- Recommendations must include who/what/when
- Keep total output under 500 words
```

#### Example (Filled In)

```
ROLE: You are a continuous improvement specialist with 15 years of experience in distribution center operations. You're known for methodical analysis that gets to true root causes, not just symptoms.

CONTEXT:
- Facility: Tampa DC distribution center
- Problem: Productivity dropped 8% last week vs. target. Daily breakdown: Monday 95%, Tuesday 92%, Wednesday 78%, Thursday 88%, Friday 85%
- Data available: Daily order counts, headcount, equipment logs, overtime hours
- What we've already ruled out: No major staffing changes, same SKU mix as prior weeks

TASK: Conduct a comprehensive root cause analysis step by step:
1. First, quantify the impact by calculating the deviation from normal
2. Then, identify all potential contributing factors (people, process, equipment, environment)
3. Next, apply 5-whys analysis to the top 3 most likely causes
4. Finally, recommend specific countermeasures with owner and timeline

FORMAT:
- Use numbered sections matching the analysis steps
- Include a root cause fishbone diagram structure
- Provide specific data to pull for validation
- Recommendations must include who/what/when
- Keep total output under 500 words
```

#### Sample Output

> **1. Impact Quantification**
>
> Weekly productivity gap: 8% below target
> - Daily shortfall contributions:
>   - Monday: 5% × 0.2 = 1.0% contribution
>   - Tuesday: 8% × 0.2 = 1.6% contribution
>   - Wednesday: 22% × 0.2 = 4.4% contribution ← **Key driver**
>   - Thursday: 12% × 0.2 = 2.4% contribution
>   - Friday: 15% × 0.2 = 3.0% contribution
> - **Wednesday accounts for 55% of the weekly shortfall**
>
> **2. Contributing Factors (Fishbone)**
>
> ```
> EQUIPMENT ─────┬───── PROCESS
>   Conveyor     │     Wave timing
>   Scanners     │     Pick paths
>                │
>           [8% SHORTFALL]
>                │
>   Training     │     Temperature
>   Fatigue      │     Receiving delays
> PEOPLE ────────┴───── ENVIRONMENT
> ```
>
> **3. 5-Whys Analysis**
>
> **Path A: Equipment (Most Likely)**
> - Why low Wednesday? → Conveyor down 3 hours
> - Why down? → Belt failure at 10:30 AM
> - Why failure? → Worn belt not replaced during PM
> - Why not replaced? → PM schedule slipped 2 weeks
> - **Root Cause: Preventive maintenance backlog**
>
> **Path B: Cascade Effect**
> - Why low Thu/Fri? → Playing catch-up from Wed
> - Why catching up? → Backlog of 400+ orders
> - Why backlog? → Wednesday conveyor downtime
> - **Root Cause: Same - equipment failure cascade**
>
> **4. Countermeasures**
>
> | Action | Owner | Timeline |
> |--------|-------|----------|
> | Clear PM backlog for critical equipment | Maintenance Lead | 5 days |
> | Add conveyor to daily pre-shift check | Shift Supervisor | Immediate |
> | Create escalation trigger: PM >7 days late | AGM | 2 weeks |
>
> **Data to Validate:**
> - Pull PM completion log for past 30 days
> - Review conveyor maintenance history

#### Customization Tips

1. **For safety incidents:** Change persona to "safety specialist with incident investigation training"
2. **For systemic issues:** Add "Include organizational/systemic factors in the fishbone"
3. **For urgent issues:** Add "Prioritize immediate containment actions first"
4. **For multiple root causes:** Request "Address each root cause separately with countermeasures"

#### Iterations to Try

- "Dig deeper on the maintenance backlog - why did it slip?"
- "Add a timeline of events leading to the issue"
- "Include cost impact estimates for each recommended action"
- "Suggest leading indicators to prevent recurrence"

#### Validation

- **Effectiveness score:** 9/10
- **Clarity:** 9/10 | **Completeness:** 9/10 | **Output Quality:** 9/10
- **Duplicate check:** ✅ Advanced version of Week 1 "Root Cause Analysis Starter"

---

### Prompt 6: Incident Investigation Report

🟢 **Tool:** Bottle Rocket
📋 **Category:** Analysis
⏱️ **When to use:** After safety incidents or near-misses requiring documentation
⭐ **Effectiveness:** 8/10
🔧 **Technique:** Chain-of-Thought (CoT)

#### Template

```
ROLE: You are a safety manager with 12 years of experience in warehouse operations. You're trained in incident investigation and focus on system improvements rather than blame.

CONTEXT:
- Facility: [DC NAME]
- Incident type: [INJURY/NEAR-MISS/PROPERTY DAMAGE]
- What happened: [DESCRIBE INCIDENT]
- When/where: [DATE, TIME, LOCATION IN DC]
- Who was involved: [ROLES, not names for privacy]
- Immediate actions taken: [WHAT WAS DONE RIGHT AFTER]

TASK: Create an incident investigation report step by step:
1. First, document the facts of what occurred without assumptions
2. Then, identify contributing factors at 4 levels: Individual, Task, Environment, Organization
3. Next, determine the root cause(s) using 5-whys
4. Finally, recommend corrective actions at each level

FORMAT:
- Use standard incident report sections
- Focus on system fixes, not individual blame
- Include both immediate and long-term actions
- Add follow-up verification steps
- Keep factual and objective throughout
```

#### Example (Filled In)

```
ROLE: You are a safety manager with 12 years of experience in warehouse operations. You're trained in incident investigation and focus on system improvements rather than blame.

CONTEXT:
- Facility: Greenville DC
- Incident type: Minor injury (first aid only)
- What happened: Associate strained lower back while lifting a 45-lb box from floor level
- When/where: Tuesday 2:15 PM, Pack Line 3
- Who was involved: Picker (2 years experience)
- Immediate actions taken: First aid administered, associate completed shift on light duty, supervisor notified

TASK: Create an incident investigation report step by step:
1. First, document the facts of what occurred without assumptions
2. Then, identify contributing factors at 4 levels: Individual, Task, Environment, Organization
3. Next, determine the root cause(s) using 5-whys
4. Finally, recommend corrective actions at each level

FORMAT:
- Use standard incident report sections
- Focus on system fixes, not individual blame
- Include both immediate and long-term actions
- Add follow-up verification steps
- Keep factual and objective throughout
```

#### Sample Output

> **INCIDENT INVESTIGATION REPORT**
>
> **1. Incident Summary**
>
> | Field | Details |
> |-------|---------|
> | Date/Time | Tuesday, 2:15 PM |
> | Location | Pack Line 3, Greenville DC |
> | Incident Type | Ergonomic - Lifting injury |
> | Severity | First Aid Only |
> | Lost Time | None (light duty completed shift) |
>
> **Facts:** Associate was picking orders at Pack Line 3. A 45-lb box was positioned at floor level. While lifting the box, associate experienced sudden lower back strain. First aid was administered on-site. Associate completed shift on light duty tasks.
>
> **2. Contributing Factor Analysis**
>
> | Level | Contributing Factor |
> |-------|---------------------|
> | **Individual** | Experienced associate (2 years), no noted fatigue or rushing |
> | **Task** | 45-lb item at floor level requires bend-and-lift motion |
> | **Environment** | Heavy items stored at floor level rather than waist height |
> | **Organization** | Slotting protocol doesn't account for weight-based positioning |
>
> **3. Root Cause Analysis (5-Whys)**
>
> - Why injury? → Lifting 45-lb box from floor level
> - Why at floor level? → Item slotted in ground-level bin
> - Why ground level? → Slotting based on velocity, not weight
> - Why not weight-considered? → No ergonomic factor in slotting rules
> - **Root Cause:** Slotting algorithm doesn't include weight-based positioning criteria
>
> **4. Corrective Actions**
>
> | Action | Level | Owner | Due Date | Verification |
> |--------|-------|-------|----------|--------------|
> | Re-slot items >35 lbs to waist height | Environment | Inventory Lead | 7 days | Audit slot locations |
> | Add weight criteria to slotting SOP | Organization | Operations Mgr | 14 days | Review updated SOP |
> | Refresher: proper lifting technique | Individual | Safety Lead | 3 days | Training sign-off |
> | Install lift-assist equipment at Pack 3 | Environment | Maintenance | 30 days | Equipment operational |
>
> **Follow-up:** Safety Lead to verify all actions complete; add to next safety meeting agenda.

#### Customization Tips

1. **For near-misses:** Change "Injury" sections to "Potential outcome"
2. **For OSHA recordables:** Add "Regulatory reporting requirements" section
3. **For repeat incidents:** Add "Comparison to previous similar incidents"
4. **For property damage:** Include cost estimate and insurance notification

#### Validation

- **Effectiveness score:** 8/10
- **Clarity:** 8/10 | **Completeness:** 9/10 | **Output Quality:** 8/10
- **Duplicate check:** ✅ Unique (Week 2 safety focus)

---

## Category: Communications

### Prompt 2: Vendor Performance Communication

🟢 **Tool:** Bottle Rocket
📋 **Category:** Communications
⏱️ **When to use:** Addressing vendor issues or requesting performance improvements
⭐ **Effectiveness:** 8/10
🔧 **Technique:** Enhanced Persona (Persona+)

#### Template

```
ROLE: You are a supply chain manager with 10 years of experience managing vendor relationships. You're known for being firm but fair, maintaining partnerships while holding vendors accountable. You understand that good vendor relationships are built on clear expectations and mutual respect.

CONTEXT:
- Vendor: [VENDOR NAME]
- Relationship history: [BRIEF HISTORY - new vendor, long-term partner, etc.]
- Current issue: [DESCRIBE PERFORMANCE PROBLEM]
- Impact on your operations: [SPECIFIC IMPACT WITH NUMBERS]
- Previous communication: [ANY PRIOR DISCUSSIONS]
- Desired outcome: [WHAT YOU WANT TO ACHIEVE]

TASK: Draft a professional communication that addresses the performance issue while preserving the relationship.

FORMAT:
- Include subject line
- Open with acknowledgment of relationship
- State issue with specific data
- Explain impact on your operations
- Propose clear path forward
- Close with commitment to partnership
- Tone: [professional/firm/collaborative]
- Under 250 words
```

#### Example (Filled In)

```
ROLE: You are a supply chain manager with 10 years of experience managing vendor relationships. You're known for being firm but fair, maintaining partnerships while holding vendors accountable. You understand that good vendor relationships are built on clear expectations and mutual respect.

CONTEXT:
- Vendor: FastFreight Logistics
- Relationship history: 3-year partner, generally reliable until recently
- Current issue: On-time delivery dropped from 96% to 82% over past 6 weeks
- Impact on your operations: 14 missed customer shipments, $8,500 in expedited shipping costs, 45 hours overtime
- Previous communication: Mentioned in weekly call 3 weeks ago, no improvement
- Desired outcome: Return to 95%+ on-time delivery within 30 days

TASK: Draft a professional communication that addresses the performance issue while preserving the relationship.

FORMAT:
- Include subject line
- Open with acknowledgment of relationship
- State issue with specific data
- Explain impact on your operations
- Propose clear path forward
- Close with commitment to partnership
- Tone: firm but collaborative
- Under 250 words
```

#### Sample Output

> **Subject: Delivery Performance Discussion - Partnership Alignment Needed**
>
> Hi [Account Manager Name],
>
> I wanted to reach out directly regarding FastFreight's delivery performance over the past several weeks. Our teams have worked well together for three years, and I value that partnership, which is why I want to address this openly.
>
> **Current Performance:**
> Over the past 6 weeks, on-time delivery has declined from our historical 96% to 82%. I first raised this during our weekly call three weeks ago, but we haven't seen improvement.
>
> **Impact on Our Operations:**
> - 14 missed customer shipments
> - $8,500 in expedited shipping to meet commitments
> - 45 hours of unplanned overtime
>
> **Path Forward:**
> I'd like to schedule a 30-minute call this week to:
> 1. Understand what's driving the delivery challenges
> 2. Agree on a corrective action plan
> 3. Set a target of returning to 95%+ within 30 days
>
> I'm committed to making this partnership work. If there are constraints on your end we can help address, let's discuss those too.
>
> Please let me know your availability Thursday or Friday.
>
> Best regards,
> [Your Name]

#### Customization Tips

1. **For new vendor issues:** Soften tone, reference contract terms
2. **For escalation:** Add "CC: [Your leadership]" and increase urgency
3. **For quality issues:** Include defect rates and quality standards
4. **For positive feedback:** Flip template to recognition format

#### Iterations to Try

- "Make this more direct - we've discussed this multiple times"
- "Soften the tone - they're dealing with their own challenges"
- "Add specific contract terms we're referencing"
- "Include request for root cause analysis from their side"

#### Validation

- **Effectiveness score:** 8/10
- **Clarity:** 8/10 | **Completeness:** 8/10 | **Output Quality:** 8/10
- **Duplicate check:** ✅ Unique (builds on Week 1 email with vendor-specific persona)

---

### Prompt 4: Team Announcement Creator

🟢 **Tool:** Bottle Rocket
📋 **Category:** Communications
⏱️ **When to use:** Creating announcements for policy changes, updates, or important news
⭐ **Effectiveness:** 8/10
🔧 **Technique:** Few-Shot Examples

#### Template

```
ROLE: You are a distribution center manager who communicates clearly and builds team trust through transparency.

CONTEXT:
- Audience: [WHO - all associates, specific shift, supervisors, etc.]
- Topic: [WHAT - policy change, schedule update, recognition, etc.]
- Key details: [THE IMPORTANT INFORMATION]
- Tone needed: [informational/celebratory/serious/urgent]
- How it will be shared: [email/posted/spoken at standup]

TASK: Create a team announcement following the examples below.

EXAMPLES:

Example 1 (Policy Change):
---
**Schedule Change Effective March 1**
Team, starting March 1, shift start times will move 30 minutes earlier (5:30 AM instead of 6:00 AM) to accommodate increased volume.
**What this means for you:** Arrive by 5:25 AM for pre-shift. Adjusted break times will be posted.
**Why:** Customer demand has increased; earlier starts help us ship same-day.
**Questions?** See your supervisor or attend the Q&A session Friday at 2 PM.
---

Example 2 (Recognition):
---
**Shout-out: Record-Breaking Week!**
Last week, our team processed 18,500 orders - a new DC record! Special recognition to Pack Line 2 for zero errors and Receiving for clearing the backlog in record time.
This achievement reflects everyone's hard work. Thank you for your dedication.
---

FORMAT:
- Bold headline
- Keep under 150 words
- Include "What this means for you" if it affects daily work
- Include "Why" for any changes
- End with next steps or acknowledgment
```

#### Example (Filled In)

```
ROLE: You are a distribution center manager who communicates clearly and builds team trust through transparency.

CONTEXT:
- Audience: All associates at Chicago DC
- Topic: New safety protocol - mandatory safety glasses in receiving area
- Key details: Starting Monday, safety glasses required in all receiving zones. Glasses provided at entrance. Supervisors will enforce.
- Tone needed: Serious but supportive
- How it will be shared: Posted on boards and announced at standups

TASK: Create a team announcement following the examples below.

EXAMPLES:

Example 1 (Policy Change):
---
**Schedule Change Effective March 1**
Team, starting March 1, shift start times will move 30 minutes earlier...
---

Example 2 (Recognition):
---
**Shout-out: Record-Breaking Week!**
Last week, our team processed 18,500 orders...
---

FORMAT:
- Bold headline
- Keep under 150 words
- Include "What this means for you" if it affects daily work
- Include "Why" for any changes
- End with next steps or acknowledgment
```

#### Sample Output

> **Safety Update: Protective Eyewear Now Required in Receiving**
>
> Team, starting Monday, safety glasses will be required for everyone entering the receiving area - no exceptions.
>
> **What this means for you:**
> - Pick up glasses at the Receiving entrance before entering
> - Glasses are provided at no cost
> - Keep them on while in the zone; return to the rack when leaving
>
> **Why this change:**
> We had two near-miss incidents last month involving debris and packaging materials. This precaution protects your vision and keeps everyone safe.
>
> **Supervisors:** Please reinforce this during standups and coach anyone who forgets.
>
> Your safety is our priority. Thank you for following this new protocol.
>
> Questions? Ask your supervisor or come to the safety office.

#### Customization Tips

1. **For urgent announcements:** Add "EFFECTIVE IMMEDIATELY" and use red/bold formatting
2. **For positive news:** Lead with celebration, add specific names when recognizing
3. **For difficult news:** Add "We understand this is challenging" and offer support resources
4. **For multi-language teams:** Note "Spanish version posted at [location]"

#### Iterations to Try

- "Make this shorter for a quick standup read"
- "Add more detail about why this matters"
- "Include consequences for non-compliance"
- "Make the tone more encouraging"

#### Validation

- **Effectiveness score:** 8/10
- **Clarity:** 9/10 | **Completeness:** 8/10 | **Output Quality:** 8/10
- **Duplicate check:** ✅ Unique

---

## Category: Reporting

### Prompt 3: Leadership KPI Narrative

🟢 **Tool:** Bottle Rocket
📋 **Category:** Reporting
⏱️ **When to use:** Weekly/monthly updates for leadership summarizing performance
⭐ **Effectiveness:** 9/10
🔧 **Technique:** Few-Shot + Enhanced Persona (Persona+)

#### Template

```
ROLE: You are an operations leader with 8 years of experience presenting to executives. You're known for turning data into clear narratives that highlight what matters. You focus on insights, not just numbers.

CONTEXT:
- Report period: [WEEK/MONTH]
- Facility: [DC NAME]
- Key metrics:
  - [METRIC 1]: [VALUE] vs. target [TARGET] ([+/-]%)
  - [METRIC 2]: [VALUE] vs. target [TARGET] ([+/-]%)
  - [METRIC 3]: [VALUE] vs. target [TARGET] ([+/-]%)
- Key events: [ANYTHING NOTABLE THAT HAPPENED]
- Audience: [WHO WILL READ THIS]

TASK: Create a leadership update that tells the story behind the numbers, following these examples.

EXAMPLES:

Example 1 (Strong Performance):
---
**Tampa DC | Week 12 Performance Summary**
Strong week overall with throughput exceeding target by 7%. The outbound team drove this result by implementing a new wave release timing that reduced wait time between picks.

**Key Metrics:**
| Metric | Actual | Target | Status |
|--------|--------|--------|--------|
| Throughput | 107% | 100% | ✅ |
| Quality | 99.2% | 99.0% | ✅ |
| Safety | 0 incidents | 0 | ✅ |

**What Drove Success:** Early wave releases + cross-training investment paying off.
**Watch Item:** Overtime crept up 8% - reviewing staffing mix.
---

Example 2 (Mixed Results):
---
**Greenville DC | Week 12 Performance Summary**
Mixed results this week. Throughput on target but quality dipped due to Wednesday's system glitch. Root cause identified and corrected.

**Key Metrics:**
| Metric | Actual | Target | Status |
|--------|--------|--------|--------|
| Throughput | 100% | 100% | ✅ |
| Quality | 97.8% | 99.0% | ⚠️ |
| Safety | 0 incidents | 0 | ✅ |

**What Happened:** WMS update caused mispicks for 2 hours Wednesday AM.
**Corrective Action:** Rolled back update, IT reviewing before re-deployment.
---

FORMAT:
- Lead with 2-sentence narrative summary
- Metric table with status indicators (✅ ⚠️ ❌)
- "What Drove Success" or "What Happened" explanation
- "Watch Items" or "Corrective Actions" as applicable
- Under 200 words
- Executive-ready tone
```

#### Example (Filled In)

```
ROLE: You are an operations leader with 8 years of experience presenting to executives. You're known for turning data into clear narratives that highlight what matters.

CONTEXT:
- Report period: Week 14
- Facility: Newburgh DC
- Key metrics:
  - Throughput: 94% vs. target 100% (-6%)
  - Quality: 99.5% vs. target 99.0% (+0.5%)
  - Safety: 1 first-aid incident vs. target 0
  - Overtime: 145 hours vs. budget 100 hours (+45%)
- Key events: Conveyor breakdown Wednesday, new associate class started Thursday
- Audience: Regional Director

TASK: Create a leadership update following the examples format.
```

#### Sample Output

> **Newburgh DC | Week 14 Performance Summary**
>
> Challenging week due to equipment downtime, but the team maintained quality standards and managed recovery well. Throughput gap was contained to 6% despite a 3-hour conveyor outage mid-week.
>
> **Key Metrics:**
> | Metric | Actual | Target | Status |
> |--------|--------|--------|--------|
> | Throughput | 94% | 100% | ⚠️ -6% |
> | Quality | 99.5% | 99.0% | ✅ +0.5% |
> | Safety | 1 FA | 0 | ⚠️ |
> | Overtime | 145 hrs | 100 hrs | ⚠️ +45% |
>
> **What Happened:** Wednesday's conveyor failure caused 3-hour stoppage. Team pivoted to manual processing but couldn't fully recover volume. Overtime required to clear backlog Thursday-Friday.
>
> **Corrective Actions:**
> - Conveyor PM schedule accelerated (due: this week)
> - Overtime hours returning to budget this week as backlog cleared
> - Safety incident reviewed: associate reminded on proper lifting technique
>
> **Looking Ahead:** New associate class (8 people) started Thursday - expect productivity boost in 2 weeks post-training.

#### Customization Tips

1. **For monthly reports:** Add trend lines and month-over-month comparison
2. **For board-level:** Reduce detail, increase strategic focus
3. **For peer sharing:** Add "What we learned" section for knowledge transfer
4. **For underperformance:** Lead with root cause and corrective actions

#### Iterations to Try

- "Add financial impact of the conveyor downtime"
- "Include comparison to other DCs in the region"
- "Make this more concise for a busy executive"
- "Add forward-looking projections for next week"

#### Validation

- **Effectiveness score:** 9/10
- **Clarity:** 9/10 | **Completeness:** 9/10 | **Output Quality:** 9/10
- **Duplicate check:** ✅ Advanced version of Week 1 "Performance Summary"

---

## Category: Planning

### Prompt 5: Labor Planning Analysis

🟢 **Tool:** Bottle Rocket
📋 **Category:** Planning
⏱️ **When to use:** Planning staffing for upcoming week or special events
⭐ **Effectiveness:** 9/10
🔧 **Technique:** Chain-of-Thought + Enhanced Persona (CoT + Persona+)

#### Template

```
ROLE: You are a workforce planning specialist with 10 years of experience in distribution center operations. You're known for practical recommendations that balance efficiency with realistic constraints like absenteeism and training curves.

CONTEXT:
- Facility: [DC NAME]
- Planning period: [WEEK/EVENT]
- Current headcount: [NUMBER] associates
- Productivity rate: [UNITS] per labor hour
- Projected demand: [VOLUME OR ORDERS]
- Known constraints: [CALL-OUTS, TRAINING, EQUIPMENT, etc.]
- Historical patterns: [RELEVANT TRENDS]

TASK: Create a labor plan analyzing step by step:
1. First, calculate required capacity based on projected demand
2. Then, compare available capacity to required capacity
3. Next, identify gaps by shift, day, or function
4. Finally, recommend specific staffing actions with contingencies

FORMAT:
- Summary table: required vs. available by day/shift
- Gap analysis with specific numbers
- Recommendations prioritized by impact
- Include contingency plan for 10-15% variance
- Flag dependencies and risks
- Keep under 400 words
```

#### Example (Filled In)

```
ROLE: You are a workforce planning specialist with 10 years of experience in distribution center operations. You're known for practical recommendations that balance efficiency with realistic constraints.

CONTEXT:
- Facility: Chicago DC
- Planning period: Next week (Peak volume expected)
- Current headcount: 48 associates across 2 shifts
- Productivity rate: 45 orders per labor hour
- Projected demand: 16,000 orders (20% above normal)
- Known constraints: 2 associates on vacation, 1 in training (reduced productivity), historical 8% call-out rate on Mondays
- Historical patterns: Peak weeks typically see 12% absenteeism

TASK: Create a labor plan analyzing step by step:
1. First, calculate required capacity based on projected demand
2. Then, compare available capacity to required capacity
3. Next, identify gaps by shift, day, or function
4. Finally, recommend specific staffing actions with contingencies

FORMAT:
- Summary table: required vs. available by day/shift
- Gap analysis with specific numbers
- Recommendations prioritized by impact
- Include contingency plan for 10-15% variance
- Flag dependencies and risks
- Keep under 400 words
```

#### Sample Output

> **Chicago DC | Week of [Date] Labor Plan**
>
> **1. Capacity Calculation**
> - Projected demand: 16,000 orders
> - Productivity rate: 45 orders/labor hour
> - Required labor hours: 16,000 ÷ 45 = **356 hours**
> - Daily requirement (5 days): **71 hours/day**
>
> **2. Available vs. Required**
>
> | Factor | Calculation | Result |
> |--------|-------------|--------|
> | Base headcount | 48 associates × 8 hrs × 5 days | 1,920 hrs |
> | Vacation deduction | -2 associates × 40 hrs | -80 hrs |
> | Training reduction | -1 associate × 50% × 40 hrs | -20 hrs |
> | Absenteeism (12%) | 1,820 × 0.12 | -218 hrs |
> | **Available capacity** | | **1,502 hrs** |
> | **Required capacity** | | **1,780 hrs** |
>
> **3. Gap Analysis**
> - **Shortfall: 278 labor hours (16% gap)**
> - Heaviest impact: Monday (call-out spike) and Thursday (mid-week peak)
> - Function most affected: Picking (highest volume sensitivity)
>
> **4. Recommendations**
>
> | Priority | Action | Hours Gained | Owner |
> |----------|--------|--------------|-------|
> | 1 | Authorize 40 hrs overtime (8 hrs × 5 top performers) | +40 hrs | AGM |
> | 2 | Request 3 temps Mon-Thu | +96 hrs | HR |
> | 3 | Cross-train 2 receivers to picking | +32 hrs | Ops Lead |
> | 4 | Offer voluntary Saturday shift | +64 hrs | Supervisor |
> | **Total** | | **+232 hrs** | |
>
> **Contingency (if demand +15%):**
> - Activate weekend shift with premium pay
> - Pull receiving associates during peak pick windows
>
> **Risks:**
> - Temp availability not guaranteed - submit request by EOD today
> - Cross-trained associates at 80% productivity first 2 days

#### Customization Tips

1. **For seasonal peaks:** Add "Include ramp-up schedule for temps"
2. **For cost-conscious planning:** Add budget constraints and cost per option
3. **For multiple shifts:** Break down by AM/PM/Night shift
4. **For automation integration:** Include equipment capacity constraints

#### Iterations to Try

- "Add cost estimates for each staffing option"
- "Build in more contingency - leadership is risk-averse"
- "Focus the plan on picking specifically"
- "Add a visual timeline for the week"

#### Validation

- **Effectiveness score:** 9/10
- **Clarity:** 9/10 | **Completeness:** 9/10 | **Output Quality:** 9/10
- **Duplicate check:** ✅ Unique (Week 2 planning with CoT)

---

## Category: Data Analysis

### Prompt 7: DC Data Trend Analysis

🟢 **Tool:** Bottle Rocket
📋 **Category:** Data Analysis
⏱️ **When to use:** Analyzing weekly/monthly operations data to find trends, anomalies, and actionable insights
⭐ **Effectiveness:** 9/10
🔧 **Technique:** Chain-of-Thought (CoT)

#### Template

```
ROLE: You are a distribution center operations analyst with 10 years of experience finding actionable insights in operations data. You're known for spotting correlations others miss and translating numbers into clear recommendations.

CONTEXT:
- Facility: [DC NAME]
- Data period: [TIME RANGE]
- Data:
[PASTE YOUR DATA TABLE HERE - include column headers]
- Known factors: [ANY CONTEXT - seasonal trends, staffing changes, equipment issues]
- What leadership wants to know: [SPECIFIC QUESTIONS IF ANY]

TASK: Analyze this data step by step:
1. First, identify the overall trend for each metric (improving, declining, or stable) with specific numbers
2. Then, find correlations between metrics (e.g., does higher volume correlate with lower quality?)
3. Next, flag any anomalies or warning signs that need immediate attention
4. Finally, recommend 3 specific actions based on your analysis, each with a measurable target

FORMAT:
- Start with a trend summary table (Metric | Trend | Key Number)
- Use specific percentages and calculations — no vague statements
- Highlight the single most critical finding in bold
- Recommendations must include who should act and a specific target number
- Keep under 500 words
```

#### Example (Filled In)

```
ROLE: You are a distribution center operations analyst with 10 years of experience finding actionable insights in operations data. You're known for spotting correlations others miss and translating numbers into clear recommendations.

CONTEXT:
- Facility: Tampa DC
- Data period: Weeks 1-6 (January-February)
- Data:
| Week | Orders | Fill Rate | Overtime Hrs | Headcount | Safety |
|------|--------|-----------|-------------|-----------|--------|
| Week 1 | 12,450 | 97.2% | 85 | 42 | 0 |
| Week 2 | 13,100 | 96.8% | 110 | 42 | 1 |
| Week 3 | 11,800 | 98.1% | 60 | 40 | 0 |
| Week 4 | 14,200 | 94.5% | 145 | 42 | 0 |
| Week 5 | 13,900 | 95.1% | 130 | 41 | 2 |
| Week 6 | 15,100 | 93.8% | 160 | 43 | 1 |
- Known factors: Volume trending up due to seasonal demand; 2 associates on leave Week 3
- What leadership wants to know: Are we scaling sustainably or burning out the team?

TASK: Analyze this data step by step:
1. First, identify the overall trend for each metric (improving, declining, or stable) with specific numbers
2. Then, find correlations between metrics (e.g., does higher volume correlate with lower quality?)
3. Next, flag any anomalies or warning signs that need immediate attention
4. Finally, recommend 3 specific actions based on your analysis, each with a measurable target

FORMAT:
- Start with a trend summary table
- Use specific percentages and calculations
- Highlight the single most critical finding in bold
- Recommendations must include who should act and a specific target number
- Keep under 500 words
```

#### Sample Output

> **Trend Summary**
>
> | Metric | Trend | Key Number |
> |--------|-------|-----------|
> | Orders | ↑ Rising | +21% (12,450 → 15,100) |
> | Fill Rate | ↓ Declining | -3.4 pts (97.2% → 93.8%) |
> | Overtime | ↑ Rising | +88% (85 → 160 hrs) |
> | Headcount | → Stable | 40-43 range |
> | Safety | ↑ Rising (negative) | 4 incidents in 6 weeks |
>
> **Correlations**
> - Volume vs. fill rate: Strong inverse. Each +1,000 orders correlates with -0.8% fill rate decline
> - Volume vs. overtime: Near-linear. Each +1,000 orders adds ~25 overtime hours
> - Overtime vs. safety: Weeks with 130+ OT hours have 1.5 incidents vs. 0 below 100 hrs
>
> **⚠️ Critical Finding: The DC is scaling volume through overtime, not capacity. At current trajectory, Week 8 will hit ~16,500 orders with 190+ OT hours and fill rate below 93% — an unsustainable pattern.**
>
> **Anomaly: Week 3** — Lower headcount (40) but highest fill rate (98.1%) and lowest overtime (60 hrs). Likely cause: reduced volume (11,800 orders) due to 2 associates on leave reducing intake. This confirms the capacity ceiling is real.
>
> **Recommendations**
>
> | # | Action | Owner | Target |
> |---|--------|-------|--------|
> | 1 | Add 3 headcount to match volume growth | AGM | Hire by Week 8, cap OT at 100 hrs/week |
> | 2 | Investigate fill rate process — identify where errors increase under volume | Quality Lead | Return to 96%+ within 4 weeks |
> | 3 | Implement OT cap of 120 hrs/week with escalation trigger | Ops Manager | Reduce safety incidents to 0-1/month |

#### Customization Tips

1. **For financial data:** Add "Include cost impact estimates" to FORMAT
2. **For multi-DC comparison:** Present data side-by-side and ask "Which DC is performing best and why?"
3. **For monthly trends:** Request "Month-over-month percentage changes" in FORMAT
4. **For presentation prep:** Add "Create 3 executive talking points" to TASK

#### Iterations to Try

- "What would happen if we added 5 more headcount?"
- "Project these trends forward 4 weeks"
- "Create a one-page executive summary from this analysis"
- "What leading indicators should we track to prevent the fill rate decline?"

#### Validation

- **Effectiveness score:** 9/10
- **Clarity:** 9/10 | **Completeness:** 9/10 | **Output Quality:** 9/10
- **Duplicate check:** ✅ Unique (new data analysis category for Week 2)

---

## Category: Structured Output

### Prompt 8: Structured Report Generator

🟢 **Tool:** Bottle Rocket
📋 **Category:** Structured Output
⏱️ **When to use:** Generating consistently formatted reports, checklists, or structured documents from raw information
⭐ **Effectiveness:** 8/10
🔧 **Technique:** Few-Shot + Format Specification

#### Template

```
ROLE: You are an operations documentation specialist who produces clean, consistent, and professional reports. Every output follows the exact format specified.

CONTEXT:
- Report type: [DAILY STANDUP / WEEKLY SUMMARY / INCIDENT BRIEF / SHIFT HANDOFF]
- Facility: [DC NAME]
- Data/situation: [RAW INFORMATION TO STRUCTURE]

TASK: Transform the raw information into the specified report format. Follow the example structure exactly.

EXAMPLE OUTPUT:
---
[PASTE AN EXAMPLE OF THE FORMAT YOU WANT — a previous report, a template, or a made-up example that shows the exact structure]
---

FORMAT RULES:
- Match the example structure exactly (same sections, same order)
- Use tables where the example uses tables
- Use bullet points where the example uses bullets
- Bold the same types of elements
- Keep the same approximate length per section
- If data is missing, write "[TO BE FILLED]" — never invent data
```

#### Example (Filled In)

```
ROLE: You are an operations documentation specialist who produces clean, consistent, and professional reports.

CONTEXT:
- Report type: Shift Handoff Report
- Facility: Newburgh DC
- Data/situation: Day shift ending — we processed 2,800 orders, conveyor Line 2 had a 45-min stoppage at 2 PM (belt slip), fixed by maintenance. 3 associates called out so we were short-staffed on picking. Quality was good at 99.1%. Night shift needs to clear 400 remaining orders from the backlog and keep an eye on Line 2.

TASK: Transform this into a shift handoff report following the example format exactly.

EXAMPLE OUTPUT:
---
**SHIFT HANDOFF — [DC NAME] | [DATE] | [SHIFT → SHIFT]**

**Status:** 🟢 On Track / 🟡 Watch / 🔴 Behind

| Metric | Today | Target | Status |
|--------|-------|--------|--------|
| Orders Processed | X,XXX | X,XXX | 🟢/🟡/🔴 |
| Quality | XX.X% | 99.0% | 🟢/🟡/🔴 |
| Headcount | XX/XX | Full | 🟢/🟡/🔴 |

**Key Events:**
- [Event 1 with time and resolution]
- [Event 2 if applicable]

**Carryover for Next Shift:**
- [ ] [Action item 1]
- [ ] [Action item 2]

**Watch Items:**
- [Anything the next shift should monitor]
---

FORMAT RULES:
- Match the example structure exactly
- Use status emojis (🟢🟡🔴)
- Keep under 200 words
```

#### Sample Output

> **SHIFT HANDOFF — Newburgh DC | Feb 4 | Day → Night**
>
> **Status:** 🟡 Watch
>
> | Metric | Today | Target | Status |
> |--------|-------|--------|--------|
> | Orders Processed | 2,800 | 3,200 | 🟡 88% |
> | Quality | 99.1% | 99.0% | 🟢 |
> | Headcount | 39/42 | Full | 🟡 3 call-outs |
>
> **Key Events:**
> - 2:00 PM — Conveyor Line 2 belt slip, 45-min stoppage. Maintenance replaced belt, back online at 2:45 PM.
> - 3 call-outs on picking; redistributed remaining associates to cover.
>
> **Carryover for Next Shift:**
> - [ ] Clear 400-order backlog from day shift shortfall
> - [ ] Verify Line 2 belt tension after 2 hours of running
>
> **Watch Items:**
> - Line 2 conveyor — monitor for recurrence of belt slip
> - Backlog may push overtime if not cleared by midnight

#### Customization Tips

1. **For daily standups:** Use a shorter format — 3 bullets max (yesterday, today, blockers)
2. **For weekly reports:** Use the Leadership KPI Narrative format (Prompt 3) instead
3. **For checklist outputs:** Replace tables with `- [ ]` checkbox format
4. **For multi-shift facilities:** Add shift comparison columns

#### Validation

- **Effectiveness score:** 8/10
- **Clarity:** 9/10 | **Completeness:** 8/10 | **Output Quality:** 8/10
- **Duplicate check:** ✅ Unique (structured output focus — new for Week 2)

---

## Category: Meta / Productivity

### Prompt 9: Prompt Library Organizer

🟢 **Tool:** Bottle Rocket
📋 **Category:** Meta / Productivity
⏱️ **When to use:** Organizing, cataloging, and improving your growing collection of prompts
⭐ **Effectiveness:** 8/10
🔧 **Technique:** Enhanced Persona (Persona+)

#### Template

```
ROLE: You are a productivity systems specialist who helps operations leaders organize their AI workflows. You think in categories, naming conventions, and retrieval speed.

CONTEXT:
- I have [NUMBER] prompts saved so far for my distribution center work
- Categories I use most: [LIST — e.g., analysis, reporting, communications, planning]
- My biggest pain point: [e.g., "I can't find prompts quickly" / "I have duplicates" / "I don't know which version works best"]
- Here are my current prompts:
[LIST PROMPT NAMES AND ONE-LINE DESCRIPTIONS]

TASK: Help me organize my prompt library:
1. Suggest a naming convention that makes prompts findable
2. Group my prompts into logical categories
3. Identify any gaps (common tasks I don't have prompts for)
4. Recommend which prompts to version or retire

FORMAT:
- Organized table with: Name | Category | Frequency (daily/weekly/monthly) | Version
- Naming convention explanation with 3 examples
- Gap analysis with 2-3 suggested new prompts
- Keep actionable — I should be able to reorganize in 10 minutes
```

#### Example (Filled In)

```
ROLE: You are a productivity systems specialist who helps operations leaders organize their AI workflows.

CONTEXT:
- I have 8 prompts saved for my DC work
- Categories I use most: analysis, reporting, communications
- My biggest pain point: I can't remember which prompt does what — names are too vague
- Current prompts:
  1. "root cause" - analyzes problems
  2. "email thing" - writes vendor emails
  3. "weekly report" - KPI summary for boss
  4. "team update" - announcements
  5. "labor stuff" - planning headcount
  6. "safety report" - incident documentation
  7. "data analysis" - looks at spreadsheet data
  8. "overtime check" - analyzes OT trends

TASK: Help me organize my prompt library.

FORMAT:
- Organized table
- Naming convention with examples
- Gap analysis
- Actionable in 10 minutes
```

#### Sample Output

> **Naming Convention:** `[category]-[task]-v[version]`
>
> Examples:
> - `analysis-root-cause-v2` (not "root cause")
> - `comms-vendor-performance-v1` (not "email thing")
> - `report-weekly-kpi-v1` (not "weekly report")
>
> **Organized Library:**
>
> | Current Name | New Name | Category | Frequency | Version |
> |---|---|---|---|---|
> | root cause | `analysis-root-cause-v2` | Analysis | Weekly | v2 (CoT added) |
> | email thing | `comms-vendor-performance-v1` | Communications | As needed | v1 |
> | weekly report | `report-weekly-kpi-v1` | Reporting | Weekly | v1 |
> | team update | `comms-team-announcement-v1` | Communications | As needed | v1 |
> | labor stuff | `planning-labor-weekly-v1` | Planning | Weekly | v1 |
> | safety report | `analysis-incident-report-v1` | Analysis | As needed | v1 |
> | data analysis | `analysis-data-trends-v1` | Analysis | Weekly | v1 |
> | overtime check | `analysis-overtime-trends-v1` | Analysis | Weekly | v1 |
>
> **Gaps Identified:**
> - No **daily standup** prompt (you do standups, right?) → suggest `report-daily-standup-v1`
> - No **meeting prep** prompt → suggest `planning-meeting-agenda-v1`
> - `data analysis` and `overtime check` overlap → consider merging into one flexible data prompt
>
> **Action: Rename your files using the new convention. Takes ~10 min. You'll thank yourself next week.**

#### Validation

- **Effectiveness score:** 8/10
- **Clarity:** 8/10 | **Completeness:** 8/10 | **Output Quality:** 8/10
- **Duplicate check:** ✅ Unique (meta-productivity prompt — new for Week 2)

---

## Category: Evaluation

### Prompt 10: Model Comparison Test

🟢 **Tool:** Bottle Rocket
📋 **Category:** Evaluation
⏱️ **When to use:** Testing the same prompt across different AI models to find the best fit for a specific task
⭐ **Effectiveness:** 8/10
🔧 **Technique:** Chain-of-Thought (CoT)

#### Template

```
ROLE: You are an AI evaluation specialist who helps operations teams select the right model for each task type.

CONTEXT:
- Task type: [WHAT YOU'RE TRYING TO DO — analysis, writing, data processing, etc.]
- I ran the following prompt on [MODEL A] and [MODEL B]:
[PASTE YOUR ORIGINAL PROMPT HERE]

- Model A output:
[PASTE OR SUMMARIZE MODEL A's RESPONSE]

- Model B output:
[PASTE OR SUMMARIZE MODEL B's RESPONSE]

TASK: Compare these outputs step by step:
1. First, evaluate format adherence — which followed the requested structure better?
2. Then, assess content quality — which provided more useful, accurate, and specific insights?
3. Next, check instruction following — which completed all requested steps?
4. Finally, recommend which model to use for this type of task and why

FORMAT:
- Comparison table with scores (1-5) for each criterion
- Clear winner declaration with reasoning
- One-sentence rule: "For [task type], use [model] because [reason]"
```

#### Example (Filled In)

```
ROLE: You are an AI evaluation specialist who helps operations teams select the right model for each task type.

CONTEXT:
- Task type: Weekly KPI analysis with recommendations
- I ran the following prompt on Claude and Gemini:

"Analyze our DC's weekly KPI data and provide 3 recommendations..."

- Claude output: [Detailed narrative with calculations, structured recommendations with owner/timeline, 450 words]
- Gemini output: [Bullet-point summary, quick recommendations without specifics, 200 words]

TASK: Compare these outputs step by step.
```

#### Sample Output

> **Model Comparison: KPI Analysis Task**
>
> | Criterion | Claude (1-5) | Gemini (1-5) | Notes |
> |-----------|:---:|:---:|-------|
> | Format adherence | 5 | 3 | Claude matched all requested sections; Gemini skipped the table |
> | Content quality | 5 | 4 | Claude included calculations; Gemini gave accurate but less detailed insights |
> | Instruction following | 5 | 3 | Claude completed all 4 steps; Gemini merged steps 2 and 3 |
> | Specificity | 5 | 3 | Claude named owners and timelines; Gemini stayed general |
> | Speed | 3 | 5 | Gemini responded in ~5 seconds; Claude took ~15 seconds |
> | **Total** | **23/25** | **18/25** | |
>
> **Winner: Claude** for this task type
>
> **Rule: For weekly KPI analysis with detailed recommendations, use Claude because it provides structured calculations, follows multi-step instructions completely, and includes actionable specifics (who/what/when).**
>
> **When to use Gemini instead:** Quick summaries when you need a fast answer and don't need detailed formatting.

#### Customization Tips

1. **For speed-critical tasks:** Weight the "Speed" criterion higher
2. **For writing tasks:** Add "Tone" and "Readability" criteria
3. **For data tasks:** Add "Calculation accuracy" criterion
4. **For comparing 3+ models:** Extend the table columns

#### Validation

- **Effectiveness score:** 8/10
- **Clarity:** 8/10 | **Completeness:** 8/10 | **Output Quality:** 8/10
- **Duplicate check:** ✅ Unique (evaluation category — new for Week 2)

---

## Quick Reference Card

| Task | Prompt Start | Tool | Technique | Week |
|------|-------------|------|-----------|------|
| Root cause analysis | "ROLE: You are a continuous improvement specialist with 15 years..." | 🟢 | CoT | 2 |
| Vendor communication | "ROLE: You are a supply chain manager with 10 years..." | 🟢 | Persona+ | 2 |
| Leadership KPI update | "ROLE: You are an operations leader with 8 years..." | 🟢 | Few-Shot + Persona+ | 2 |
| Team announcement | "ROLE: You are a DC manager who communicates clearly..." | 🟢 | Few-Shot | 2 |
| Labor planning | "ROLE: You are a workforce planning specialist with 10 years..." | 🟢 | CoT + Persona+ | 2 |
| Incident investigation | "ROLE: You are a safety manager with 12 years..." | 🟢 | CoT | 2 |
| Data trend analysis | "ROLE: You are a DC operations analyst with 10 years..." | 🟢 | CoT | 2 |
| Structured reports | "ROLE: You are an operations documentation specialist..." | 🟢 | Few-Shot + Format | 2 |
| Prompt organization | "ROLE: You are a productivity systems specialist..." | 🟢 | Persona+ | 2 |
| Model comparison | "ROLE: You are an AI evaluation specialist..." | 🟢 | CoT | 2 |

---

## Tips for Week 2 Prompts

1. **Use Chain-of-Thought for analysis** - Force step-by-step reasoning for complex problems
2. **Enhance personas** - Add years of experience and "known for" traits
3. **Provide few-shot examples** - 2-3 examples ensure consistent formatting
4. **Be specific about FORMAT** - Word limits, sections, and structure elements
5. **Paste data as tables** - Clean tabular data gets better analysis than paragraphs
6. **Control output structure** - Use example outputs to teach the AI your exact format
7. **Name prompts clearly** - `category-task-v1` beats "that email prompt I made"
8. **Match model to task** - Test the same prompt on 2+ models before picking a default

---

## Prompt Validation Log

| Prompt | Clarity | Completeness | Output Quality | Average | Pass? |
|--------|---------|--------------|----------------|---------|-------|
| Advanced Root Cause Analysis | 9/10 | 9/10 | 9/10 | 9/10 | ✅ |
| Vendor Performance Communication | 8/10 | 8/10 | 8/10 | 8/10 | ✅ |
| Leadership KPI Narrative | 9/10 | 9/10 | 9/10 | 9/10 | ✅ |
| Team Announcement Creator | 9/10 | 8/10 | 8/10 | 8/10 | ✅ |
| Labor Planning Analysis | 9/10 | 9/10 | 9/10 | 9/10 | ✅ |
| Incident Investigation Report | 8/10 | 9/10 | 8/10 | 8/10 | ✅ |
| DC Data Trend Analysis | 9/10 | 9/10 | 9/10 | 9/10 | ✅ |
| Structured Report Generator | 9/10 | 8/10 | 8/10 | 8/10 | ✅ |
| Prompt Library Organizer | 8/10 | 8/10 | 8/10 | 8/10 | ✅ |
| Model Comparison Test | 8/10 | 8/10 | 8/10 | 8/10 | ✅ |

---

## Cross-Week Prompt Inventory

| Prompt Name | This Week | Previous Weeks | Status |
|-------------|-----------|----------------|--------|
| Advanced Root Cause Analysis | ✅ Week 2 | Similar in Week 1 | Advanced version with CoT |
| Vendor Performance Communication | ✅ Week 2 | Email Draft Week 1 | Specialized vendor focus |
| Leadership KPI Narrative | ✅ Week 2 | Performance Summary Week 1 | Advanced with few-shot |
| Team Announcement Creator | ✅ Week 2 | N/A | Unique |
| Labor Planning Analysis | ✅ Week 2 | N/A | Unique |
| Incident Investigation Report | ✅ Week 2 | N/A | Unique |
| DC Data Trend Analysis | ✅ Week 2 | N/A | Unique (new data analysis category) |
| Structured Report Generator | ✅ Week 2 | N/A | Unique (new structured output category) |
| Prompt Library Organizer | ✅ Week 2 | N/A | Unique (meta-productivity) |
| Model Comparison Test | ✅ Week 2 | N/A | Unique (evaluation category) |

---

## Week 2 Technique Summary

| Technique | Prompts Using It | When to Apply |
|-----------|------------------|---------------|
| **Chain-of-Thought** | #1, #5, #6, #7, #10 | Complex analysis requiring step-by-step reasoning |
| **Few-Shot Examples** | #3, #4, #8 | Consistent formatting across similar outputs |
| **Enhanced Persona** | #1, #2, #3, #5, #6, #9 | Tasks requiring specific expertise or perspective |
| **Format Specification** | #8 | Controlling exact output structure with examples |

---

## Quality Checklist

| Check | Requirement | Status |
|-------|-------------|--------|
| Prompt count | 5+ prompts per week | ✅ 10 prompts |
| Formula adherence | All follow ROLE+CONTEXT+TASK+FORMAT | ✅ |
| Examples | All have filled-in examples | ✅ |
| Testing | All scored 7+ effectiveness | ✅ (avg 8.4) |
| Deduplication | No duplicates from previous weeks | ✅ (3 advanced versions labeled) |
| Tool assignment | Correct tool per prompt | ✅ All Bottle Rocket |
| Validation log | Complete for all prompts | ✅ |
| Week 2 techniques | CoT, Few-Shot, Persona+, Format used | ✅ All applied |
| New categories | Data Analysis, Structured Output, Meta, Evaluation added | ✅ |

---

*Prompt Library created for Week 2: Prompt Engineering & Data Analysis*
*Primary Tool: Bottle Rocket (go.tesla.com/chat)*
*Techniques: Chain-of-Thought, Few-Shot, Enhanced Personas, Structured Outputs*
