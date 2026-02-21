# Slide Plan: Week 2 — Prompt Engineering & Data Analysis

**Session Duration:** 240 minutes (4 hours)
**Total Slides:** 57
**Slide Dimensions:** 960px x 540px (16:9)
**Theme:** Tesla dark (#0a0a0a background, #e82127 accent red)
**Version:** 3.0 — Expanded from 31 slides to 57 slides to match Week 1 quality standard

---

## Slide 01
- **Type:** Title
- **Title:** Prompt Engineering & Data Analysis
- **Subtitle:** Master advanced prompting and analyze operations data with AI
- **Metadata:**
  - Label: WEEK 2 OF 4
  - Duration: 240 minutes
  - Hands-on: 56%
  - Tool: Bottle Rocket

---

## Slide 02
- **Type:** Agenda
- **Title:** Today's Agenda
- **Items:**
  1. Homework Review + Time Savings Check-in (15 min)
  2. Advanced Prompting Techniques (15 min)
  3. Exercise 1: Chain-of-Thought Analysis (25 min)
  4. Operations Use Cases Overview (10 min)
  5. Power Automate Preview (10 min)
  6. BREAK (10 min)
  7. Exercise 2: Build 3 Operations Templates (25 min)
  8. Data Analysis with AI (25 min)
  9. Exercise 3: Analyze a Sample DC Dataset (30 min)
  10. BREAK (10 min)
  11. Structured Outputs (15 min)
  12. Building Your Personal Prompt Library (20 min)
  13. Exercise 4: Model Comparison Challenge (20 min)
  14. Share & Discuss + Key Takeaways (15 min)
  15. Homework (5 min)
- **Footer note:** Hands-on time: ~135 min (56%) | Instruction/demo: ~105 min (44%)

---

## Slide 03
- **Type:** Divider
- **Section Number:** 01
- **Section Title:** Homework Review + Time Savings
- **Duration:** 15 min

---

## Slide 04
- **Type:** Content
- **Title:** Week 1 Wins — What Worked?
- **Bullets:**
  - Share your best prompt — what made it work?
  - Share your worst prompt — what went wrong?
  - Time savings check: hitting 15-20 min/day?
  - Trained users save 2x more than untrained (11 hrs/week vs 5 hrs)
- **Visual note:** Discussion slide with sharing prompts, stat callout for "2x productivity"
- **Footer:** Celebration of progress — every prompt you tested made you better

---

## Slide 05
- **Type:** Divider
- **Section Number:** 02
- **Section Title:** Advanced Prompting Techniques
- **Duration:** 15 min

---

## Slide 06
- **Type:** Content
- **Title:** Chain-of-Thought (CoT) Prompting
- **Layout:** Before/after comparison
- **Left (red — WITHOUT CoT):**
  - Prompt: "Why did overtime increase?"
  - Result: Generic, surface-level answer
- **Right (green — WITH CoT):**
  - Prompt: "Analyze step by step: First list causes, then evaluate each, finally recommend actions"
  - Result: Structured, detailed reasoning
- **Callout:** CoT improves complex reasoning accuracy by 20-40%

---

## Slide 07
- **Type:** Content
- **Title:** Few-Shot Prompting — Teach by Example
- **Layout:** Example demonstration
- **Content:**
  - Provide 2-5 examples of input → output pattern
  - AI learns the format from your examples
  - Performance plateaus after 4-5 demonstrations
- **Example box:**
  - Input: "Conveyor B down 2 hrs. 847 orders."
  - Output: "Conveyor B experienced 2-hour downtime (resolved). Processed 847 orders."
  - Input: "Record day 1200 orders. No issues."
  - Output: "Record volume day with 1,200 orders. No issues reported."
- **Footer:** Best for: standardized formats, shift handoffs, consistent reports

---

## Slide 08
- **Type:** Content
- **Title:** Persona-Based Prompting — Expert on Demand
- **Layout:** Before/after comparison
- **Left (gray — Basic Role):**
  - "You are an operations manager"
  - Result: Generic advice, one-size-fits-all
- **Right (green — Enhanced Persona):**
  - "You are a senior DC manager with 15 years in high-volume fulfillment. You're known for data-driven decisions and practical recommendations that front-line teams can implement."
  - Result: Specific, nuanced, actionable advice
- **Footer:** The more specific the persona, the more relevant the output

---

## Slide 09
- **Type:** Grid
- **Title:** The Power Stack — Combine All Three
- **Layout:** 2x2 grid
- **Card 1 — ROLE (enhanced persona):**
  - Not just "expert" — add years, specialization, personality
  - Example: "Senior DC manager, 15 years, data-driven"
- **Card 2 — CONTEXT (with data):**
  - Include real numbers, dates, constraints
  - The more specific, the better the output
- **Card 3 — TASK (with CoT):**
  - "Analyze step by step: First..., Then..., Finally..."
  - Forces structured reasoning
- **Card 4 — FORMAT (with examples):**
  - Add 2-3 few-shot examples if format matters
  - Specify tables, bullets, word limits

---

## Slide 10
- **Type:** Interactive Quiz
- **Badge:** TECHNIQUE QUIZ
- **Title:** Prompting Techniques — Match the Technique
- **Instructions:** For each scenario, call out which technique works best: CoT, Few-Shot, or Persona
- **Quiz Items (table format):**

  | # | Scenario | Answer |
  |---|----------|--------|
  | 1 | Need AI to show step-by-step reasoning for root cause analysis | ? |
  | 2 | Want consistent format for weekly shift handoff reports | ? |
  | 3 | Need advice from a "safety specialist" perspective | ? |
  | 4 | Analyzing why productivity dropped — need calculations shown | ? |
  | 5 | Training AI to write meeting summaries like your past examples | ? |
  | 6 | Need AI to think through a labor planning decision logically | ? |
  | 7 | Want responses in the tone of a "senior operations leader" | ? |
  | 8 | Creating standardized vendor communication templates | ? |
  | 9 | Need AI to evaluate multiple factors before recommending | ? |
  | 10 | Want AI to match the exact format of a sample you provide | ? |

- **Time Box:** 5 min

---

## Slide 11
- **Type:** Answer Key
- **Badge:** ANSWER KEY
- **Title:** Prompting Techniques — Answers
- **Subtitle:** CoT = Chain-of-Thought | Few-Shot = Examples | Persona = Role Enhancement
- **Answer Table:**

  | # | Scenario | Technique |
  |---|----------|-----------|
  | 1 | Step-by-step reasoning for root cause analysis | CoT |
  | 2 | Consistent format for weekly shift handoff reports | Few-Shot |
  | 3 | Advice from a "safety specialist" perspective | Persona |
  | 4 | Analyzing productivity drop — need calculations | CoT |
  | 5 | Training AI to write meeting summaries like examples | Few-Shot |
  | 6 | Think through a labor planning decision logically | CoT |
  | 7 | Responses in the tone of a "senior operations leader" | Persona |
  | 8 | Creating standardized vendor communication templates | Few-Shot |
  | 9 | Evaluate multiple factors before recommending | CoT |
  | 10 | Match the exact format of a sample you provide | Few-Shot |

- **Footer:** CoT for reasoning. Few-Shot for formatting. Persona for perspective.

---

## Slide 12
- **Type:** Exercise
- **Badge:** EXERCISE 1
- **Title:** Chain-of-Thought Analysis
- **Time Box:** 25 minutes
- **Scenario:** DC missed productivity target by 8% last week
- **Data table:** Mon 95%, Tue 92%, Wed 78%, Thu 88%, Fri 85%
- **Instructions:**
  1. Use CoT to analyze this productivity shortfall
  2. Include the data in your CONTEXT
  3. Use "First..., Then..., Finally..." structure
  4. Get specific recommendations, not generic advice
- **Prompt hint panel:** ROLE + CONTEXT + TASK (step by step) + FORMAT

---

## Slide 13
- **Type:** Exercise Template
- **Badge:** EXERCISE 1 TEMPLATE
- **Title:** CoT Prompt Template — Copy & Customize
- **Code Block:**
```
ROLE: You are an operations analyst helping a distribution center manager understand a productivity shortfall.

CONTEXT: Our DC missed its weekly productivity target by 8%. Here's the daily breakdown:
- Monday: [PERCENTAGE]% of target ([NOTES])
- Tuesday: [PERCENTAGE]% ([NOTES])
- Wednesday: [PERCENTAGE]% ([NOTES])
- Thursday: [PERCENTAGE]% ([NOTES])
- Friday: [PERCENTAGE]% ([NOTES])

TASK: Analyze this step by step:
1. First, calculate the impact of each day's shortfall on the weekly total
2. Then, identify which day had the biggest impact and why
3. Next, determine if this was a single event or multiple issues
4. Finally, recommend 2-3 specific actions to prevent recurrence

FORMAT: Use numbered sections matching the steps above. Include specific percentages and calculations where relevant. Keep recommendations actionable.
```
- **Tip Box:** Replace [PLACEHOLDERS] with your real DC data before pasting
- **Footer:** Time: 25 min | Tool: Bottle Rocket

---

## Slide 14
- **Type:** Comparison
- **Badge:** ACTIVITY A
- **Title:** Prompt Comparison — Simple vs. CoT
- **Left Column (gray — SIMPLE PROMPT):**
  - Prompt: "Why did we miss productivity by 8%?"
  - Output characteristics:
    - Generic possible causes listed
    - No calculations or specific analysis
    - Vague recommendations like "improve efficiency"
- **Right Column (green — COT PROMPT):**
  - Prompt: "Analyze step by step: First calculate each day's impact..."
  - Output characteristics:
    - Day-by-day impact calculations
    - Root cause identified (Wednesday conveyor)
    - Specific recommendations with metrics
- **Bottom callout:** Same AI, same data — the prompt structure makes the difference

---

## Slide 15
- **Type:** Content
- **Title:** What Good CoT Output Looks Like
- **Layout:** Example output with annotations
- **Sample Output Box:**
  - **Step 1:** "Monday's 5% shortfall = 1% weekly impact. Tuesday's 8% = 1.6%..."
  - **Step 2:** "Wednesday's 22% shortfall is the largest, contributing 4.4% to the weekly miss"
  - **Step 3:** "This was a single event (conveyor failure) with cascade effects"
  - **Step 4:** "Recommend: (1) Weekly conveyor inspection, (2) Backup staffing plan..."
- **Annotations:**
  - Green check: Shows calculations
  - Green check: Identifies root cause
  - Green check: Traces cascade effects
  - Green check: Specific, actionable recommendations
- **Footer:** Good CoT shows the work — you can follow the reasoning and verify it

---

## Slide 16
- **Type:** Divider
- **Section Number:** 03
- **Section Title:** Operations Use Cases
- **Duration:** 10 min

---

## Slide 17
- **Type:** Grid
- **Title:** Five High-Impact Use Cases
- **Layout:** 5 compact cards
- **Card 1:** Labor Planning & Productivity Analysis
- **Card 2:** Safety Incident Root Cause (5-Whys)
- **Card 3:** Vendor Communication Templates
- **Card 4:** KPI Dashboard Narratives
- **Card 5:** SOP Documentation
- **Footer:** Each one is a task you do weekly — AI can save 30+ min per occurrence

---

## Slide 18
- **Type:** Exercise
- **Badge:** EXERCISE 2
- **Title:** Build 3 Operations Templates
- **Time Box:** 25 minutes
- **Instructions:**
  1. Choose 3 use cases from the five covered
  2. Build each template using advanced techniques
  3. Test each in Bottle Rocket with real/realistic data
  4. Refine until output is work-ready
- **Checklist panel:** Enhanced ROLE, Placeholders in CONTEXT, CoT in TASK, Specific FORMAT

---

## Slide 19
- **Type:** Exercise Template
- **Badge:** EXERCISE 2 TEMPLATE
- **Title:** KPI Dashboard Narrative Template
- **Code Block:**
```
ROLE: You are a data analyst translating metrics into leadership insights. You're known for clear, concise summaries that highlight what matters.

CONTEXT:
- Facility: [DC NAME] distribution center
- Reporting period: [WEEK/MONTH]
- Key metrics:
  - Orders processed: [NUMBER] (target: [TARGET])
  - Fill rate: [PERCENTAGE]% (target: [TARGET]%)
  - Safety incidents: [NUMBER]
  - Overtime hours: [NUMBER]

TASK: Generate a narrative summary, analyzing step by step:
1. First, identify the top 3 significant changes (good or bad)
2. Then, explain likely causes for each change
3. Finally, recommend actions for any concerning trends

FORMAT:
- Executive summary paragraph first (under 50 words)
- Then 3-4 bullet points with specific findings
- End with 1-2 action items
- Total under 200 words
```
- **Tip Box:** Paste your actual weekly KPI numbers for realistic output
- **Footer:** Category: Reporting | Technique: CoT + Persona

---

## Slide 20
- **Type:** Exercise Template
- **Badge:** EXERCISE 2 TEMPLATE
- **Title:** Vendor Communication Template
- **Code Block:**
```
ROLE: You are an operations manager who maintains professional vendor relationships while addressing performance issues directly. You're known for clear communication that gets results.

CONTEXT:
- Vendor: [VENDOR NAME]
- Relationship history: [BRIEF DESCRIPTION]
- Issue: [SPECIFIC PROBLEM]
- Business impact: [HOW IT AFFECTED YOUR DC]
- Previous communications: [ANY RELEVANT HISTORY]

TASK: Draft a professional email that:
1. Acknowledges the partnership
2. States the issue with specific facts and dates
3. Explains the business impact clearly
4. Requests specific action with a timeline

FORMAT:
- Professional but firm tone
- Under 200 words
- Clear subject line suggestion
- Specific ask in the closing
```
- **Tip Box:** Include actual dates and shipment numbers for impact
- **Footer:** Category: Communication | Technique: Persona

---

## Slide 21
- **Type:** Exercise Template
- **Badge:** EXERCISE 2 TEMPLATE
- **Title:** Safety Incident Root Cause (5-Whys) Template
- **Code Block:**
```
ROLE: You are a safety investigation specialist trained in Human and Organizational Performance (HOP) principles. You focus on system failures, not individual blame.

CONTEXT:
- Incident type: [DESCRIBE]
- When/where: [DATE, LOCATION, SHIFT]
- What happened: [BRIEF DESCRIPTION]
- Known contributing factors: [LIST ANY KNOWN FACTORS]
- Injuries/damage: [DESCRIBE OUTCOME]

TASK: Conduct a 5-Whys analysis step by step:
1. First, state what happened (the surface event)
2. Then, ask "Why?" and answer — repeat 5 times minimum
3. At each level, identify system factors (not individual errors)
4. Finally, recommend corrective actions addressing root causes

FORMAT:
- Number each Why level clearly (Why 1, Why 2, etc.)
- Bold the root cause when you reach it
- List 2-3 corrective actions at the end
- Focus on process/system fixes, not retraining
```
- **Tip Box:** HOP principle: "Error is normal. How we design systems determines outcomes."
- **Footer:** Category: Safety | Technique: CoT

---

## Slide 22
- **Type:** Divider
- **Section Number:** 04
- **Section Title:** Power Automate — Automation Beyond Prompts
- **Duration:** 10 min

---

## Slide 23
- **Type:** Grid
- **Title:** Three Types of Power Automate Flows
- **Layout:** 3 columns
- **Card 1 — Desktop Flows (RPA):**
  - Automate mouse/keyboard actions
  - Best for: legacy systems, data extraction
- **Card 2 — Cloud Flows:**
  - Triggered workflows
  - Best for: scheduled reports, email notifications
- **Card 3 — Process Flows:**
  - Approval chains
  - Best for: multi-step reviews, escalations
- **Footer:** FULLY APPROVED at Tesla — Can use with Tesla data

---

## Slide 24
- **Type:** Content
- **Title:** From Manual Prompts to Automated Workflows
- **Layout:** Before/after comparison
- **Left (gray — MANUAL TODAY):**
  - Run KPI narrative prompt every morning
  - Remember to send weekly reports
  - Manually check for vendor delays
- **Right (green — AUTOMATED WITH POWER AUTOMATE):**
  - KPI narrative runs at 6 AM, arrives in inbox
  - Weekly summaries auto-generated and distributed
  - Delayed shipments trigger automatic alerts
- **Callout:** Week 4 preview: You'll build these flows yourself
- **Footer:** Power Automate + AI prompts = set-and-forget productivity

---

## Slide 25
- **Type:** Divider
- **Section Number:** BREAK
- **Section Title:** 10-Minute Break
- **Duration:** 10 min

---

## Slide 26
- **Type:** Divider
- **Section Number:** 05
- **Section Title:** Data Analysis with AI
- **Duration:** 25 min

---

## Slide 27
- **Type:** Content
- **Title:** How to Present Data to AI
- **Bullets:**
  - Paste tables directly — AI reads structured text well
  - Describe CSV structure: "This is a headcount report with columns for date, shift, headcount, UPH"
  - Upload files in Bottle Rocket: drag & drop PDFs, spreadsheets, images
  - Include units and context: "UPH means units per hour, target is 150"
  - Always state what you want: trends, outliers, comparisons, or recommendations
  - Start small — test with one week of data before uploading months
- **Visual note:** Annotated example showing data paste + prompt structure
- **Footer:** Bottle Rocket can analyze spreadsheets, PDFs, and images. All approved for Tesla Data.

---

## Slide 28
- **Type:** Interactive Quiz
- **Badge:** DATA ANALYSIS QUIZ
- **Title:** How Would You Present This Data to AI?
- **Instructions:** For each data type, call out the best approach: Paste Table, Upload File, or Describe Structure
- **Quiz Items:**

  | # | Data Type | Best Approach |
  |---|-----------|---------------|
  | 1 | 6 weeks of KPIs from Excel (small table) | ? |
  | 2 | 50-page PDF safety manual | ? |
  | 3 | Image of a whiteboard with shift assignments | ? |
  | 4 | Complex pivot table from Power BI | ? |
  | 5 | Simple 5-row comparison table | ? |
  | 6 | 200-row headcount spreadsheet | ? |
  | 7 | Handwritten notes from a meeting | ? |
  | 8 | Data you need to explain context for | ? |

- **Time Box:** 3 min

---

## Slide 29
- **Type:** Answer Key
- **Badge:** ANSWER KEY
- **Title:** Data Presentation — Answers
- **Subtitle:** Match the data format to the AI input method
- **Answer Table:**

  | # | Data Type | Best Approach |
  |---|-----------|---------------|
  | 1 | 6 weeks of KPIs from Excel (small table) | Paste Table |
  | 2 | 50-page PDF safety manual | Upload File |
  | 3 | Image of whiteboard with shift assignments | Upload File |
  | 4 | Complex pivot table from Power BI | Describe Structure |
  | 5 | Simple 5-row comparison table | Paste Table |
  | 6 | 200-row headcount spreadsheet | Upload File |
  | 7 | Handwritten notes from a meeting | Upload File |
  | 8 | Data you need to explain context for | Describe Structure |

- **Footer:** Small & simple = paste. Large or visual = upload. Complex = describe structure first.

---

## Slide 30
- **Type:** Comparison
- **Title:** From Raw Numbers to Executive Insights
- **Left Column (gray — RAW DATA):**
  - Header: What You Have
  - Content: Spreadsheet with 200 rows of daily throughput by shift
  - Problem: Takes 45+ minutes to manually spot trends
- **Right Column (green — AI ANALYSIS):**
  - Header: What AI Produces
  - Content: "Morning shift outperformed afternoon by 12%. Wednesday dips correlate with new hire onboarding days. Recommend shifting training to Fridays."
  - Result: Executive summary in 2 minutes
- **Bottom callout:** Ask for: trends, outliers, comparisons, anomalies, and recommended actions

---

## Slide 31
- **Type:** Exercise
- **Badge:** EXERCISE 3
- **Title:** Analyze a Sample DC Dataset
- **Time Box:** 30 minutes
- **Instructions:**
  1. Paste the sample data (next slide) into Bottle Rocket
  2. Ask AI to identify the top 3 trends
  3. Ask AI to flag any anomalies or concerns
  4. Generate an executive summary (under 200 words)
  5. Compare: CoT prompt vs. simple "analyze this data" prompt
- **Tips panel:**
  - Toggle web search OFF for internal data analysis
  - Try different models — Gemini handles large data well
  - Ask follow-up questions to drill deeper

---

## Slide 32
- **Type:** Content
- **Title:** Sample DC Dataset — Weekly Operations
- **Layout:** Data table (compact)
- **Table:**

  | Week | Orders | UPH | Headcount | Safety Incidents | OT Hours |
  |------|--------|-----|-----------|-----------------|----------|
  | W1 | 12,450 | 142 | 38 | 0 | 45 |
  | W2 | 13,100 | 148 | 38 | 1 | 52 |
  | W3 | 11,800 | 135 | 35 | 0 | 68 |
  | W4 | 14,200 | 151 | 40 | 2 | 38 |
  | W5 | 13,900 | 146 | 39 | 0 | 41 |
  | W6 | 12,100 | 128 | 36 | 1 | 72 |

- **Footer:** Copy this data into Bottle Rocket. Ask: "What trends do you see? What should I be concerned about?"
- **Visual note:** Color-code anomaly cells (W3 low UPH, W6 low UPH + high OT)

---

## Slide 33
- **Type:** Exercise Template
- **Badge:** EXERCISE 3 TEMPLATE
- **Title:** Data Analysis Prompt Template
- **Code Block:**
```
ROLE: You are a distribution center operations analyst with 10 years of experience finding actionable insights in operations data.

CONTEXT: Here is [NUMBER] weeks of operations data from our DC:

| Week | Orders | UPH | Headcount | Safety | OT Hours |
|------|--------|-----|-----------|--------|----------|
[PASTE YOUR DATA HERE]

Target UPH: [NUMBER]. Headcount budget: [NUMBER].

TASK: Analyze this data step by step:
1. First, identify the overall trend for each metric (improving, declining, stable)
2. Then, find correlations between metrics (e.g., does volume affect fill rate?)
3. Next, flag any anomalies or warning signs
4. Finally, recommend 3 specific actions based on your analysis

FORMAT:
- Trend summary table first
- Include specific numbers and percentages
- Highlight the most critical finding
- Keep recommendations actionable with specific targets
```
- **Tip Box:** Include your target KPIs so AI can compare against benchmarks
- **Footer:** Time: 30 min | Tool: Bottle Rocket

---

## Slide 34
- **Type:** Comparison
- **Badge:** ACTIVITY B
- **Title:** Model Comparison Demo — Same Data, Different Models
- **Left Column — Model A (Qwen 3 30B):**
  - Speed: Fast (2-3 seconds)
  - Output style: Concise bullet points
  - Strength: Quick first-pass analysis
- **Right Column — Model B (Gemini 2.5 Pro):**
  - Speed: Slower (5-8 seconds)
  - Output style: Detailed narrative
  - Strength: Deep pattern recognition
- **Center panel:** Same prompt, same data — different emphasis and depth
- **Footer:** No "best" model — match the model to your task's complexity

---

## Slide 35
- **Type:** Hallucination Hunt
- **Badge:** EXERCISE 5
- **Title:** Hallucination Hunt: Find the 3 Errors
- **Time Box:** 5 MIN
- **AI Output Box (blue border):**
```
Data Analysis Summary for Tampa DC

Based on the 6-week operations data provided, here are the key findings:

TREND ANALYSIS:
Orders are trending upward at 8.2% week-over-week growth. UPH shows strong correlation with headcount (r=0.94). The OSHA benchmark for distribution centers is 145 UPH, which we exceeded in 4 of 6 weeks.

ANOMALIES:
Week 3 and Week 6 show concerning patterns. According to the Tesla Operations Handbook Section 8.3, any week with OT exceeding 60 hours requires a staffing review.

RECOMMENDATIONS:
1. Increase headcount to 42 based on the industry-standard 350 orders per FTE ratio
2. The Bureau of Labor Statistics reports DCs with UPH above 140 have 23% fewer safety incidents
```
- **Error Boxes (dashed red border):**
  - Error 1: ______
  - Error 2: ______
  - Error 3: ______

---

## Slide 36
- **Type:** Answer Key
- **Badge:** HALLUCINATION HUNT ANSWERS
- **Title:** Hallucination Hunt — The 3 Errors
- **Error Reveals:**
  - **Error 1:** "OSHA benchmark for distribution centers is 145 UPH" — OSHA does not publish UPH benchmarks. This is a hallucinated statistic.
  - **Error 2:** "Tesla Operations Handbook Section 8.3" — AI invented a specific policy reference. Always verify internal document citations.
  - **Error 3:** "Bureau of Labor Statistics reports DCs with UPH above 140 have 23% fewer safety incidents" — BLS does not publish this correlation. Made-up source + statistic.
- **Key Lesson Box:** AI confidently cites sources that don't exist. Always verify: (1) Internal policy references (2) External statistics (3) Specific numerical claims
- **Footer:** Trust the structure. Verify the facts.

---

## Slide 37
- **Type:** Divider
- **Section Number:** BREAK
- **Section Title:** 10-Minute Break
- **Duration:** 10 min

---

## Slide 38
- **Type:** Divider
- **Section Number:** 06
- **Section Title:** Structured Outputs
- **Duration:** 15 min

---

## Slide 39
- **Type:** Grid
- **Title:** Getting AI to Output in Consistent Formats
- **Layout:** 2x2 grid
- **Card 1 — Tables:**
  - Use: "Present this as a table with columns for [X], [Y], [Z]"
  - Best for: comparisons, data summaries, schedules
- **Card 2 — Checklists:**
  - Use: "Create a checklist with checkboxes for each step"
  - Best for: SOPs, audit prep, onboarding
- **Card 3 — Formatted Reports:**
  - Use: "Write an executive summary with: headline, 3 key findings, recommendation"
  - Best for: leadership updates, weekly reports
- **Card 4 — Markdown:**
  - Use: "Format using Markdown with headers, bold, and bullet points"
  - Best for: documentation, knowledge base articles
- **Footer:** Specify FORMAT explicitly — don't leave it to the AI to guess

---

## Slide 40
- **Type:** Interactive Quiz
- **Badge:** OUTPUT FORMAT QUIZ
- **Title:** Match the Task to the Output Format
- **Instructions:** For each task, call out the best format: Table, Checklist, Report, or Markdown
- **Quiz Items:**

  | # | Task | Best Format |
  |---|------|-------------|
  | 1 | Comparing performance across 5 shifts | ? |
  | 2 | New hire onboarding steps | ? |
  | 3 | Weekly summary for your VP | ? |
  | 4 | Knowledge base article on equipment maintenance | ? |
  | 5 | Audit preparation items | ? |
  | 6 | Model comparison scorecard | ? |
  | 7 | Safety incident briefing for leadership | ? |
  | 8 | SOP for end-of-shift procedures | ? |

- **Time Box:** 3 min

---

## Slide 41
- **Type:** Answer Key
- **Badge:** ANSWER KEY
- **Title:** Output Format — Answers
- **Answer Table:**

  | # | Task | Best Format |
  |---|------|-------------|
  | 1 | Comparing performance across 5 shifts | Table |
  | 2 | New hire onboarding steps | Checklist |
  | 3 | Weekly summary for your VP | Report |
  | 4 | Knowledge base article on equipment maintenance | Markdown |
  | 5 | Audit preparation items | Checklist |
  | 6 | Model comparison scorecard | Table |
  | 7 | Safety incident briefing for leadership | Report |
  | 8 | SOP for end-of-shift procedures | Checklist |

- **Footer:** Tables for comparison. Checklists for steps. Reports for leadership. Markdown for docs.

---

## Slide 42
- **Type:** Content
- **Title:** Template Output Patterns
- **Bullets:**
  - **Fill-in-the-blank:** "Generate a [REPORT TYPE] for [AUDIENCE] covering [TOPIC]"
  - **Standardized headers:** "Use these exact section headers: Summary, Findings, Actions, Timeline"
  - **Word/length limits:** "Keep each section under 50 words" or "Total under 200 words"
  - **Tone matching:** "Match the tone of this example: [paste example]"
  - **Output chaining:** Use one AI output as input for the next prompt
- **Example box:**
  - Input: "Summarize this meeting in exactly 3 bullet points, each under 20 words"
  - Result: Concise, consistent, ready to paste into Slack
- **Footer:** Structured outputs save editing time — the AI does the formatting, you verify the content

---

## Slide 43
- **Type:** Divider
- **Section Number:** 07
- **Section Title:** Building Your Personal Prompt Library
- **Duration:** 20 min

---

## Slide 44
- **Type:** Grid
- **Title:** Organizing Prompts by Use Case
- **Layout:** 3 columns
- **Column 1 — Daily Tasks:**
  - Standup summary
  - Email drafts
  - Schedule review
  - Quick data checks
- **Column 2 — Weekly Tasks:**
  - KPI narratives
  - Labor planning
  - Safety reviews
  - Vendor updates
- **Column 3 — Monthly/Ad-hoc:**
  - Root cause analysis
  - Executive presentations
  - SOP creation
  - Training materials
- **Footer:** Aim for 10+ prompts by end of Week 2. Target: 20+ by course end.

---

## Slide 45
- **Type:** Exercise
- **Badge:** WORKSHOP
- **Title:** Build Your Prompt Playbook
- **Time Box:** 20 minutes
- **Instructions:**
  1. Open a new document (or Bottle Rocket chat)
  2. Organize your prompts from today into categories (daily/weekly/monthly)
  3. For each prompt: add a title, when to use it, and the full template
  4. Version your best prompts: note what you changed and why
  5. Identify 2-3 prompts to share with a peer AGM
- **Tips panel:**
  - Save prompts where you'll find them (OneNote, email draft, shared doc)
  - Name prompts clearly: "Weekly KPI Narrative - CoT" not "Prompt 3"
  - Track which prompts save the most time

---

## Slide 46
- **Type:** Comparison
- **Badge:** ACTIVITY C
- **Title:** Template Structure Guide — Build Your Own
- **Left Column — Essential Elements:**
  - ROLE with specific expertise
  - CONTEXT with [PLACEHOLDERS]
  - TASK with technique (CoT, Few-Shot)
  - FORMAT with constraints
- **Right Column — Live Build Example:**
  - Pick a task you do weekly
  - Write each component now
  - Test in Bottle Rocket
  - Refine until output is work-ready
- **Footer:** Your best template is the one you'll actually use tomorrow

---

## Slide 47
- **Type:** Grid
- **Title:** Prompt Library Quick Reference — All 10 Use Cases
- **Layout:** 5x2 compact grid
- **Row 1:**
  - Standup Summary (Daily)
  - Email Draft (Daily)
  - Shift Handoff (Daily)
  - Data Quick Check (Daily)
  - Schedule Review (Daily)
- **Row 2:**
  - KPI Narrative (Weekly)
  - Labor Planning (Weekly)
  - Vendor Communication (Weekly)
  - Safety Root Cause (Monthly)
  - SOP Creation (Monthly)
- **Footer:** Your prompt library compounds productivity over time

---

## Slide 48
- **Type:** Divider
- **Section Number:** 08
- **Section Title:** Model Comparison Challenge
- **Duration:** 20 min

---

## Slide 49
- **Type:** Grid
- **Title:** Model Selection Guide
- **Layout:** 3 columns (model cards)
- **Card 1 — Claude:**
  - Strengths: Best writing style, follows complex instructions
  - Best for: Email drafts, detailed analysis, long-form reports
- **Card 2 — Gemini:**
  - Strengths: 1M token context, fast responses
  - Best for: Large documents, quick analysis, multimodal (images)
- **Card 3 — Grok:**
  - Strengths: Real-time data access, mathematical reasoning
  - Best for: Live information, calculations, trend analysis
- **Footer:** Start with default (Qwen 3 30B). Switch when you need specific strengths.

---

## Slide 50
- **Type:** Exercise
- **Badge:** EXERCISE 4
- **Title:** Model Comparison Challenge
- **Time Box:** 20 minutes
- **Instructions:**
  1. Select your best template from Exercise 2
  2. Run it on your default model (Qwen 3 30B)
  3. Run the same prompt on a different model (Claude, Gemini, or Grok)
  4. Compare using the scorecard
- **Scorecard table:**
  - Criteria: Speed, Format adherence, Content quality, Instruction following
  - Columns: Model 1: ___, Model 2: ___
  - Winner row at bottom
- **Discussion questions panel:**
  - Which was faster?
  - Which followed instructions better?
  - Would you switch models for this task?

---

## Slide 51
- **Type:** Exercise Template
- **Badge:** EXERCISE 4 TEMPLATE
- **Title:** Model Comparison Scorecard
- **Layout:** Fillable scorecard
- **Table:**

  | Criteria | Model 1: _______ | Model 2: _______ |
  |----------|------------------|------------------|
  | Speed (seconds) | | |
  | Format adherence (1-5) | | |
  | Content quality (1-5) | | |
  | Instruction following (1-5) | | |
  | Specificity (1-5) | | |
  | **Total Score** | | |
  | **Winner for this task** | [ ] | [ ] |

- **Tip Box:** Run the EXACT same prompt on both models for fair comparison
- **Footer:** Different models excel at different tasks — test to find your match

---

## Slide 52
- **Type:** Content
- **Title:** Model Selection Decision Tree
- **Layout:** Flowchart/decision tree
- **Decision Points:**
  - Start: What type of task?
  - Branch 1: Writing/Communication → Claude
  - Branch 2: Data Analysis/Math → Grok
  - Branch 3: Long Document → Gemini
  - Branch 4: Quick Answer → Qwen 3 30B (default)
  - Branch 5: Image Analysis → Gemini
- **Footer:** When in doubt, start with default. Switch if output doesn't meet needs.

---

## Slide 53
- **Type:** Content
- **Title:** Share & Discuss — Cross-DC Templates
- **Layout:** Discussion framework
- **Bullets:**
  - Share your best template with the group (2-3 volunteers)
  - What technique made the biggest difference? (CoT, Few-Shot, Persona)
  - Which model surprised you in the comparison?
  - What will you use first at work tomorrow?
- **Callout box:** "Among frequent AI users, 27% save 9+ hours per week. Your template library is the key."
- **Footer:** Cross-pollinate: a template that works at Tampa may solve a problem at Greenville

---

## Slide 54
- **Type:** Summary
- **Title:** Week 2 Key Takeaways — Part 1
- **Layout:** 3 large cards
- **Takeaway 1:**
  - Number: 01
  - Icon: Chain link
  - Text: Chain-of-thought prompting forces step-by-step reasoning — turning vague questions into structured analysis
- **Takeaway 2:**
  - Number: 02
  - Icon: Copy/examples
  - Text: Few-shot examples (2-5) teach AI your exact output format — no more guessing
- **Takeaway 3:**
  - Number: 03
  - Icon: Data chart
  - Text: AI can analyze your DC data in minutes — trends, outliers, and executive summaries from raw numbers

---

## Slide 55
- **Type:** Summary
- **Title:** Week 2 Key Takeaways — Part 2
- **Layout:** 3 large cards
- **Takeaway 4:**
  - Number: 04
  - Icon: Library/folder
  - Text: Your prompt library is your competitive edge — organize, version, and share templates across DCs
- **Takeaway 5:**
  - Number: 05
  - Icon: Comparison
  - Text: Different models have different strengths — match the model to the task for best results
- **Takeaway 6:**
  - Number: 06
  - Icon: Warning triangle
  - Text: AI hallucinates confidently — always verify statistics, sources, and policy references
- **Footer:**
  - Target: 20-30 min/day savings this week
  - Next week: VS Code, GitHub Copilot & Agent Mode

---

## Slide 56
- **Type:** Content
- **Title:** Homework & Time Tracking
- **Layout:** Two columns
- **Left column — Homework (~45 min):**
  - Build 2 additional operations templates (CoT or Few-Shot)
  - Track time savings daily (target: 20-30 min/day)
  - Bring a real dataset from your DC to Week 3
  - Continue building prompt library (target: 10+ prompts)
- **Right column — Time Savings Log (Week 2):**
  - Table with columns: Task, Without AI, With AI, Saved
  - Rows: Labor planning, Incident analysis, Leadership update, Weekly Total
- **Footer:** Next Week: VS Code, GitHub Copilot & Agent Mode | Bottle Rocket: go.tesla.com/chat

---

## Slide 57
- **Type:** Content
- **Title:** Next Week Preview — Developer Tools
- **Layout:** 3 preview cards
- **Card 1 — VS Code Setup:**
  - Your new development environment
  - Extensions and configuration
- **Card 2 — GitHub Copilot:**
  - AI pair programming
  - Code generation from prompts
- **Card 3 — Agent Mode:**
  - Multi-step AI automation
  - Building your first agent
- **Callout:** Week 3 is where prompts become programs
- **Footer:** Bring your laptop with Bottle Rocket access | See you next week!

---

## Slide Distribution Summary

| Section | Slides | Slide Numbers |
|---------|--------|---------------|
| Title + Agenda | 2 | 01-02 |
| Section 1: Homework Review | 2 | 03-04 |
| Section 2: Advanced Prompting | 6 | 05-11 (includes technique quiz + answers) |
| Exercise 1: CoT Analysis | 4 | 12-15 (includes template + comparison + good output) |
| Section 3: Operations Use Cases | 2 | 16-17 |
| Exercise 2: Templates | 4 | 18-21 (includes 3 category templates) |
| Section 4: Power Automate | 3 | 22-24 |
| Break 1 | 1 | 25 |
| Section 5: Data Analysis | 5 | 26-30 (includes quiz + answers) |
| Exercise 3: DC Dataset | 3 | 31-33 (includes dataset + template) |
| Activity B: Model Comparison | 1 | 34 |
| Hallucination Hunt | 2 | 35-36 (exercise + answers) |
| Break 2 | 1 | 37 |
| Section 6: Structured Outputs | 5 | 38-42 (includes quiz + answers) |
| Section 7: Prompt Library | 5 | 43-47 (includes workshop + template guide + quick reference) |
| Section 8: Model Comparison | 5 | 48-52 (includes scorecard template + decision tree) |
| Share & Discuss + Takeaways | 3 | 53-55 |
| Homework + Preview | 2 | 56-57 |
| **TOTAL** | **57** | |

**Slide Type Distribution:**
- Title: 1
- Agenda: 1
- Divider: 9
- Content: 14
- Comparison: 5
- Grid: 8
- Exercise: 5
- Exercise Template: 6
- Interactive Quiz: 3
- Answer Key: 4
- Hallucination Hunt: 1
- Summary: 2
- Workshop: 1
- **Total: 57 slides**

**New Slides Added (26 new):**
1. Slide 08: Persona-Based Prompting content
2. Slide 10: Prompting Technique Quiz (Interactive)
3. Slide 11: Prompting Technique Answer Key
4. Slide 13: Exercise 1 Template (CoT)
5. Slide 14: Activity A - Prompt Comparison
6. Slide 15: What Good CoT Output Looks Like
7. Slide 19: Exercise 2 Template - KPI Dashboard
8. Slide 20: Exercise 2 Template - Vendor Communication
9. Slide 21: Exercise 2 Template - Safety 5-Whys
10. Slide 24: Power Automate - Manual vs Automated
11. Slide 25: Break 1 divider
12. Slide 28: Data Analysis Quiz (Interactive)
13. Slide 29: Data Analysis Answer Key
14. Slide 33: Exercise 3 Template (Data Analysis)
15. Slide 34: Activity B - Model Comparison Demo
16. Slide 35: Hallucination Hunt Exercise
17. Slide 36: Hallucination Hunt Answers
18. Slide 37: Break 2 divider
19. Slide 40: Output Format Quiz (Interactive)
20. Slide 41: Output Format Answer Key
21. Slide 46: Activity C - Template Structure Guide
22. Slide 47: Prompt Library Quick Reference (10 prompts)
23. Slide 51: Model Comparison Scorecard Template
24. Slide 52: Model Selection Decision Tree
25. Slide 55: Key Takeaways Part 2
26. Slide 57: Next Week Preview

**Key Patterns Added (matching Week 1 quality):**
- 3 Interactive Quizzes with matching Answer Keys (slides 10-11, 28-29, 40-41)
- 6 Exercise Template slides with copy-paste prompts (slides 13, 19, 20, 21, 33, 51)
- 1 Hallucination Hunt with blank error boxes + answer key (slides 35-36)
- 3 Activity slides for comparison/demo (slides 14, 34, 46)
- 1 Quick Reference grid for prompt library (slide 47)
- 1 Decision tree for model selection (slide 52)
- Split Key Takeaways into 2 slides for visual clarity (slides 54-55)

---

*Slide Plan v3.0 — Week 2: Prompt Engineering & Data Analysis*
*Expanded from 31 to 57 slides to match Week 1 quality standard*
*Designed for 960x540 HTML rendering with Tesla dark theme*
