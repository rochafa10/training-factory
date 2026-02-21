# Exercise: The Prompt Progression — 4 Agents, Same Data, Different Results

**Time:** 25 minutes
**Tool:** Nabu (nabu.bottlerocket.tesla.com)
**Teaching Point:** No context = no good results. Each layer of the RCTF formula measurably improves output quality.

---

## The Setup

**4 Nabu agents**, all loaded with the **exact same data** (`ordermonitor.md` — 1,000 warehouse orders), but with **4 different prompts** ranging from lazy to expert.

| Level | Agent Name | Prompt Quality | What It Has |
|-------|-----------|---------------|-------------|
| 1 | Order Monitor Level 1 | Terrible | "Analyze the file." — 3 words, zero guidance |
| 2 | Order Monitor Level 2 | Basic | Role + vague task + format hint. No field definitions, no structure |
| 3 | Order Monitor Level 3 | Good (RCTF) | Full RCTF structure with role, context, task, format. Knows about Hot Calls and VOR. But no detailed field definitions |
| 4 | Dive Deep Order Monitor | Expert (RCTF + Deep Context) | Full RCTF + 50 field definitions + 6 analysis sections + output format rules + operational tone |

**Same AI model. Same data file. Only the prompt changes.**

---

## The Prompts (What Each Agent Was Given)

### Level 1 — "The Lazy Prompt"
```
Analyze the file.
```

### Level 2 — "Some Effort"
```
You are a warehouse analyst. Look at the order data and tell me what's going on. Find any problems and give me a summary. Use bullet points.
```

### Level 3 — "Good Structure (RCTF)"
```
ROLE: You are an operations analyst at a Tesla distribution center. You help Area General Managers understand their daily order flow and make decisions.

CONTEXT: The user will upload an Order Monitor export from the warehouse management system. Each row is one order line tracking a part through the warehouse: creation, picking, staging, loading, shipping, and delivery. Key statuses include New, Pick Released, Pick Completed, Stage Completed, Load Completed, Drop Completed, No Inventory, and Canceled.

Orders flagged as "Hot Call" are urgent. Orders flagged as "Vehicle Off Road" (VOR) mean a customer's car is undriveable and waiting for the part — these are highest priority.

TASK: When the user asks about the data, provide:
1. An executive summary with order counts by status
2. Flag any urgent orders (Hot Calls, VOR)
3. Identify problems (No Inventory, stuck orders, late shipments)
4. Give 3-5 actionable recommendations

FORMAT: Use headers and bullet points. Bold important numbers. Start with the summary, end with recommendations. Keep it concise and operational — no fluff.
```

### Level 4 — "Expert" (Full prompt in `nabu-prompt-clean.txt`)
Everything from Level 3, PLUS:
- Definitions for 50+ fields (what every column means in operations terms)
- Status lifecycle explained (New → Pick Released → Pick Completed → Stage → Load → Ship → Drop)
- Pick location format decoded (NB405-149-10 = building, aisle, rack, level)
- Part group classifications (VNA-RACK-FAST vs HVBATTERY-REMAN vs SMALLPARCEL)
- Route types explained (Milk Run vs Non-Milk Run vs ECOM vs International)
- Request types explained (Service vs BodyShop Tab VIN vs AccessoriesDirect)
- Cycle time measurement points
- 6 structured analysis sections with specific thresholds (e.g., "flag orders stuck in New for 4+ hours")

---

## The Exercise

### Round 1: Ask the Same Question to All 4 Agents (10 min)

Open each agent's Playground and ask this **exact same question**:

```
What are the most urgent orders I should worry about right now?
```

**Watch how the answers change:**

| Level | What You Will Likely See |
|-------|------------------------|
| **Level 1** | Generic summary — counts orders by status, maybe lists some numbers. No sense of urgency or priority. Doesn't know what "urgent" means in this context |
| **Level 2** | Better — mentions "problems" and uses bullet points. Might flag "No Inventory" as an issue. But doesn't specifically know what Hot Call or VOR means |
| **Level 3** | Good — specifically calls out Hot Call and VOR orders. Identifies No Inventory as a problem. Gives recommendations. But may misinterpret field values or miss nuances in part groups and routes |
| **Level 4** | Excellent — flags specific VOR + Hot Call orders by part number and description. Knows that "No Inventory" and "Pending Replenishment" are problems to escalate. Understands which routes are milk runs vs individual shipments. Gives 3-5 specific actions with part numbers and locations |

### Round 2: Ask a Follow-Up (5 min)

Pick either Level 1 and Level 4, and ask both:

```
Give me a shift handoff summary I can use for my 7 AM standup meeting.
```

**The contrast will be stark:**
- Level 1 will produce a generic paragraph with some numbers
- Level 4 will produce a structured briefing with yesterday's metrics, current problems, priority orders, and action items — ready to read aloud

### Round 3: Group Discussion (10 min)

**Question 1: Which output would you actually use?**
- Level 1? You'd have to rewrite it completely.
- Level 2? Close, but missing critical context. You'd spend 10 minutes fixing it.
- Level 3? Usable with minor edits. Good structure, might miss some operational nuances.
- Level 4? Copy, paste, go. Ready for your standup.

**Question 2: What made the difference at each level?**

| Jump | What Was Added | Impact |
|------|---------------|--------|
| Level 1 → 2 | Role ("warehouse analyst") + basic task + format | Output went from random to somewhat structured |
| Level 2 → 3 | RCTF structure + specific context (Hot Call, VOR, statuses) | Output became operationally relevant — knows what matters |
| Level 3 → 4 | Deep field definitions + analysis framework + thresholds | Output became expert-level — specific part numbers, locations, actions |

**Question 3: Where's the sweet spot?**
- Level 3 is the minimum for useful output (takes ~3 minutes to write)
- Level 4 is the gold standard for repeated use (takes ~15 minutes to write, but works perfectly every time)
- The right level depends on how often you'll use it:
  - One-time question → Level 3 is fine
  - Daily operational tool → invest in Level 4

**Question 4: How does this apply to Bottle Rocket?**
- The same principle works when you type prompts directly into Bottle Rocket
- The RCTF formula is the difference between "meh" output and "I can actually use this" output
- You don't need to build a Nabu agent every time — but you DO need to apply RCTF every time

---

## The Lesson: Prompt Quality Ladder

```
Level 1: "Do the thing"           → Generic, useless output
Level 2: "You are X. Do Y. Use Z format" → Structured but shallow
Level 3: "RCTF with domain context"     → Operationally relevant
Level 4: "RCTF + deep field knowledge"  → Expert-level, actionable, ready to use
```

**Key insight:** The AI model is the same across all 4 agents. The data is the same. The ONLY variable is the quality of your instructions.

**The investment math:**
- Level 4 prompt took ~15 minutes to write
- It replaces ~30 minutes of manual Order Monitor analysis
- You use it every day
- After 2 days, the prompt has paid for itself
- After a month, you've saved 10+ hours

---

## Trainer Notes

### Agents Already Created (All Deployed)

| Agent Name | Prompt | Document | Status |
|-----------|--------|----------|--------|
| Order Monitor Level 1 | "Analyze the file." | ordermonitor.md (1,000 orders) | Deployed |
| Order Monitor Level 2 | "You are a warehouse analyst..." (2 sentences) | ordermonitor.md (1,000 orders) | Deployed |
| Order Monitor Level 3 | Full RCTF (no field definitions) | ordermonitor.md (1,000 orders) | Deployed |
| Dive Deep Order Monitor | Full RCTF + 50 field definitions | ordermonitor.md (1,000 orders) | Deployed |

### Running the Exercise

1. **Open all 4 agents in separate browser tabs** before the session starts
2. **Project Level 1 first** — let the room see the weak output
3. **Walk up through Levels 2, 3, 4** — the progressive improvement makes the point better than a binary bad/good comparison
4. **Pause at Level 3 → 4** — this is where the "deep context" lesson hits. Ask: "What's the difference between Level 3 and Level 4?" Answer: field definitions. Level 3 knows WHAT to analyze but not HOW to interpret the fields.
5. **Let AGMs try their own questions** on Level 4 if time allows — they'll be impressed

### Presentation Tips
- Don't read the outputs aloud — let the room read them on screen
- Highlight specific differences: "Notice Level 1 just said '16 orders are New.' Level 4 said '16 New orders, 9 of which are Hot Call VOR — these vehicles are off the road waiting for parts. Escalate immediately.'"
- The "aha moment" is usually at the Level 3 → 4 jump, when they see field definitions transform the output

### If AGMs Want to Build Their Own Agent
- Walk them through the Nabu flow: Create Agent → Documents → Prompt Management → Deploy → Playground
- Homework: "Pick one report you produce weekly. Write an RCTF prompt for it. Upload a sample data file. Test it in Nabu."
- This becomes a Week 2 project seed

### Common Questions
- **"Is Level 4 overkill?"** — Not for something you use daily. 15 minutes of prompt writing saves 30+ minutes every day.
- **"Can I start at Level 3 and upgrade later?"** — Yes! That's the recommended path. Start with RCTF structure, then add field definitions as you learn what the AI gets wrong.
- **"Why can't I just upload a CSV?"** — Nabu's document system supports markdown, text, PDF, DOCX, JSON, and PNG. CSV files need to be converted to markdown first (heading + bullet list format works best, ~1,000 rows max).
- **"Can I share my agent with my team?"** — Yes, Nabu agents are accessible to anyone in the security group.

---

## Files Reference

| File | Location | Purpose |
|------|----------|---------|
| `nabu-prompt-level1.txt` | `outputs/week-1/` | Level 1 prompt — 3 words |
| `nabu-prompt-level2.txt` | `outputs/week-1/` | Level 2 prompt — 2 sentences |
| `nabu-prompt-level3.txt` | `outputs/week-1/` | Level 3 prompt — full RCTF, no field definitions |
| `nabu-prompt-clean.txt` | `outputs/week-1/` | Level 4 prompt — full RCTF + 50 field definitions |
| `nabu-bad-prompt.txt` | `outputs/week-1/` | Original bad prompt (alternate version) |
| `ordermonitor.md` | Project root | 1,000 orders in markdown format, uploaded to all 4 agents |
