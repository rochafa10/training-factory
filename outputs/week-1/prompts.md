# Week 1 Prompt Library: AI Foundations

This library contains reusable prompts for daily operations tasks introduced in Week 1.

**Tool Legend:**
- 🟢 Bottle Rocket - Tesla Data OK
- 🟡 GitHub Copilot - No Tesla Data

---

## Prompts Overview

| # | Prompt Name | Category | Tool | Effectiveness |
|---|-------------|----------|------|---------------|
| 1 | Daily Standup Summary | Daily Operations | 🟢 | 9/10 |
| 2 | Professional Email Draft | Communications | 🟢 | 8/10 |
| 3 | Meeting Agenda Creator | Planning | 🟢 | 8/10 |
| 4 | Performance Summary | Daily Operations | 🟢 | 8/10 |
| 5 | Root Cause Analysis Starter | Analysis | 🟢 | 8/10 |
| 6 | Shift Handoff Notes | Daily Operations | 🟢 | 9/10 |

---

## Category: Daily Operations

### Prompt 1: Daily Standup Summary

🟢 **Tool:** Bottle Rocket
📋 **Category:** Daily Operations
⏱️ **When to use:** Before morning standup to prepare talking points
⭐ **Effectiveness:** 9/10

#### Template

```
ROLE: You are an experienced operations manager at a Tesla distribution center.

CONTEXT: I manage the [SHIFT] shift at the [LOCATION] DC. Yesterday we processed [NUMBER] orders with [NUMBER] associates. [HIGHLIGHT OR CHALLENGE from yesterday].

TASK: Create a brief standup summary highlighting yesterday's performance and today's priorities.

FORMAT: Use bullet points. Keep it under 150 words. Include:
1) Yesterday's key metrics
2) Key highlight or challenge
3) Today's focus areas
```

#### Example (Filled In)

```
ROLE: You are an experienced operations manager at a Tesla distribution center.

CONTEXT: I manage the morning shift at the Tampa DC. Yesterday we processed 2,847 orders with 42 associates. We had a conveyor issue from 2-4 PM that caused a 2-hour delay in outbound shipments.

TASK: Create a brief standup summary highlighting yesterday's performance and today's priorities.

FORMAT: Use bullet points. Keep it under 150 words. Include:
1) Yesterday's key metrics
2) Key highlight or challenge
3) Today's focus areas
```

#### Sample Output

> **Yesterday's Performance:**
> - Processed 2,847 orders with 42 associates (68 orders/associate)
> - Throughput rate on target until afternoon disruption
>
> **Key Challenge:**
> - Conveyor malfunction from 2-4 PM caused 2-hour outbound delay
> - Maintenance resolved the issue; root cause was belt misalignment
> - 127 shipments pushed to today's wave
>
> **Today's Focus Areas:**
> - Clear backlog of delayed shipments by 10 AM
> - Monitor conveyor performance during peak hours
> - Preventive check on all belt systems during lunch break
> - Safety reminder: keep conveyor areas clear

#### Customization Tips

1. **For different shifts:** Change "morning shift" to your shift
2. **For different DCs:** Replace "Tampa DC" with your location
3. **For safety focus:** Add "Include any safety observations" to FORMAT
4. **For metrics focus:** Add specific KPIs to include

#### Iterations to Try

- "Make it more concise - under 100 words"
- "Add a section on staffing levels for today"
- "Include yesterday's safety observations"
- "Focus more on the recovery plan"

#### Validation

- **Effectiveness score:** 9/10
- **Clarity:** 9/10 | **Completeness:** 9/10 | **Output Quality:** 9/10
- **Duplicate check:** ✅ Unique (Week 1 foundation prompt)

---

### Prompt 4: Performance Summary

🟢 **Tool:** Bottle Rocket
📋 **Category:** Daily Operations
⏱️ **When to use:** End of shift or end of week to summarize metrics
⭐ **Effectiveness:** 8/10

#### Template

```
ROLE: You are a supply chain analyst reviewing distribution center performance.

CONTEXT: I need to summarize performance for [TIME PERIOD] at the [LOCATION] DC. Key metrics: Orders processed: [NUMBER], Associates on shift: [NUMBER], Overtime hours: [NUMBER], Missed shipments: [NUMBER]. [Additional context if any].

TASK: Create a performance summary highlighting achievements, areas of concern, and recommendations.

FORMAT:
- Executive summary (2-3 sentences)
- Key achievements (bullet points)
- Areas of concern (bullet points)
- Recommendations (numbered list)
- Keep under 250 words total
```

#### Example (Filled In)

```
ROLE: You are a supply chain analyst reviewing distribution center performance.

CONTEXT: I need to summarize performance for last week at the Greenville DC. Key metrics: Orders processed: 14,250, Associates on shift: 45 average, Overtime hours: 120, Missed shipments: 8. We had one conveyor issue on Wednesday.

TASK: Create a performance summary highlighting achievements, areas of concern, and recommendations.

FORMAT:
- Executive summary (2-3 sentences)
- Key achievements (bullet points)
- Areas of concern (bullet points)
- Recommendations (numbered list)
- Keep under 250 words total
```

#### Sample Output

> **Executive Summary**
> Greenville DC processed 14,250 orders last week with strong overall throughput. However, overtime ran 15% above budget and Wednesday's equipment issue impacted our on-time shipment rate.
>
> **Key Achievements:**
> - Exceeded weekly order target by 5%
> - Associate productivity at 317 orders/person/week
> - 99.94% order accuracy maintained
>
> **Areas of Concern:**
> - 120 overtime hours (budget: 104 hours)
> - 8 missed shipments (target: < 5)
> - Conveyor reliability needs attention
>
> **Recommendations:**
> 1. Review staffing levels for peak days to reduce OT
> 2. Schedule preventive maintenance for conveyor system
> 3. Investigate root cause of missed shipments

#### Customization Tips

1. **For weekly summaries:** Use "last week" in context
2. **For daily summaries:** Change time period and reduce word limit
3. **For leadership:** Add "Format for executive presentation"
4. **For specific KPIs:** List the exact metrics you want included

#### Iterations to Try

- "Add comparison to previous week"
- "Include more detail on the overtime breakdown"
- "Make this more visual with percentages"
- "Add a trend analysis section"

#### Validation

- **Effectiveness score:** 8/10
- **Clarity:** 8/10 | **Completeness:** 9/10 | **Output Quality:** 8/10
- **Duplicate check:** ✅ Unique

---

### Prompt 6: Shift Handoff Notes

🟢 **Tool:** Bottle Rocket
📋 **Category:** Daily Operations
⏱️ **When to use:** End of shift to communicate with incoming shift
⭐ **Effectiveness:** 9/10

#### Template

```
ROLE: You are an operations manager preparing a shift handoff for your replacement.

CONTEXT: I'm ending my [CURRENT SHIFT] shift at the [LOCATION] DC. Today's status: Orders completed: [NUMBER], Orders remaining: [NUMBER], [KEY EVENTS from today]. Equipment status: [EQUIPMENT NOTES]. Staffing issues: [ANY STAFFING NOTES].

TASK: Create a clear shift handoff summary that tells the incoming manager everything they need to know.

FORMAT: Use these sections:
1) Status at handoff (2-3 bullets)
2) In-progress items (what's still being worked on)
3) Issues requiring attention (urgent items)
4) Notes for incoming shift
Keep it under 200 words. Be direct and actionable.
```

#### Example (Filled In)

```
ROLE: You are an operations manager preparing a shift handoff for your replacement.

CONTEXT: I'm ending my morning shift at the Chicago DC. Today's status: Orders completed: 1,450, Orders remaining: 380 in queue. We had a picker no-show and borrowed one from receiving. Conveyor 3 is running slow - maintenance coming at 4 PM. Associate Maria is out tomorrow - need coverage.

TASK: Create a clear shift handoff summary that tells the incoming manager everything they need to know.

FORMAT: Use these sections:
1) Status at handoff (2-3 bullets)
2) In-progress items (what's still being worked on)
3) Issues requiring attention (urgent items)
4) Notes for incoming shift
Keep it under 200 words. Be direct and actionable.
```

#### Sample Output

> **Status at Handoff (2:45 PM)**
> - 1,450 orders completed / 380 remaining in queue
> - On track for daily target if pace maintained
> - One picker borrowed from receiving (return by 5 PM)
>
> **In-Progress Items**
> - Wave 3 currently processing (estimated completion: 4:30 PM)
> - Receiving team finishing inbound trailer #2847
>
> **Issues Requiring Attention**
> - ⚠️ Conveyor 3 running slow - maintenance scheduled for 4 PM
> - Maria out tomorrow - need coverage on Pack Line 2
>
> **Notes for Incoming Shift**
> - Borrowed picker returns to receiving at 5 PM
> - Check conveyor 3 after maintenance
> - Call temp agency for Maria's coverage if needed

#### Customization Tips

1. **For urgent issues:** Add "Mark urgent items with ⚠️"
2. **For overnight shifts:** Add "Include safety walk notes"
3. **For complex handoffs:** Increase word limit to 300
4. **For multiple areas:** Add section for each area

#### Iterations to Try

- "Add more detail on the equipment issue"
- "Include safety observations from today"
- "Make the urgent items more prominent"
- "Add tomorrow's key priorities"

#### Validation

- **Effectiveness score:** 9/10
- **Clarity:** 9/10 | **Completeness:** 9/10 | **Output Quality:** 9/10
- **Duplicate check:** ✅ Unique

---

## Category: Communications

### Prompt 2: Professional Email Draft

🟢 **Tool:** Bottle Rocket
📋 **Category:** Communications
⏱️ **When to use:** When drafting emails to vendors, leadership, or team members
⭐ **Effectiveness:** 8/10

#### Template

```
ROLE: You are a professional operations manager who maintains strong relationships while being direct about issues.

CONTEXT: [DESCRIBE THE SITUATION - who, what, when, impact]. The recipient is [RECIPIENT ROLE/RELATIONSHIP]. The tone should be [professional/friendly/urgent/firm].

TASK: Draft an email that [SPECIFIC PURPOSE - inform, request, follow up, etc.].

FORMAT:
- Subject line included
- [TONE] tone
- Under [WORD LIMIT] words
- Include: [SPECIFIC ELEMENTS to include]
- End with clear next steps
```

#### Example (Filled In)

```
ROLE: You are a professional operations manager who maintains strong relationships while being direct about issues.

CONTEXT: Our vendor ABC Logistics delivered 4 hours late yesterday, causing $2,000 in overtime for my team. This is the second late delivery this month. The recipient is the vendor's account manager, Sarah Chen. The tone should be professional but firm.

TASK: Draft an email that addresses the late delivery issue and requests a meeting to discuss improvement.

FORMAT:
- Subject line included
- Professional but firm tone
- Under 200 words
- Include: specific dates, impact on operations, request for meeting
- End with clear next steps
```

#### Sample Output

> **Subject: Delivery Performance Discussion Needed - Account #TES-2847**
>
> Hi Sarah,
>
> I wanted to follow up on yesterday's delivery (PO #45892) which arrived at 6:15 PM instead of the scheduled 2:00 PM.
>
> This 4-hour delay required us to hold our evening shift, resulting in approximately $2,000 in unplanned overtime. Combined with the similar delay on January 8th, this impacts our ability to meet our own customer commitments.
>
> I value our partnership with ABC Logistics and want to find a solution. Could we schedule a 30-minute call this week to discuss:
> - Root cause of recent delays
> - Preventive measures going forward
> - Communication protocol when delays occur
>
> I'm available Thursday or Friday afternoon. Please let me know what works for you.
>
> Best regards,
> [Your name]

#### Customization Tips

1. **For leadership updates:** Change tone to "concise and data-focused"
2. **For team recognition:** Change tone to "warm and specific"
3. **For escalations:** Add "Include urgency level"
4. **For follow-ups:** Add "Reference previous communication"

#### Iterations to Try

- "Make this more concise - under 150 words"
- "Soften the tone while keeping the message clear"
- "Add more specific data points"
- "Make the request more urgent"

#### Validation

- **Effectiveness score:** 8/10
- **Clarity:** 8/10 | **Completeness:** 8/10 | **Output Quality:** 8/10
- **Duplicate check:** ✅ Unique

---

## Category: Planning

### Prompt 3: Meeting Agenda Creator

🟢 **Tool:** Bottle Rocket
📋 **Category:** Planning
⏱️ **When to use:** Before any meeting to prepare structured agenda
⭐ **Effectiveness:** 8/10

#### Template

```
ROLE: You are an efficient operations leader who runs productive meetings.

CONTEXT: I'm preparing for a [MEETING TYPE] with [ATTENDEES]. The meeting is [DURATION] long. Topics to cover: [LIST KEY TOPICS]. Goals: [WHAT WE NEED TO ACCOMPLISH].

TASK: Create a meeting agenda that keeps us on track and achieves our goals.

FORMAT:
- Include time allocations for each item
- Mark items that need decisions vs. discussion vs. FYI
- Total time must equal [DURATION]
- End with action items section
```

#### Example (Filled In)

```
ROLE: You are an efficient operations leader who runs productive meetings.

CONTEXT: I'm preparing for a weekly safety meeting with my supervisors and leads (8 people). The meeting is 30 minutes long. Topics to cover: review last week's incidents, discuss near-miss reports, preview this week's focus area (forklift safety), assign safety observation tasks. Goals: ensure everyone knows this week's safety focus and has clear assignments.

TASK: Create a meeting agenda that keeps us on track and achieves our goals.

FORMAT:
- Include time allocations for each item
- Mark items that need decisions vs. discussion vs. FYI
- Total time must equal 30 minutes
- End with action items section
```

#### Sample Output

> **Weekly Safety Meeting Agenda**
> *Date: [Date] | Duration: 30 minutes | Location: Conference Room A*
>
> **1. Opening & Review (5 min)** [FYI]
> - Quick wins from last week
> - Review any incidents since last meeting
>
> **2. Near-Miss Report Review (8 min)** [Discussion]
> - Walk through submitted reports
> - Identify patterns or recurring issues
>
> **3. This Week's Focus: Forklift Safety (10 min)** [FYI + Discussion]
> - Review forklift safety checklist
> - Discuss high-traffic areas and timing
> - Q&A from team
>
> **4. Safety Observation Assignments (5 min)** [Decision]
> - Assign observation areas to each lead
> - Set observation deadline
>
> **5. Wrap-up & Action Items (2 min)**
> - Recap key takeaways
> - Confirm next meeting date
>
> **Action Items Template:**
> - [ ] [Person]: [Task] by [Date]

#### Customization Tips

1. **For 1:1 meetings:** Remove time allocations, add "discussion topics"
2. **For longer meetings:** Add breaks every 45-60 minutes
3. **For decision meetings:** Add "decision required" markers
4. **For recurring meetings:** Create template to reuse weekly

#### Iterations to Try

- "Add more time for discussion"
- "Make this for a 15-minute standup instead"
- "Add pre-meeting preparation tasks"
- "Include Zoom/Teams call-in details section"

#### Validation

- **Effectiveness score:** 8/10
- **Clarity:** 8/10 | **Completeness:** 8/10 | **Output Quality:** 8/10
- **Duplicate check:** ✅ Unique

---

## Category: Analysis

### Prompt 5: Root Cause Analysis Starter

🟢 **Tool:** Bottle Rocket
📋 **Category:** Analysis
⏱️ **When to use:** When investigating why something went wrong
⭐ **Effectiveness:** 8/10

#### Template

```
ROLE: You are a supply chain analyst specializing in root cause analysis for distribution center operations.

CONTEXT: [DESCRIBE THE PROBLEM - what happened, when, impact]. We had normal [STAFFING/EQUIPMENT/ETC] conditions. [Any other relevant context].

TASK: Help me conduct a 5-whys root cause analysis to identify potential causes and data to investigate.

FORMAT:
1) Problem statement
2) 5-whys analysis with at least 3 possible root causes
3) For each possible cause, suggest data I should pull to validate
4) Recommended next steps
```

#### Example (Filled In)

```
ROLE: You are a supply chain analyst specializing in root cause analysis for distribution center operations.

CONTEXT: Last week our DC had 47 missed shipments compared to an average of 12. We had normal staffing levels and no major equipment issues that I'm aware of.

TASK: Help me conduct a 5-whys root cause analysis to identify potential causes and data to investigate.

FORMAT:
1) Problem statement
2) 5-whys analysis with at least 3 possible root causes
3) For each possible cause, suggest data I should pull to validate
4) Recommended next steps
```

#### Sample Output

> **Problem Statement**
> Missed shipments increased 292% last week (47 vs. 12 average), without obvious equipment or staffing issues.
>
> **5-Whys Analysis**
>
> **Root Cause Path 1: Order Timing**
> - Why missed? → Orders not picked in time
> - Why not picked in time? → Late wave release
> - Why late release? → System delays or changed cutoff times
> - Why changed? → Possible carrier schedule change
> - **Root Cause:** Carrier pickup time change not communicated
>
> **Root Cause Path 2: Inventory**
> - Why missed? → Items not available to ship
> - Why not available? → Not in pick location
> - Why not in location? → Replenishment delays
> - Why delayed? → Receiving backlog
> - **Root Cause:** Upstream receiving delays impacting picks
>
> **Root Cause Path 3: Process**
> - Why missed? → Orders deprioritized
> - Why deprioritized? → Competing priorities
> - Why competing? → Same-day orders added late
> - Why added late? → Customer escalations
> - **Root Cause:** Manual priority overrides disrupting flow
>
> **Data to Pull:**
> | Hypothesis | Data Needed |
> |------------|-------------|
> | Carrier timing | Compare carrier pickup times week-over-week |
> | Inventory | Replenishment task completion times |
> | Priority changes | Manual order priority overrides log |
>
> **Recommended Next Steps:**
> 1. Pull carrier schedule changes for last week
> 2. Review receiving completion times by day
> 3. Check priority override logs

#### Customization Tips

1. **For equipment issues:** Add "Include equipment maintenance logs"
2. **For people issues:** Focus on training, communication, workload
3. **For systemic issues:** Request multiple weeks of data
4. **For urgent issues:** Add "Prioritize by most likely cause"

#### Iterations to Try

- "Focus more on the inventory hypothesis"
- "Add a fourth possible root cause related to training"
- "Create a timeline of events for investigation"
- "Suggest interview questions for supervisors"

#### Validation

- **Effectiveness score:** 8/10
- **Clarity:** 8/10 | **Completeness:** 9/10 | **Output Quality:** 8/10
- **Duplicate check:** ✅ Unique

---

## Quick Reference Card

| Task | Prompt Start | Tool | Time Savings |
|------|-------------|------|--------------|
| Standup prep | "ROLE: You are an experienced operations manager..." | 🟢 | ~13 min |
| Email drafting | "ROLE: You are a professional operations manager..." | 🟢 | ~10 min |
| Meeting agenda | "ROLE: You are an efficient operations leader..." | 🟢 | ~8 min |
| Performance summary | "ROLE: You are a supply chain analyst..." | 🟢 | ~15 min |
| Root cause analysis | "ROLE: You are a supply chain analyst specializing..." | 🟢 | ~20 min |
| Shift handoff | "ROLE: You are an operations manager preparing..." | 🟢 | ~10 min |

---

## Tips for All Prompts

1. **Be specific** - Vague prompts = vague results
2. **Include context** - The more AI knows about your situation, the better it helps
3. **Specify format** - Tell it exactly how you want the output structured
4. **Iterate** - First output is rarely perfect; use follow-up prompts to refine
5. **Verify** - Always check AI output before sending or using

---

## Prompt Validation Log

| Prompt | Clarity | Completeness | Output Quality | Average | Pass? |
|--------|---------|--------------|----------------|---------|-------|
| Daily Standup Summary | 9/10 | 9/10 | 9/10 | 9/10 | ✅ |
| Professional Email Draft | 8/10 | 8/10 | 8/10 | 8/10 | ✅ |
| Meeting Agenda Creator | 8/10 | 8/10 | 8/10 | 8/10 | ✅ |
| Performance Summary | 8/10 | 9/10 | 8/10 | 8/10 | ✅ |
| Root Cause Analysis | 8/10 | 9/10 | 8/10 | 8/10 | ✅ |
| Shift Handoff Notes | 9/10 | 9/10 | 9/10 | 9/10 | ✅ |

---

## Cross-Week Prompt Inventory

| Prompt Name | This Week | Previous Weeks | Status |
|-------------|-----------|----------------|--------|
| Daily Standup Summary | ✅ New | N/A | Foundation prompt |
| Professional Email Draft | ✅ New | N/A | Foundation prompt |
| Meeting Agenda Creator | ✅ New | N/A | Foundation prompt |
| Performance Summary | ✅ New | N/A | Foundation prompt |
| Root Cause Analysis Starter | ✅ New | N/A | Foundation prompt |
| Shift Handoff Notes | ✅ New | N/A | Foundation prompt |

---

## Quality Checklist

| Check | Requirement | Status |
|-------|-------------|--------|
| Prompt count | 5+ prompts per week | ✅ 6 prompts |
| Formula adherence | All follow ROLE+CONTEXT+TASK+FORMAT | ✅ |
| Examples | All have filled-in examples | ✅ |
| Testing | All scored 7+ effectiveness | ✅ (avg 8.3) |
| Deduplication | No duplicates from previous weeks | ✅ (Week 1) |
| Tool assignment | Correct tool per prompt | ✅ All Bottle Rocket |
| Validation log | Complete for all prompts | ✅ |

---

*Prompt Library created for Week 1: AI Foundations & Policy Compliance*
*Primary Tool: Bottle Rocket (go.tesla.com/chat)*
