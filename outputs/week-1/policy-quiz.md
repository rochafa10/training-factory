# Tesla AI Policy Quiz — Week 1

**Purpose:** Interactive quiz for the AI Policy Deep Dive session (Section 2) + standalone exercise
**Format:** Scenario-based judgment calls, multi-layered traps, authority pressure, gray areas
**Difficulty:** Medium to Hard — designed to expose common misconceptions and build real decision-making muscle
**Time:** 20-25 minutes total
**Delivery:** Instructor reads scenarios aloud, participants answer, then debrief each one

---

## Quiz 1: Warm-Up — Not as Easy as You Think (5 questions, ~5 minutes)

*These look simple but each has a trap. Read carefully.*

### Q1. You ask Bottle Rocket to summarize a public Wall Street Journal article about Tesla's latest earnings. Is this Tesla Data?

- A) Yes — it's about Tesla, so it's Tesla Data
- B) No — it's publicly available information, not internal Tesla Data
- C) It depends on whether you're on the Tesla network
- D) Yes — any mention of Tesla makes it Tesla Data

**Answer: B**
**Explanation:** This is where people over-correct. Tesla Data is defined as data "not publicly available outside Tesla." A published WSJ article is public information. The policy definition matters — "Tesla Data" refers to internal information about Tesla, its customers, employees, affiliates. Public earnings results don't qualify. However, if you combine it with internal commentary ("our actual numbers were different because..."), you've just created Tesla Data.

---

### Q2. Your colleague uses Microsoft 365 Copilot Chat to draft a report with Tesla metrics. They accessed it via copilot.microsoft.com. Another colleague does the same thing via m365.cloud.microsoft.chat. Same tool, same task. Are both OK?

- A) Yes — it's the same tool either way
- B) No — only the m365.cloud.microsoft.chat link is approved
- C) No — neither is approved
- D) It depends on what data they entered

**Answer: B**
**Explanation:** The corporate link (m365.cloud.microsoft.chat) routes through Tesla's tenant with enterprise data protection. The personal link (copilot.microsoft.com) does not. Same product name, different data pipelines. This is the same principle as Grok — the *platform path* determines whether data is protected, not the brand name. Your colleague on the personal link committed a violation even though they thought they were using an "approved" Microsoft product.

---

### Q3. A contractor working at your DC asks: "Does this AI policy apply to me? I'm not a Tesla employee."

- A) No — the policy only covers Tesla employees
- B) Yes — the policy applies to all Tesla Workers, which includes contractors
- C) Only if they're using Tesla-owned devices
- D) Only if they have access to Tesla Data

**Answer: B**
**Explanation:** The policy defines "Tesla Workers" as "all Tesla employees and workers, including interns, contingent workers, contractors, part-time and full-time employees." It applies to anyone with access to Tesla's data, systems, or network. Device ownership doesn't matter. Contract status doesn't matter. If they're working at your DC, they're covered.

---

### Q4. You find an AI tool called "WarehouseAI" specifically designed for distribution center operations. It's not on the approved list, but it never asks for company-specific data — it only provides generic warehouse optimization tips. Can you use it?

- A) Yes — since you're not entering Tesla Data, it's fine
- B) No — if it's not listed at go.tesla.com/aitools, it's prohibited
- C) Yes — as long as you don't enter any Tesla information
- D) You need to check with your manager first

**Answer: B**
**Explanation:** The policy is unambiguous: "If an AI tool is not explicitly approved, consider it not allowed for use." It doesn't matter that you're not entering Tesla Data. The tool itself must be on the approved list. Even generic usage of unapproved tools violates policy. If you think it would be useful, submit it through the ARB process (go.tesla.com/ARB) for evaluation.

---

### Q5. True or False: If you use AI to generate content and then edit it heavily before sharing, you don't need to disclose that AI was involved.

**Answer: FALSE**
**Explanation:** The policy requires transparency: "Workers must be transparent about the use of AI Tools in their work, by clearly attributing AI use notice." The degree of editing doesn't change the disclosure requirement. If AI assisted in creating the work, you attribute it. This protects both you and Tesla — if something in the output is wrong, people need to know AI was involved so they can apply appropriate scrutiny.

---

## Quiz 2: The Pressure Scenarios (4 scenarios, ~5 minutes)

*These test what you do when someone with authority or urgency pushes you toward a policy violation. The right answer is never "just do it."*

### Scenario 1: The VP Request

Your VP sends a Slack message at 4:45 PM: "I need a Dive Deep analysis on our Q4 throughput decline across all 5 DCs by tomorrow's 8 AM leadership meeting. I don't care how you do it — just get it done." You know Bottle Rocket can handle this, but your colleague suggests using ChatGPT because "it's faster for long documents and nobody will know."

**Verdict: Use Bottle Rocket. No exceptions.**
**Why:** Urgency and seniority don't override policy. The analysis involves Tesla Data (throughput across DCs = highly sensitive operational metrics). ChatGPT is prohibited regardless of time pressure. Bottle Rocket has Claude 4.5 Opus and Grok 4 — both excellent at long-document analysis. There is no legitimate speed advantage to ChatGPT that justifies the risk. If your colleague goes ahead with ChatGPT, they've committed a violation that could result in termination — the VP's urgency won't protect them.

**The Teaching Moment:** "I don't care how you do it" is not permission to break policy. The VP almost certainly doesn't mean "violate our data security policy." They mean "prioritize this."

---

### Scenario 2: The Cross-Functional Partner

You're collaborating with a team from another Tesla department. They share a Google Doc with you and say: "We've been using Gemini in Google Docs to help draft this strategy document. Can you add your DC's performance data to it so Gemini can incorporate it into the analysis?"

**Verdict: VIOLATION — both the existing practice and the request.**
**Why:** Two problems here. First, Gemini in Google Docs (consumer) is not on the approved tools list — the other team has been violating policy already. Second, adding your DC's performance data to an unapproved AI tool compounds the violation with Tesla Data exposure. The right response: "I can't add Tesla Data to Gemini in Docs — it's not on our approved list. Let's move this to Bottle Rocket or M365 Copilot Chat (corporate link) so we're covered."

**The Teaching Moment:** Other teams violating policy doesn't make it OK. You're responsible for your own compliance, and you should flag the issue constructively.

---

### Scenario 3: The Efficiency Argument

Your direct report built an impressive automated workflow using Zapier connected to an AI service to process daily shift reports. It saves 45 minutes per day and has been running for 3 weeks. They proudly demo it to you. The AI service is not on the approved list, and it processes associate names, shift times, and productivity metrics.

**Verdict: VIOLATION — shut it down immediately.**
**Why:** Three violations stacked: (1) Unapproved AI tool, (2) Tesla Data (associate names = Personal Data, shift times and productivity = operational Tesla Data), (3) Automated pipeline means data has been flowing to a third party continuously for 3 weeks. The duration and the automation make this worse, not better. The right action: stop the workflow, report to infosec@tesla.com, and help your direct report rebuild it using approved tools (Bottle Rocket API via Inference as a Service, or Microsoft Power Automate).

**The Teaching Moment:** Good intentions and real productivity gains don't override policy. The 45 minutes saved doesn't offset the risk of 3 weeks of continuous data leakage. As a manager, you're responsible for what your team does.

---

### Scenario 4: The Interview Curveball

You're interviewing a candidate for a supervisor role at your DC. Midway through, you notice the candidate's responses sound unusually polished — perfect structure, comprehensive coverage, almost like they're reading from a script. You suspect they're using an AI tool to generate answers in real-time.

**Verdict: Address it immediately. Policy prohibits AI use during interviews — by either party.**
**Why:** The policy states: "Candidates applying for a position at Tesla are required to clear all interview rounds without the use of AI Tools. Hiring managers are encouraged to be wary of such malpractices and employ steps/controls to deter the same." If you suspect AI assistance, you should: (1) Ask a follow-up question that requires specific personal experience, (2) If suspicion continues, you may terminate the interview, (3) Report to HR/Recruiting Partner.

**The Teaching Moment:** The prohibition goes both ways — you can't use AI to generate interview questions from Tesla's question bank either (that would be Tesla Data in a potentially unapproved tool). And you cannot use AI notetaking during the interview.

---

## Quiz 3: The Gray Zones (5 scenarios, ~7 minutes)

*These scenarios don't have obvious answers. Multiple policy rules intersect. The point is to teach the reasoning process, not just memorize rules.*

### Scenario 1: The Sanitized Data

You want to analyze overtime trends but you're worried about using Bottle Rocket. So you export your DC's overtime data to Excel, remove all associate names, replace your DC name with "Site A," and remove any dates. Then you paste this anonymized data into ChatGPT and ask for trend analysis.

**Verdict: STILL A VIOLATION**
**Why:** Even "anonymized" operational data is Tesla Data. Overtime patterns, staffing ratios, and productivity metrics are Tesla business information regardless of whether names are attached. The policy doesn't say "Tesla Data with names removed stops being Tesla Data." If the information came from inside Tesla and describes Tesla operations, it's Tesla Data. Also — ChatGPT is prohibited regardless of what data you enter. Even a generic question in ChatGPT violates the "tool must be approved" requirement.

**The Trap:** People think anonymization is a loophole. It isn't. The data classification follows the content's origin and nature, not whether it has names attached.

---

### Scenario 2: The Two-Step Workaround

You ask Bottle Rocket (approved) to generate a draft vendor communication. The output is good but you want to improve the tone. So you copy Bottle Rocket's output — which no longer contains any of your original Tesla Data, just AI-generated text — and paste it into Claude.ai to "polish the writing style."

**Verdict: GRAY AREA — but risky and unnecessary**
**Why:** The AI-generated text from Bottle Rocket doesn't inherently contain Tesla Data if the output is generic enough. But in practice, the draft almost certainly references Tesla-specific context (vendor name, shipment details, your role). More importantly: why take the risk? Bottle Rocket has Claude models. Just ask Bottle Rocket to refine the tone in a follow-up message. The two-step workaround adds risk for zero benefit.

**The Trap:** People create elaborate workarounds to use familiar tools. The friction is psychological, not technical. Bottle Rocket can do everything Claude.ai can do — because it literally runs Claude models.

---

### Scenario 3: The Personal Device, Personal Time

Saturday night. You're at home, on your personal phone, using your personal ChatGPT account. You're thinking about a staffing challenge at work and type: "I manage a distribution center with 45 associates across 3 shifts. Morning shift has 20 people, afternoon has 15, night has 10. We're seeing 22% overtime on night shift. How should I rebalance?"

**Verdict: VIOLATION**
**Why:** Despite being on personal time, personal device, personal account — the data is Tesla Data. The headcount numbers, shift structure, and overtime percentage are internal operational information about your Tesla DC. The policy applies to Tesla Data regardless of when, where, or on what device it's entered. Personal time doesn't create a policy exception.

**The Trap:** "Personal time + personal device = personal business" feels intuitive but is wrong when Tesla Data is involved. The policy follows the data, not the clock or the device.

---

### Scenario 4: The Screenshot Share

You generated a great analysis in Bottle Rocket — a chart showing overtime trends with recommendations. You want to share it with your AGM peer group in a WhatsApp group chat. You take a screenshot of the Bottle Rocket output and send it.

**Verdict: IT DEPENDS — but probably a policy concern**
**Why:** The Bottle Rocket usage itself was fine. The question is about the *output distribution*. If the screenshot contains Tesla Data (overtime numbers, DC identifiers, associate metrics), sharing it via WhatsApp (not a Tesla-approved communication channel for sensitive data) could violate the Data Classification and Management Policy. The AI policy requires that outputs be handled responsibly. Best practice: share via approved channels (Teams, email, Slack) and consider whether the data classification requires restricted distribution.

**The Trap:** People focus on the *input* side of AI policy (what tool, what data goes in) but forget the *output* side. AI-generated content containing Tesla Data must be handled with the same care as any other Tesla Data.

---

### Scenario 5: The Vendor's AI

You receive an email from a vendor with a note at the bottom: "This communication was drafted with AI assistance." The email contains their pricing proposal for your DC's contract renewal. You want to analyze their proposal using Bottle Rocket.

**Verdict: OK**
**Why:** The vendor's use of AI for their own communication is their business. Their pricing proposal, once sent to you, becomes information you can analyze. Using Bottle Rocket (approved tool) to analyze a vendor proposal that's now in your possession is fine. The vendor's AI disclosure is actually good practice and something Tesla requires of its own workers too.

**The Trap:** Some people think "AI-touched" content is somehow tainted or requires special handling. It doesn't — what matters is which tool YOU use to process it and whether YOUR actions comply with Tesla's policy.

---

## Quiz 4: Rapid Fire — But Harder (15 items, ~4 minutes)

*Same format as before but with trickier items. Read each one, participants call out Approved/Conditional/Prohibited.*

| # | Tool or Action | Answer | Why It's Tricky |
|---|---------------|--------|-----------------|
| 1 | Bottle Rocket | **Approved** | Easy — baseline calibration |
| 2 | Grok via X app | **Prohibited** | Grok ≠ always approved. Platform matters. |
| 3 | Grok via Bottle Rocket | **Approved** | Same model, different pipeline = different answer |
| 4 | Claude.ai (website) | **Prohibited** | Claude models are fine INSIDE Bottle Rocket |
| 5 | Claude inside Bottle Rocket | **Approved** | Again — model vs. platform |
| 6 | M365 Copilot Chat (m365.cloud.microsoft.chat) | **Approved** | Corporate link = enterprise data protection |
| 7 | M365 Copilot Chat (copilot.microsoft.com) | **Prohibited** | Personal link = no enterprise protection. Same product name. |
| 8 | GitHub Copilot with Tesla code | **Prohibited** | Copilot is conditional — Tesla Code/Data not allowed |
| 9 | GitHub Copilot with generic Python code | **Conditional (OK)** | No Tesla Data = conditional use is fine |
| 10 | AI meeting transcription using an approved tool | **Prohibited** | It's the ACTION that's banned, not just the tool |
| 11 | Apple Intelligence on personal iPhone at work | **OK (gray)** | Policy bans it on corporate devices. Personal devices in facilities are a separate NDA question about recording. |
| 12 | Perplexity AI for generic research | **Prohibited** | Explicitly listed as prohibited. Doesn't matter if no Tesla Data. |
| 13 | Nova searching Confluence | **Approved** | Nova is approved, uses Bottle Rocket for inference |
| 14 | Employee Assist for HR questions | **Approved** | Bottle Rocket instance for HR |
| 15 | DeepSeek (China-hosted) | **Prohibited** | "Deepseek models hosted in China are Prohibited for any use" |

---

## Quiz 5: "What Would You Do?" — Manager Edition (4 scenarios, ~7 minutes)

*These are leadership scenarios. You're not just deciding for yourself — you're setting the standard for your team of 30-50 associates. Open discussion format.*

### WWYD 1: The Team Training Dilemma

You want to train your 40 associates on using AI for daily tasks. Three of them already use ChatGPT at home for personal stuff and say they "know AI already." They argue: "Why learn a new tool when we already know ChatGPT?" How do you handle this?

**Discussion Points:**
- How do you validate their existing knowledge while redirecting to approved tools?
- What's your elevator pitch for Bottle Rocket vs. ChatGPT? (Same models, data protection, won't get them fired)
- How do you make the policy feel like enablement, not restriction? (Tesla WANTS you to use AI — just through the right door)
- What if they continue using ChatGPT after training? (It's now your responsibility as their manager)

---

### WWYD 2: The Data Leak Discovery

During a casual conversation, one of your supervisors mentions they've been uploading weekly KPI spreadsheets to "an AI tool" to generate trend reports. When you ask which tool, they say "I think it's called Perplexity — someone in another department recommended it." They've been doing this for a month.

**Discussion Points:**
- What's your immediate action? (Stop the practice now, determine scope of data exposure)
- Do you need to report this? (Yes — infosec@tesla.com. A month of KPI data in a prohibited tool is a data incident.)
- How do you handle the HR side? (The supervisor didn't know it was wrong — intent matters for disciplinary response, but the violation still needs to be reported)
- How do you prevent this across your whole team? (Training, clear communication of approved tools, make Bottle Rocket the default)
- What's the systemic fix? (Why did someone in another department recommend Perplexity? Is there a broader awareness problem?)

---

### WWYD 3: The Competitive Pressure

Your peer AGM at another DC tells you: "My team is using AI way more than yours. We're saving 2 hours a day per supervisor." You find out they're using a mix of approved and unapproved tools — some Bottle Rocket, but also ChatGPT for "quick tasks" and an unapproved scheduling AI tool. Their productivity numbers look great.

**Discussion Points:**
- Do you match their approach to stay competitive? (No — policy violations aren't justified by productivity gains)
- Do you report your peer? (This is the hard question. Discuss: what's the right balance between collegial relationships and compliance responsibility?)
- How do you compete on productivity without cutting corners? (Master Bottle Rocket deeply, build prompt libraries, use Nova for internal tool access)
- What happens when their shortcut gets caught? (They face consequences, and the productivity "gains" were built on risk)

---

### WWYD 4: The Regional Rollout

Your regional director asks you to lead AI adoption for all 5 DCs. She wants you to create a one-page "cheat sheet" for all associates. What are the 5 most important things on that cheat sheet?

**Discussion Points:**
- What are your 5 items? (Sample answer below — but let the group debate)
- How do you make it memorable for associates who will read it once?
- How do you handle the 5 different DCs potentially having different levels of AI maturity?

**Sample Cheat Sheet Items:**
1. **Your AI tool is Bottle Rocket** — go.tesla.com/chat. Bookmark it now.
2. **If it's about Tesla, use Bottle Rocket.** Headcount, KPIs, schedules, vendor info, customer info — all Tesla Data, all goes through Bottle Rocket only.
3. **If a tool isn't listed at go.tesla.com/aitools, don't use it.** ChatGPT, Claude.ai, Perplexity — all prohibited.
4. **Never record meetings with AI.** No exceptions. No transcription tools. Assign a human note-taker.
5. **Always check AI output.** AI makes things up. You own the accuracy. Verify before you send.

---

## Answer Key Summary

| Quiz | Questions | Difficulty | Key Takeaways |
|------|-----------|------------|---------------|
| Quiz 1: Warm-Up | Q1-Q5 | Medium | Public vs. internal data distinction. URL matters (M365 links). Contractors are covered. Unapproved tools are banned even without Tesla Data. Attribution is mandatory. |
| Quiz 2: Pressure | S1-S4 | Hard | Authority doesn't override policy. Other teams violating doesn't make it OK. Duration makes violations worse. Interview rules go both ways. |
| Quiz 3: Gray Zones | S1-S5 | Hard | Anonymization isn't a loophole. Two-step workarounds add risk for no benefit. Personal time doesn't exempt Tesla Data. Output handling matters too. Vendor AI use is their business. |
| Quiz 4: Rapid Fire | 15 items | Medium-Hard | Same model can be approved or prohibited depending on platform. Same product name can be approved or prohibited depending on URL. Actions can be banned regardless of tool. |
| Quiz 5: WWYD | 4 discussions | Hard | Manager responsibility for team compliance. Incident reporting obligations. Competitive pressure vs. policy compliance. Building adoption without shortcuts. |

---

## The Two-Question Test (Teach This Framework)

Before any AI interaction, ask yourself:

```
Question 1: Is this tool on go.tesla.com/aitools?
  → If NO → STOP. It's prohibited. Use Bottle Rocket.
  → If YES → proceed to Question 2.

Question 2: Does this involve Tesla Data?
  → If YES → only Approved tools (Bottle Rocket, IT Assist, Employee Assist, Nova, M365 Copilot Chat via corporate link)
  → If NO → Conditionally Approved tools are OK too (GitHub Copilot for generic code)
```

**Bonus Question 3 (for managers): Would I be comfortable if InfoSec reviewed this interaction?**
  → If YES → proceed.
  → If NO → stop and reconsider.

---

*Quiz designed for Week 1: AI Foundations & Policy Compliance*
*Difficulty: Medium to Hard*
*Source: Tesla Acceptable Use Policy for AI Tools v2.0 + Approved Software Confluence page (Jan 2026)*
