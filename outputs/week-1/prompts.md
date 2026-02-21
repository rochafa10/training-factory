# Week 1 Prompt Library: AI Foundations for DC Operations

This library contains 12 ready-to-use prompts for daily distribution center operations. Every prompt uses the **ROLE + CONTEXT + TASK + FORMAT** framework taught in Week 1 and runs on **Bottle Rocket** (go.tesla.com/chat) where Tesla Data is approved.

**Tool Legend:**
- Bottle Rocket (go.tesla.com/chat) -- Tesla Data OK
- All models referenced below (Qwen 3 30B, Grok 4, Grok 4 Mini, Gemini 3 Pro) are available inside Bottle Rocket
- **Tip:** Try using the **Feynman persona** for training-related prompts — it explains concepts in simple terms

**How to use this library:**
1. Copy a template into Bottle Rocket
2. Replace every `[PLACEHOLDER]` with your real data
3. Select the recommended model
4. Review the output and iterate if needed

---

## Prompts Overview

| # | Title | Category | Best Model | Time Saved |
|---|-------|----------|------------|------------|
| 1 | Morning Standup Talking Points | Daily Standup / Shift Handoff | Qwen 3 30B | 15 min |
| 2 | End-of-Shift Handoff Summary | Daily Standup / Shift Handoff | Qwen 3 30B | 12 min |
| 3 | Overnight Exception Briefing | Daily Standup / Shift Handoff | Grok 4 Mini | 10 min |
| 4 | Vendor Escalation Email | Email Drafting | Qwen 3 30B | 12 min |
| 5 | Leadership Status Update Email | Email Drafting | Qwen 3 30B | 15 min |
| 6 | Team Announcement Email | Email Drafting | Grok 4 Mini | 8 min |
| 7 | Weekly KPI Summary and Trends | Data Analysis / KPIs | Grok 4 | 20 min |
| 8 | Overtime Spike Root Cause Analysis | Data Analysis / KPIs | Grok 4 | 25 min |
| 9 | Safety Meeting Agenda Builder | Meeting Preparation | Qwen 3 30B | 10 min |
| 10 | 1:1 Supervisor Discussion Prep | Meeting Preparation | Grok 4 Mini | 8 min |
| 11 | Safety Incident Summary Report | Safety & Incident Reporting | Qwen 3 30B | 20 min |
| 12 | New Associate Onboarding Checklist | Training & Team Development | Qwen 3 30B | 15 min |

**Total estimated daily time savings (using 3-4 prompts per day): 30-45 minutes**

---

## Category 1: Daily Standup / Shift Handoff

---

### Prompt 1: Morning Standup Talking Points

**Category:** Daily Standup / Shift Handoff
**Best Model:** Qwen 3 30B -- strong at structured summaries with the right level of detail
**Time Saved:** 15 min vs manual (reviewing reports, compiling notes, formatting bullet points)

**Template:**

```
ROLE: You are an experienced distribution center operations manager preparing for a morning standup.

CONTEXT: I am the AGM at the [LOCATION] DC. I manage [NUMBER] associates across [SHIFTS/AREAS]. Yesterday's numbers: orders processed [NUMBER], headcount on floor [NUMBER], error rate [PERCENTAGE], on-time shipment rate [PERCENTAGE]. [NOTABLE EVENT -- conveyor issue, staffing gap, volume spike, safety observation, etc.].

TASK: Create standup talking points covering yesterday's performance, the key issue and its status, and today's top 3 priorities.

FORMAT: Bullet points grouped under three headers -- "Yesterday's Performance," "Key Issue," and "Today's Priorities." Keep it under 150 words. Use plain language a floor supervisor would understand immediately.
```

**Example (filled in):**

```
ROLE: You are an experienced distribution center operations manager preparing for a morning standup.

CONTEXT: I am the AGM at the Tampa DC. I manage 45 associates across morning and afternoon shifts. Yesterday's numbers: orders processed 2,847, headcount on floor 42, error rate 0.6%, on-time shipment rate 94%. Conveyor 2 jammed from 2-4 PM causing a 2-hour outbound delay and pushing 127 orders to today.

TASK: Create standup talking points covering yesterday's performance, the key issue and its status, and today's top 3 priorities.

FORMAT: Bullet points grouped under three headers -- "Yesterday's Performance," "Key Issue," and "Today's Priorities." Keep it under 150 words. Use plain language a floor supervisor would understand immediately.
```

**Tips:**
- Paste real numbers from your shift report -- the more specific the data, the more useful the output
- If you want the AI to flag which metrics are off-target, add your targets: "Our target is 97% on-time and <0.5% error rate"
- Run this prompt 5 minutes before standup and spend 2 minutes editing rather than 15 minutes writing from scratch

---

### Prompt 2: End-of-Shift Handoff Summary

**Category:** Daily Standup / Shift Handoff
**Best Model:** Qwen 3 30B -- handles multi-section structured formats well
**Time Saved:** 12 min vs manual (writing handoff notes at end of shift)

**Template:**

```
ROLE: You are an operations manager writing a shift handoff for the incoming manager.

CONTEXT: I am ending my [SHIFT NAME] shift at the [LOCATION] DC. Status at handoff: orders completed [NUMBER], orders remaining in queue [NUMBER], associates still on floor [NUMBER]. Equipment status: [NOTE ANY ISSUES -- e.g., "Conveyor 3 running at reduced speed, maintenance ETA 6 PM"]. Staffing notes: [NOTE ANY CALLOUTS, BORROWED STAFF, TEMP GAPS -- e.g., "Borrowed 1 picker from receiving, returns at 5 PM. Maria out tomorrow, need coverage on Pack Line 2"]. Open items: [ANYTHING UNRESOLVED -- e.g., "Vendor trailer for PO #4521 still not arrived, ETA unknown"].

TASK: Create a handoff summary so the incoming shift manager knows exactly what to prioritize.

FORMAT: Four sections -- (1) Status at Handoff, (2) In-Progress Work, (3) Issues Needing Attention (mark urgent items), (4) Notes for Next Shift. Keep under 200 words. Be direct -- no filler.
```

**Example (filled in):**

```
ROLE: You are an operations manager writing a shift handoff for the incoming manager.

CONTEXT: I am ending my morning shift at the Chicago DC. Status at handoff: orders completed 1,450, orders remaining in queue 380, associates still on floor 38. Equipment status: Conveyor 3 running at reduced speed -- maintenance tech arriving at 4 PM. Staffing notes: Borrowed 1 picker from receiving who returns at 5 PM. Maria called out for tomorrow -- need coverage on Pack Line 2. Open items: Vendor trailer for PO #4521 from XPO still not arrived, was due at 11 AM, no updated ETA yet.

TASK: Create a handoff summary so the incoming shift manager knows exactly what to prioritize.

FORMAT: Four sections -- (1) Status at Handoff, (2) In-Progress Work, (3) Issues Needing Attention (mark urgent items), (4) Notes for Next Shift. Keep under 200 words. Be direct -- no filler.
```

**Tips:**
- Fill this out in the last 15 minutes of your shift while events are fresh
- If the incoming manager prefers a different format, just change the FORMAT section
- Add "Include a 1-sentence overall status: green/yellow/red" if you want a quick health indicator at the top

---

### Prompt 3: Overnight Exception Briefing

**Category:** Daily Standup / Shift Handoff
**Best Model:** Grok 4 Mini -- fast turnaround for a quick-scan document
**Time Saved:** 10 min vs manual (reviewing overnight logs and summarizing for day shift)

**Template:**

```
ROLE: You are a distribution center operations analyst who reviews overnight activity.

CONTEXT: I am the AGM at the [LOCATION] DC arriving for the day shift. Here is what happened overnight: [PASTE OR LIST KEY EVENTS -- e.g., inbound trailers received, orders processed, equipment alerts, staffing issues, safety incidents, any vendor no-shows]. Overnight headcount was [NUMBER]. Normal overnight volume is approximately [NUMBER] orders.

TASK: Summarize the overnight activity into a briefing I can scan in 60 seconds. Flag anything that is abnormal or needs my immediate attention this morning.

FORMAT: Two sections -- (1) "Overnight Summary" with 4-5 bullet points covering volume, staffing, equipment, and any incidents, (2) "Needs Your Attention" listing only items that require action this morning. If nothing needs attention, say "No immediate action items." Keep under 120 words.
```

**Example (filled in):**

```
ROLE: You are a distribution center operations analyst who reviews overnight activity.

CONTEXT: I am the AGM at the Newburgh DC arriving for the day shift. Here is what happened overnight: 2 inbound trailers received and unloaded (PO #7821, PO #7834), 1,100 orders processed (target was 1,200), Dock Door 5 sensor alarm triggered at 3 AM and was reset by the night lead, 1 associate went home early with a back strain after lifting a heavy parcel incorrectly, no vendor no-shows. Overnight headcount was 18. Normal overnight volume is approximately 1,200 orders.

TASK: Summarize the overnight activity into a briefing I can scan in 60 seconds. Flag anything that is abnormal or needs my immediate attention this morning.

FORMAT: Two sections -- (1) "Overnight Summary" with 4-5 bullet points covering volume, staffing, equipment, and any incidents, (2) "Needs Your Attention" listing only items that require action this morning. If nothing needs attention, say "No immediate action items." Keep under 120 words.
```

**Tips:**
- Ask the night lead to send you bullet points by text or email so you can paste them directly into the prompt
- If your DC uses a shift log spreadsheet, copy-paste the key rows into the CONTEXT section
- For Mondays, expand the context to cover the full weekend

---

## Category 2: Email Drafting

---

### Prompt 4: Vendor Escalation Email

**Category:** Email Drafting
**Best Model:** Qwen 3 30B -- produces professional tone with the right firmness
**Time Saved:** 12 min vs manual (drafting, checking tone, revising)

**Template:**

```
ROLE: You are a professional operations manager who is firm but maintains vendor relationships.

CONTEXT: Our vendor [VENDOR NAME] has [DESCRIBE THE ISSUE -- e.g., "delivered 4 hours late on the last 2 deliveries this month"]. The impact on our DC: [DESCRIBE IMPACT -- e.g., "$2,000 in unplanned overtime, 127 orders pushed to the next day"]. The recipient is [RECIPIENT NAME AND TITLE] at the vendor. Our account number is [ACCOUNT NUMBER]. My relationship with this vendor is [good/new/strained].

TASK: Draft an escalation email that clearly states the problem and its impact, requests a corrective action plan, and proposes a call to discuss.

FORMAT: Include a subject line. Professional but firm tone. Under 200 words. Structure: (1) specific issue with dates, (2) operational impact, (3) what we need from them, (4) proposed next step. End with a clear call-to-action.
```

**Example (filled in):**

```
ROLE: You are a professional operations manager who is firm but maintains vendor relationships.

CONTEXT: Our vendor FastFreight Logistics has delivered 4+ hours late on 2 of the last 3 scheduled deliveries this month (January 14 and January 22). The impact on our DC: $3,400 in combined overtime costs, 210 orders delayed across both incidents, and our on-time shipment rate dropped to 91% for the week of January 20. The recipient is Marcus Johnson, Regional Account Manager at FastFreight. Our account number is TES-FL-0847. My relationship with this vendor is generally good but deteriorating due to these issues.

TASK: Draft an escalation email that clearly states the problem and its impact, requests a corrective action plan, and proposes a call to discuss.

FORMAT: Include a subject line. Professional but firm tone. Under 200 words. Structure: (1) specific issue with dates, (2) operational impact, (3) what we need from them, (4) proposed next step. End with a clear call-to-action.
```

**Tips:**
- Always include specific dates, dollar amounts, and order counts -- vague complaints are easy to dismiss
- If you want a softer tone for a valued partner, change "firm" to "collaborative" in the ROLE
- After generating, read the email aloud -- if it sounds like something you would say, it is ready to send

---

### Prompt 5: Leadership Status Update Email

**Category:** Email Drafting
**Best Model:** Qwen 3 30B -- good at concise, executive-level writing
**Time Saved:** 15 min vs manual (structuring an update, getting the right level of detail for leadership)

**Template:**

```
ROLE: You are a senior operations manager writing a status update for regional leadership.

CONTEXT: I am the AGM at the [LOCATION] DC reporting on [TIME PERIOD -- e.g., "this week" or "January performance"]. Key data: orders processed [NUMBER], headcount [NUMBER], overtime hours [NUMBER] (budget was [NUMBER]), missed shipments [NUMBER] (target <[NUMBER]), error rate [PERCENTAGE], on-time rate [PERCENTAGE]. [HIGHLIGHT -- one win], [CHALLENGE -- one issue and what you are doing about it]. [OPTIONAL: upcoming risk or request].

TASK: Draft a status update email to my regional director that leads with results, briefly explains the challenge, and closes with next steps.

FORMAT: Include a subject line. Concise and data-driven tone -- leadership reads dozens of these. Under 250 words. Structure: (1) headline result in 1 sentence, (2) key metrics in a short table or bullet list, (3) challenge and mitigation in 2-3 sentences, (4) next steps or ask. No fluff.
```

**Example (filled in):**

```
ROLE: You are a senior operations manager writing a status update for regional leadership.

CONTEXT: I am the AGM at the Tampa DC reporting on the week of January 20-24. Key data: orders processed 14,580, headcount 44 average, overtime hours 138 (budget was 104), missed shipments 9 (target <5), error rate 0.4%, on-time rate 96.2%. Highlight: we cleared a backlog of 400 carryover orders from the prior week by Wednesday with no additional temp labor. Challenge: overtime ran 33% over budget due to a conveyor outage on Tuesday that required manual sortation for 6 hours -- maintenance replaced the drive belt and the system has been stable since. Upcoming risk: February volume forecast is 12% above January, and I am requesting 4 additional temp associates for the first two weeks of February.

TASK: Draft a status update email to my regional director that leads with results, briefly explains the challenge, and closes with next steps.

FORMAT: Include a subject line. Concise and data-driven tone -- leadership reads dozens of these. Under 250 words. Structure: (1) headline result in 1 sentence, (2) key metrics in a short table or bullet list, (3) challenge and mitigation in 2-3 sentences, (4) next steps or ask. No fluff.
```

**Tips:**
- Lead with the number your director cares about most -- usually on-time rate or orders processed
- If you have a specific ask (headcount, budget, equipment), put it in the CONTEXT so the AI weaves it in naturally
- Try the follow-up "Make it shorter -- under 150 words" if the first draft is too detailed for a quick email

---

### Prompt 6: Team Announcement Email

**Category:** Email Drafting
**Best Model:** Grok 4 Mini -- fast, handles straightforward communication well
**Time Saved:** 8 min vs manual (writing, editing for clarity and tone)

**Template:**

```
ROLE: You are a supportive operations manager communicating with your distribution center team.

CONTEXT: I need to announce [WHAT -- e.g., "a schedule change," "a new safety procedure," "a recognition for the team," "a process update"]. The details: [PROVIDE SPECIFICS -- who is affected, what is changing, when it takes effect, why]. My team is [NUMBER] associates at the [LOCATION] DC. The tone should be [motivating/informational/urgent/appreciative].

TASK: Draft an announcement that is clear, tells people exactly what they need to know, and ends with any action they need to take.

FORMAT: Under 150 words. Use short paragraphs (2-3 sentences max). If there is an action item, put it on its own line in bold. Avoid corporate jargon -- write like you are talking to the team in person.
```

**Example (filled in):**

```
ROLE: You are a supportive operations manager communicating with your distribution center team.

CONTEXT: I need to announce that our team hit a new weekly record of 15,200 orders processed with zero safety incidents during the week of January 13-17. The details: all 48 associates contributed, our on-time rate was 98.7%, and we did it without any overtime above budget. I want to recognize the whole team and specifically call out the pick team who maintained 99.2% accuracy. My team is 48 associates at the Greenville DC. The tone should be appreciative and energizing.

TASK: Draft an announcement that is clear, tells people exactly what they need to know, and ends with any action they need to take.

FORMAT: Under 150 words. Use short paragraphs (2-3 sentences max). If there is an action item, put it on its own line in bold. Avoid corporate jargon -- write like you are talking to the team in person.
```

**Tips:**
- For schedule changes, always include the exact date the change takes effect and who to contact with questions
- For recognition, name specific people or teams -- generic praise feels empty
- If the announcement will be printed and posted in the break room, add "Format for a printed flyer" to get a layout-friendly version

---

## Category 3: Data Analysis / KPIs

---

### Prompt 7: Weekly KPI Summary and Trends

**Category:** Data Analysis / KPIs
**Best Model:** Grok 4 -- strongest at interpreting numbers and spotting patterns across data
**Time Saved:** 20 min vs manual (pulling data, calculating variances, writing narrative)

**Template:**

```
ROLE: You are a supply chain performance analyst reviewing distribution center KPIs.

CONTEXT: Here are the weekly KPIs for the [LOCATION] DC for the week of [DATE RANGE]:
- Orders processed: [NUMBER] (target: [NUMBER])
- On-time shipment rate: [PERCENTAGE] (target: [PERCENTAGE])
- Error rate: [PERCENTAGE] (target: [PERCENTAGE])
- Headcount (avg daily): [NUMBER] (planned: [NUMBER])
- Overtime hours: [NUMBER] (budget: [NUMBER])
- Missed shipments: [NUMBER] (target: <[NUMBER])
- Dock-to-stock cycle time: [NUMBER] hours (target: [NUMBER] hours)
[OPTIONAL: Add prior week numbers for comparison]

TASK: Analyze these KPIs. Identify which metrics are on target, which are off target, and what trends I should watch. Give me 2-3 actionable recommendations.

FORMAT: Three sections -- (1) "Performance Snapshot" with a simple table showing each metric vs. target and a status of On Target / Watch / Off Target, (2) "Key Observations" with 3-4 bullet points explaining what the numbers mean, (3) "Recommendations" as a numbered list of 2-3 specific actions. Keep under 300 words.
```

**Example (filled in):**

```
ROLE: You are a supply chain performance analyst reviewing distribution center KPIs.

CONTEXT: Here are the weekly KPIs for the Tampa DC for the week of January 20-24:
- Orders processed: 14,580 (target: 14,000)
- On-time shipment rate: 96.2% (target: 97%)
- Error rate: 0.4% (target: <0.5%)
- Headcount (avg daily): 44 (planned: 45)
- Overtime hours: 138 (budget: 104)
- Missed shipments: 9 (target: <5)
- Dock-to-stock cycle time: 3.2 hours (target: 2.5 hours)
Prior week: orders 13,900, on-time 97.8%, OT hours 96, missed shipments 3, cycle time 2.4 hours.

TASK: Analyze these KPIs. Identify which metrics are on target, which are off target, and what trends I should watch. Give me 2-3 actionable recommendations.

FORMAT: Three sections -- (1) "Performance Snapshot" with a simple table showing each metric vs. target and a status of On Target / Watch / Off Target, (2) "Key Observations" with 3-4 bullet points explaining what the numbers mean, (3) "Recommendations" as a numbered list of 2-3 specific actions. Keep under 300 words.
```

**Tips:**
- Paste data directly from your Excel or reporting tool -- do not round or clean it up, the AI handles raw numbers fine
- Adding the prior week's numbers unlocks trend analysis, which is far more valuable than a single-week snapshot
- Follow up with "Which of these recommendations has the highest impact for the lowest effort?" to prioritize

---

### Prompt 8: Overtime Spike Root Cause Analysis

**Category:** Data Analysis / KPIs
**Best Model:** Grok 4 -- best at structured analytical reasoning and hypothesis generation
**Time Saved:** 25 min vs manual (building an analysis framework, identifying factors, structuring a report)

**Template:**

```
ROLE: You are a supply chain analyst specializing in labor cost analysis for distribution centers.

CONTEXT: At the [LOCATION] DC, overtime hours for [TIME PERIOD] were [ACTUAL NUMBER] against a budget of [BUDGETED NUMBER] -- that is [PERCENTAGE]% over budget. What I know so far: [LIST WHAT YOU KNOW -- e.g., "staffing was at planned levels," "we had a conveyor outage on Tuesday for 6 hours," "volume was 8% above forecast," "2 associates called out on Thursday"]. What I do not know yet: [LIST UNKNOWNS -- e.g., "whether wave planning was optimized," "the breakdown of OT by shift"].

TASK: Conduct a structured root cause analysis. Generate 3 possible root cause hypotheses, tell me what data to pull to validate each one, and recommend immediate actions I can take this week.

FORMAT: (1) Problem statement in 1-2 sentences with the financial impact, (2) three root cause hypotheses each with a "Why" chain (3 levels deep), the data I should pull to confirm or rule it out, and a likelihood rating of High/Medium/Low, (3) "Immediate Actions" as a numbered list of 2-3 steps for this week. Keep under 350 words.
```

**Example (filled in):**

```
ROLE: You are a supply chain analyst specializing in labor cost analysis for distribution centers.

CONTEXT: At the Tampa DC, overtime hours for the week of January 20-24 were 138 against a budget of 104 -- that is 33% over budget. What I know so far: average headcount was 44 against a plan of 45 (1 vacancy unfilled), we had a conveyor outage on Tuesday from 10 AM-4 PM requiring manual sortation, volume was 4% above forecast at 14,580 orders, and 2 associates called out on Thursday with no replacements available. What I do not know yet: whether wave planning was optimized around the outage, the breakdown of OT by day and shift, and whether temp agency was contacted for Thursday.

TASK: Conduct a structured root cause analysis. Generate 3 possible root cause hypotheses, tell me what data to pull to validate each one, and recommend immediate actions I can take this week.

FORMAT: (1) Problem statement in 1-2 sentences with the financial impact, (2) three root cause hypotheses each with a "Why" chain (3 levels deep), the data I should pull to confirm or rule it out, and a likelihood rating of High/Medium/Low, (3) "Immediate Actions" as a numbered list of 2-3 steps for this week. Keep under 350 words.
```

**Tips:**
- Be honest in the "What I do not know yet" section -- this helps the AI focus its analysis on your real gaps
- After getting the analysis, follow up with "Create a 1-page summary I can present to my regional director" to turn insight into communication
- If one hypothesis jumps out, follow up with "Dig deeper into hypothesis 2 -- give me 5 specific questions to ask my supervisors"

---

## Category 4: Meeting Preparation

---

### Prompt 9: Safety Meeting Agenda Builder

**Category:** Meeting Preparation
**Best Model:** Qwen 3 30B -- good at structured, time-boxed agendas
**Time Saved:** 10 min vs manual (building agenda, allocating time, thinking through flow)

**Template:**

```
ROLE: You are an operations safety leader who runs focused, efficient safety meetings.

CONTEXT: I am preparing for a [FREQUENCY -- weekly/monthly] safety meeting at the [LOCATION] DC with [ATTENDEES -- e.g., "8 supervisors and leads"]. Duration: [NUMBER] minutes. Topics to cover: [LIST TOPICS -- e.g., "review last week's incidents, discuss near-miss reports, preview this week's safety focus area (forklift safety), assign safety observation tasks"]. Goals: [WHAT WE NEED TO ACCOMPLISH -- e.g., "ensure everyone knows this week's focus and has clear observation assignments"].

TASK: Build a meeting agenda with time allocations that keeps discussion productive and ends with clear action items.

FORMAT: Table format with columns for Time, Topic, Type (FYI / Discussion / Decision), and Owner. Time allocations must add up to [NUMBER] minutes exactly. End with a section for action items. Keep the agenda to one page.
```

**Example (filled in):**

```
ROLE: You are an operations safety leader who runs focused, efficient safety meetings.

CONTEXT: I am preparing for a weekly safety meeting at the Tampa DC with 8 supervisors and leads. Duration: 30 minutes. Topics to cover: review last week's near-miss report (forklift near-miss in aisle 7), discuss corrective action status for the back strain incident from January 22, preview this week's focus area (proper lifting technique), assign safety observation tasks for the week. Goals: close out open corrective actions, ensure everyone knows this week's safety focus, and each lead has a specific observation assignment.

TASK: Build a meeting agenda with time allocations that keeps discussion productive and ends with clear action items.

FORMAT: Table format with columns for Time, Topic, Type (FYI / Discussion / Decision), and Owner. Time allocations must add up to 30 minutes exactly. End with a section for action items. Keep the agenda to one page.
```

**Tips:**
- Change the safety focus area each week to keep meetings fresh -- ask the AI "Suggest 4 weekly safety topics for a DC in February" if you need ideas
- If your meetings run long, add "Include a 'parking lot' section for topics to defer" to the FORMAT
- Re-use this prompt weekly by updating only the CONTEXT section with new topics and incidents

---

### Prompt 10: 1:1 Supervisor Discussion Prep

**Category:** Meeting Preparation
**Best Model:** Grok 4 Mini -- fast for a lightweight prep task
**Time Saved:** 8 min vs manual (thinking through talking points, structuring the conversation)

**Template:**

```
ROLE: You are a people-focused operations leader preparing for a 1:1 with a direct report.

CONTEXT: I have a [DURATION]-minute 1:1 with [PERSON'S ROLE -- e.g., "my shift supervisor"]. Things going well: [LIST POSITIVES -- e.g., "their team's pick accuracy is up 2% this month," "they handled the Monday volume spike well"]. Things to address: [LIST DEVELOPMENT AREAS OR ISSUES -- e.g., "they have been late to 2 standups this week," "their team's overtime is 20% over budget"]. My goal for this conversation: [WHAT OUTCOME DO YOU WANT -- e.g., "acknowledge their wins, understand why standups were missed, agree on an improvement plan"].

TASK: Create discussion talking points that start with recognition, address the issue constructively, and end with a clear agreement.

FORMAT: Three sections -- (1) "Open With" (recognition points, 2-3 bullets), (2) "Discuss" (the issue, framed as curiosity not accusation, 2-3 bullets with suggested phrasing), (3) "Close With" (agreed next steps, 1-2 bullets). Keep under 150 words total.
```

**Example (filled in):**

```
ROLE: You are a people-focused operations leader preparing for a 1:1 with a direct report.

CONTEXT: I have a 20-minute 1:1 with my afternoon shift supervisor, James. Things going well: his team's pick accuracy improved from 98.1% to 99.3% this month, and he handled a surprise volume spike on Monday by reorganizing his pick zones without being asked. Things to address: he has been late to the morning handoff meeting 3 times in the last 2 weeks, and his supervisor peers have noticed. My goal for this conversation: recognize his strong performance, understand what is causing the lateness, and agree on a plan so it does not continue.

TASK: Create discussion talking points that start with recognition, address the issue constructively, and end with a clear agreement.

FORMAT: Three sections -- (1) "Open With" (recognition points, 2-3 bullets), (2) "Discuss" (the issue, framed as curiosity not accusation, 2-3 bullets with suggested phrasing), (3) "Close With" (agreed next steps, 1-2 bullets). Keep under 150 words total.
```

**Tips:**
- The AI will frame development feedback constructively, but always adjust the language to match how you actually talk
- For performance improvement conversations, add "Include a question that invites their perspective on the situation" to avoid sounding one-directional
- Never read AI-generated talking points word-for-word in a 1:1 -- use them as a framework, then have a real conversation

---

## Category 5: Safety & Incident Reporting

---

### Prompt 11: Safety Incident Summary Report

**Category:** Safety & Incident Reporting
**Best Model:** Qwen 3 30B -- thorough, accurate structure for compliance-sensitive documents
**Time Saved:** 20 min vs manual (structuring the report, ensuring all required fields, writing clearly)

**Template:**

```
ROLE: You are a safety-focused operations manager writing an incident summary for documentation and follow-up.

CONTEXT: A safety incident occurred at the [LOCATION] DC on [DATE] at approximately [TIME]. What happened: [DESCRIBE THE INCIDENT -- e.g., "an associate strained their lower back while lifting a 45-lb parcel from a low shelf without using proper technique"]. People involved: [NAMES/ROLES -- or "associate" if you prefer not to name]. Immediate actions taken: [WHAT WAS DONE RIGHT AWAY -- e.g., "associate reported to first aid, ice applied, supervisor completed witness interview, associate sent home for the day"]. Severity: [minor injury / near-miss / first aid only / recordable]. Equipment or area involved: [DETAILS].

TASK: Write a structured incident summary that documents what happened, the immediate response, the root cause (preliminary), and corrective actions to prevent recurrence.

FORMAT: Five sections -- (1) Incident Overview (who, what, when, where in 3-4 sentences), (2) Immediate Response (numbered list of actions taken), (3) Preliminary Root Cause (2-3 contributing factors), (4) Corrective Actions (numbered list with owner and due date placeholders), (5) Follow-Up Required (any open items). Keep factual and objective -- no blame language. Under 300 words.
```

**Example (filled in):**

```
ROLE: You are a safety-focused operations manager writing an incident summary for documentation and follow-up.

CONTEXT: A safety incident occurred at the Tampa DC on January 22, 2026 at approximately 2:15 PM. What happened: an associate strained their lower back while lifting a 45-lb parcel from the lowest shelf in pick zone C without bending at the knees. The associate had completed ergonomic training 3 months ago but reported they were rushing to meet wave cutoff. People involved: Associate (Pick Team, afternoon shift) and Supervisor Davis who responded. Immediate actions taken: associate self-reported to supervisor, first aid administered (ice pack), supervisor completed witness statement, associate sent home for the remainder of the shift and told to see their doctor if pain persists. Severity: first aid / recordable TBD pending follow-up. Equipment or area involved: Pick Zone C, lowest shelf level (18 inches from floor), parcel weighed 45 lbs.

TASK: Write a structured incident summary that documents what happened, the immediate response, the root cause (preliminary), and corrective actions to prevent recurrence.

FORMAT: Five sections -- (1) Incident Overview (who, what, when, where in 3-4 sentences), (2) Immediate Response (numbered list of actions taken), (3) Preliminary Root Cause (2-3 contributing factors), (4) Corrective Actions (numbered list with owner and due date placeholders), (5) Follow-Up Required (any open items). Keep factual and objective -- no blame language. Under 300 words.
```

**Tips:**
- Always write incident reports the same day while details are fresh -- this prompt helps you structure quickly so you can focus on accuracy
- The AI draft is a starting point -- verify every fact against witness statements and your own observations before submitting
- For near-misses (no injury), change "Severity" to "near-miss" and the AI will adjust the tone and corrective actions accordingly
- Never include associate names in the prompt if your DC policy requires anonymized reporting -- use roles instead

---

## Category 6: Training & Team Development

---

### Prompt 12: New Associate Onboarding Checklist

**Category:** Training & Team Development
**Best Model:** Qwen 3 30B -- thorough at comprehensive checklists with nothing missed
**Time Saved:** 15 min vs manual (remembering all onboarding steps, formatting, customizing per role)

**Template:**

```
ROLE: You are an experienced DC operations manager who has onboarded dozens of new associates.

CONTEXT: I am onboarding a new [ROLE -- e.g., "picker," "packer," "receiver," "dock associate"] at the [LOCATION] DC. They start on [DATE]. Their shift is [SHIFT]. Their direct supervisor is [SUPERVISOR NAME]. Our DC has [NUMBER] associates total. Key areas/equipment they will use: [LIST -- e.g., "pick zones A-D, RF scanner, pallet jack, conveyor system"]. Any special notes: [e.g., "this is a rehire," "they have DC experience at another company," "they need forklift certification within 30 days"].

TASK: Create a structured onboarding checklist covering their first day, first week, and first 30 days. Include safety training, systems access, buddy assignment, and performance milestones.

FORMAT: Three sections -- "Day 1," "Week 1 (Days 2-5)," and "Days 6-30." Each section as a checklist with checkboxes. Include who is responsible for each item (AGM, supervisor, HR, IT, safety lead). Keep under 350 words.
```

**Example (filled in):**

```
ROLE: You are an experienced DC operations manager who has onboarded dozens of new associates.

CONTEXT: I am onboarding a new picker at the Scarborough DC. They start on February 3, 2026. Their shift is morning (6 AM - 2:30 PM). Their direct supervisor is Supervisor Patel. Our DC has 42 associates total. Key areas/equipment they will use: pick zones A-D, RF scanner, electric pallet jack, and the conveyor sortation system. Special notes: they have 2 years of warehouse experience at Amazon but no Tesla-specific experience, and they need to be forklift certified within their first 30 days per our site requirement.

TASK: Create a structured onboarding checklist covering their first day, first week, and first 30 days. Include safety training, systems access, buddy assignment, and performance milestones.

FORMAT: Three sections -- "Day 1," "Week 1 (Days 2-5)," and "Days 6-30." Each section as a checklist with checkboxes. Include who is responsible for each item (AGM, supervisor, HR, IT, safety lead). Keep under 350 words.
```

**Tips:**
- Save the AI-generated checklist as a template and reuse it -- just update the CONTEXT for each new hire
- Ask the follow-up "Add a section for 60-day and 90-day milestones" if your site does extended onboarding reviews
- If your DC has role-specific SOPs, add "Include a line item for reviewing the [SOP NAME] document" to the TASK
- For seasonal temp onboarding where you hire 10+ at once, change the prompt to "Create a group onboarding schedule for [NUMBER] new associates starting the same day"

---

## Quick Reference Card

Copy this card and keep it at your desk. Pick the prompt that matches your task and go to go.tesla.com/chat.

| Task | Prompt # | Best Model | Time Saved |
|------|----------|------------|------------|
| Prepare for morning standup | 1 | Qwen 3 30B | 15 min |
| Write shift handoff notes | 2 | Qwen 3 30B | 12 min |
| Summarize overnight activity | 3 | Grok 4 Mini | 10 min |
| Email a vendor about a problem | 4 | Qwen 3 30B | 12 min |
| Send leadership a status update | 5 | Qwen 3 30B | 15 min |
| Announce something to the team | 6 | Grok 4 Mini | 8 min |
| Analyze weekly KPIs | 7 | Grok 4 | 20 min |
| Investigate an overtime spike | 8 | Grok 4 | 25 min |
| Build a safety meeting agenda | 9 | Qwen 3 30B | 10 min |
| Prepare for a 1:1 conversation | 10 | Grok 4 Mini | 8 min |
| Document a safety incident | 11 | Qwen 3 30B | 20 min |
| Create onboarding checklist | 12 | Qwen 3 30B | 15 min |

---

## Model Selection Guide

Not sure which model to pick? Use this rule of thumb:

| Situation | Model | Why |
|-----------|-------|-----|
| Analyzing numbers, finding patterns, root cause work | **Grok 4** | Strongest analytical reasoning for data-heavy tasks |
| Writing emails, reports, structured documents | **Qwen 3 30B** | Best balance of quality, tone, and structure |
| Quick answers, simple drafts, checklists | **Grok 4 Mini** | Fastest response time for straightforward tasks |
| Not sure | **Qwen 3 30B** | Reliable default for most operations work |

All three models are available inside Bottle Rocket at go.tesla.com/chat. Select the model from the dropdown before submitting your prompt.

---

## Tips for All Prompts

1. **Be specific** -- "Our error rate was 0.6% against a 0.5% target" beats "our error rate was high"
2. **Include real numbers** -- The AI cannot look up your data, so paste it in. Bottle Rocket is approved for Tesla data.
3. **Specify format** -- If you do not tell the AI how to structure the output, it will guess. Tell it exactly what you want.
4. **Iterate** -- Your first output is a draft, not a final product. Follow up with "Make it shorter" or "Add a section on X."
5. **Verify before using** -- AI can sound confident while being wrong. Always check facts, numbers, and names before sending.
6. **Save your best prompts** -- When a prompt works well, save it in a document so you can reuse it tomorrow without rewriting.

---

## Iteration Cheat Sheet

When the output is not quite right, use these follow-up phrases:

| Problem | Follow-Up to Type |
|---------|-------------------|
| Too long | "Make this more concise -- under [N] words" |
| Too formal | "Rewrite in a more conversational tone" |
| Too vague | "Add more specific details about [topic]" |
| Wrong structure | "Reorganize this as [bullet points / table / numbered list]" |
| Missing something | "Add a section on [topic]" |
| Too soft | "Make the tone more direct and action-oriented" |
| Need to share up | "Reformat this for an executive audience" |
| Want options | "Give me 3 alternative versions of the opening paragraph" |

---

*Prompt Library created for Week 1: AI Foundations & Policy Compliance*
*Primary Tool: Bottle Rocket (go.tesla.com/chat)*
*All prompts use the ROLE + CONTEXT + TASK + FORMAT framework*
