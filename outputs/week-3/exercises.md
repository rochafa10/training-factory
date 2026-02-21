# Week 3 Exercises: VS Code, Agents & How AI Thinks

**Total Time:** 85 minutes (during session)
**Tools Needed:** VS Code with GitHub Copilot, microphone for voice features, Bottle Rocket (go.tesla.com/chat)
**Difficulty Range:** 5-7 / 10

---

## Skills Progression

### Skills Reinforced (from Weeks 1-2)
- **ROLE + CONTEXT + TASK + FORMAT** - The prompt formula
- **Iteration** - Refining prompts through follow-ups
- **Template customization** - Adapting prompts to specific situations
- **Output evaluation** - Judging AI output quality
- **Chain-of-thought prompting** - Forcing step-by-step reasoning

### Skills Introduced (Week 3)
- **VS Code navigation** - Using a code editor environment
- **GitHub Copilot Chat** - AI assistant within VS Code
- **@ commands** - Directing Copilot to specialists (@workspace, @terminal, @vscode)
- **Voice Mode input** - Hands-free AI interaction (3-5x faster than typing)
- **Agent Mode** - Autonomous task planning and execution
- **ReAct pattern** - Think, Act, Observe, Repeat cycle
- **Plan-Execute-Iterate loop** - Understanding agentic workflows
- **Git diff review** - Reviewing AI-generated changes (green = added, red = removed)
- **Hallucination detection** - Identifying AI-generated false information
- **Agent debugging** - Knowing when to intervene vs let the agent continue

---

## Time Savings Analysis

| Task | Traditional Method | With Week 3 Tools | Savings |
|------|-------------------|-------------------|---------|
| Email drafting | 5-10 min typing | 2-3 min voice | 3-7 min |
| Project setup (5 files) | 15+ min manual | 30 sec agent | ~14 min |
| Template creation | 10-15 min | 1-2 min agent | 8-13 min |
| Change review | Scan files manually | Git diff (visual) | 5-10 min |
| **Per task average** | **10+ min** | **1-3 min** | **~70% faster** |

---

## Exercise 1: Voice + Chat Practice

**Type:** Guided Practice + Template Exercise
**Difficulty:** 5/10
**Time:** 20 minutes
**Tool:** GitHub Copilot (NO Tesla Data)

### Scenario

You have set up VS Code with GitHub Copilot and the Voice extension during Section 2. Now it is time to practice using these tools. You will use @ commands to interact with your workspace, voice chat to talk to Copilot, and voice dictation to create a work document.

**Important Policy Reminder:** GitHub Copilot is CONDITIONALLY APPROVED -- NO Tesla Data. Use placeholders like [INSERT METRICS] for any company-specific information.

### Instructions

**Part A: @ Command Practice (5 min)**

1. Open Copilot Chat (Ctrl+Alt+I)
2. Type: `@workspace What folders exist in this project?`
3. Type: `@terminal create a file called notes.md`
4. Type: `@vscode What keyboard shortcuts are available for Copilot?`

**What to observe:** Each @ command returns a different type of response. @workspace gives file information, @terminal executes a command, @vscode gives editor help.

**Part B: Voice Chat Practice (5 min)**

1. Press Ctrl+U to activate voice chat
2. Say: "What are three things an operations manager could automate using AI?"
3. Wait for the response
4. Press Ctrl+U again
5. Say: "Can you give me more detail on the first one? How would that work in a distribution center?"
6. Press Escape when done

**What to observe:** Voice is fast. You can have a natural back-and-forth conversation. The AI responds to follow-up questions in context.

**Part C: Voice-Dictated Email (10 min)**

**Scenario:** You need to send a weekly performance update to your regional director.

**Step 1:** Open Copilot Chat and activate voice (Ctrl+U)

**Step 2:** Say clearly:
> "Create a professional email to my regional director summarizing our DC's performance this week. Include placeholder sections for metrics, highlights, challenges, and action items. Make it under 200 words."

**Step 3:** Review the output. Read through the generated email and note what works and what needs adjustment.

**Step 4:** Iterate with voice. Press Ctrl+U again and say:
> "Make the tone more concise and add a section for next week's focus areas"

**Step 5:** Save the result. Copy the email to use later, or save it as a template.

### What Good Output Looks Like

**@ Commands:**
- @workspace returns a list of folders in your project
- @terminal shows the command being executed and confirms file creation
- @vscode provides a list of keyboard shortcuts for Copilot

**Voice Email Draft:**
```
Subject: Weekly Performance Update - [DC Name] - Week of [Date]

Hi [Name],

[Opening summary sentence]

Metrics:
- [INSERT METRIC 1]
- [INSERT METRIC 2]
- [INSERT METRIC 3]

Highlights:
- [INSERT HIGHLIGHT 1]
- [INSERT HIGHLIGHT 2]

Challenges:
- [INSERT CHALLENGE]

Action Items:
- [ACTION 1]
- [ACTION 2]

Next Week Focus:
- [FOCUS AREA]

[Closing]
```

### Troubleshooting

| Problem | Likely Cause | Solution |
|---------|--------------|----------|
| @ commands not working | No folder open in VS Code | File > Open Folder > select your ai-projects folder |
| Voice not activating | Microphone not enabled | Check Windows Sound Settings > Input; allow VS Code microphone access |
| Speech not recognized | Speaking too fast | Slow down, speak at normal conversational pace |
| Voice input cuts off | Background noise or long sentences | Find quieter location; pause between sentences |
| Copilot not responding | Proxy or VPN blocking | Check VS Code proxy settings (Ctrl+,) |

### Skills Practiced
- @ command usage (@workspace, @terminal, @vscode)
- Voice Mode activation and control
- Voice dictation for work tasks
- Iteration via voice
- Policy compliance (using placeholders for Tesla data)

---

## Exercise 2: Build Your First DC Agent

**Type:** Scenario Challenge
**Difficulty:** 7/10
**Time:** 25 minutes
**Tool:** GitHub Copilot (NO Tesla Data)

### Scenario

Agent Mode can autonomously plan and execute multi-step tasks. Your challenge is to use Agent Mode to build a complete weekly labor planning tool -- something that would take 15-20 minutes manually but takes seconds with an agent.

**Key Concept:** You describe the GOAL, not the steps. The agent figures out how to get there using the ReAct pattern: Think, Act, Observe, Repeat.

### Instructions

**Step 1: Enter Agent Mode**
1. Open Copilot Chat (Ctrl+Alt+I)
2. Click the mode selector dropdown (top of chat panel)
3. Select "Agent" (not "Chat" or "Edit")

**Step 2: Give the Agent Its Goal**

Type or dictate (Ctrl+U) the following:

> "Create a weekly labor planning tool for a distribution center. The project should include:
> 1. A README file explaining what this tool does and how to use it
> 2. A markdown template for weekly labor data that captures headcount by shift (morning, afternoon, night), planned vs actual hours, overtime hours, and open positions
> 3. A sample data file with realistic numbers filled in for one week
> 4. A summary report that analyzes the sample data -- highlight any shifts that are understaffed, flag overtime above 10%, and note trends
> 5. A weekly review checklist that managers can follow every Monday morning
> Put all files in a folder called 'labor-planning'."

**Step 3: Watch the Agent Work**

Observe the ReAct pattern in action:
- **THINK:** Agent announces its plan (what files it will create)
- **ACT:** Agent creates the folder structure and generates each file
- **OBSERVE:** Agent checks that files were created successfully
- **REPEAT:** Agent moves to the next file until the goal is met

**Step 4: Review Each Step**

As the agent works:
- Read each file it creates before clicking "Continue"
- Check that the template has all the fields you asked for
- Verify the sample data looks realistic (but not Tesla-specific)
- Confirm the summary report references the sample data
- Make sure the checklist is practical

**Step 5: Iterate**

After the initial creation, tell the agent:
> "Add a section to the README about how to customize the template for different DC sizes. Also add a column for 'temp workers' in the labor template."

### What Good Output Looks Like

**Folder Structure:**
```
labor-planning/
  README.md           # Explains the tool and how to use it
  template.md         # Blank labor planning template
  sample-data.md      # Filled-in example for one week
  summary-report.md   # Analysis of the sample data
  weekly-checklist.md # Monday morning review checklist
```

**Template Fields:**
- Headcount by shift (morning, afternoon, night)
- Planned vs actual hours
- Overtime hours
- Open positions
- (After iteration) Temp workers column

**Summary Report Contents:**
- References specific numbers from sample-data.md
- Identifies understaffed shifts
- Flags overtime above 10%
- Notes any trends

### Success Criteria

- [ ] Successfully entered Agent Mode (not Chat or Edit mode)
- [ ] Typed or dictated the full goal prompt
- [ ] Agent created 5 files (README, template, sample data, summary, checklist)
- [ ] Reviewed all files for accuracy before approving
- [ ] Successfully iterated with a follow-up request (added temp workers column)
- [ ] Project folder "labor-planning" exists with all files
- [ ] Can describe the ReAct pattern: Think, Act, Observe, Repeat

### Troubleshooting

| Problem | Likely Cause | Solution |
|---------|--------------|----------|
| Agent doesn't activate | Wrong mode selected | Click dropdown at top of chat, select "Agent" explicitly |
| No plan shown | Request too simple | Make request more complex with multiple files |
| Terminal command fails | Permission issue | Run VS Code as administrator, or approve "safe" commands |
| Missing files | Partial execution | Run iteration prompt: "Create the missing [file name]" |
| Agent heading wrong direction | Unclear goal | Type: "Stop. Let's take a different approach. I want..." |
| Files created in wrong location | No folder specified | Be explicit: "Put all files in a folder called 'labor-planning'" |

### Skills Practiced
- Agent Mode activation
- Goal-oriented prompting (destination, not directions)
- ReAct pattern observation (Think, Act, Observe, Repeat)
- Plan review and approval
- Terminal command approval
- Iteration with Agent Mode

---

## Exercise 3: Agent Builds a Tool + Git Review

**Type:** Scenario Challenge
**Difficulty:** 7/10
**Time:** 20 minutes
**Tool:** GitHub Copilot (NO Tesla Data)

### Scenario

This exercise combines agent skills with review skills. You will ask Agent Mode to build a shift handoff template generator, then use the Source Control panel to review exactly what was created. This is the workflow you will use when deploying AI-generated content in your DC.

### Part A: Build the Tool (10 min)

**Step 1: Enter Agent Mode**
Open Copilot Chat, click the mode selector, choose "Agent".

**Step 2: Give the Goal**

Type or dictate:
> "Create a shift handoff system in a folder called 'shift-handoff'. Include:
> 1. A handoff template in markdown that captures: outgoing shift summary (what happened), ongoing issues (what's still in progress), incoming priorities (what to focus on next), safety notes, and staffing for the next shift
> 2. A filled-in sample handoff from a morning shift to an afternoon shift at a distribution center. Use realistic but generic content -- no Tesla-specific data
> 3. A README that explains how managers should use this system and when to fill it out"

**Step 3: Watch and Review**

As the agent works:
- Read each file preview before approving
- Check that the template covers all 5 areas you requested
- Verify the sample uses generic, non-Tesla data
- Confirm the README has clear instructions

### Part B: Review the Diff (10 min)

**Step 1: Open Source Control**
Press Ctrl+Shift+G or click the Source Control icon in the left sidebar.

**Step 2: Examine Each File**
- Click each file in the list to see its full contents
- For the template: verify all 5 sections exist (outgoing summary, ongoing issues, incoming priorities, safety, staffing)
- For the sample: check that the data is realistic but not Tesla-specific
- For the README: confirm it includes clear usage instructions

**Step 3: Practice Accept/Reject**
- Right-click one file and select "Stage Changes" (accept)
- Open the sample handoff, find one thing you would change
- Make a manual edit to improve it
- See the diff update to show your change (red = what was there, green = your version)

**Step 4: Ask Copilot for Help**
If anything is unclear, ask Copilot Chat:
> "Explain the structure of the file shift-handoff/template.md"

### Git Commands Quick Reference

| Action | How to Do It |
|--------|--------------|
| Open Source Control | Ctrl+Shift+G or click branching icon in sidebar |
| See what changed | Click any file in the Source Control list |
| Accept a file | Right-click file > "Stage Changes" |
| Reject a file | Right-click file > "Discard Changes" |
| Understand a file | Ask Copilot: "Explain what [filename] does" |

### What Good Output Looks Like

**Reading a Diff:**
```
GREEN lines  = text that was ADDED (new content)
RED lines    = text that was REMOVED (deleted content)
GRAY lines   = text that stayed THE SAME (context)
```

**Folder Structure:**
```
shift-handoff/
  template.md    # Blank handoff template with 5 sections
  sample.md      # Filled-in example (morning to afternoon)
  README.md      # Usage instructions
```

### Success Criteria

- [ ] Agent created the shift-handoff folder with 3 files
- [ ] Reviewed all 3 files in Source Control
- [ ] Identified the 5 sections in the template
- [ ] Verified sample data is non-Tesla-specific
- [ ] Successfully staged at least one file (accepted it)
- [ ] Made a manual edit and saw the updated diff
- [ ] Can explain the difference between green lines and red lines

### Troubleshooting

| Problem | Likely Cause | Solution |
|---------|--------------|----------|
| Source Control panel empty | No changes made | Agent may not have created files; re-run with clearer prompt |
| Can't find diff view | Clicked wrong button | Click the file NAME in Source Control, not the icon |
| Accidentally discarded everything | Clicked "Discard All" | Re-run the agent prompt; be more careful next time |
| Changes not showing | Files not saved | Save all files (Ctrl+Shift+S) then check Source Control |
| Don't understand what agent created | Complex output | Ask Copilot Chat: "Explain what [filename] does" |

### Skills Practiced
- Agent Mode for file creation
- Git diff review (green = added, red = removed)
- Accepting and rejecting changes
- Manual editing after agent completion
- Using Copilot to explain unfamiliar content

---

## Exercise 4: Spot the Mistakes

**Type:** Scenario Challenge
**Difficulty:** 6/10
**Time:** 20 minutes
**Tool:** Bottle Rocket and Copilot outputs (review exercise)

### Scenario

AI is powerful, but it makes mistakes. The best way to learn to catch AI mistakes is to practice finding them. Below are three AI-generated outputs with deliberately embedded errors. Your job is to find every mistake.

**The Three Types of AI Mistakes:**
1. **Hallucination:** Making up facts (invented statistics, fake citations, non-existent files)
2. **Drift:** Starting right then wandering off (scope creep, adding unrequested features)
3. **Over-Confidence:** Presenting guesses as facts (words like "always," "confirms," "guarantees")

### Instructions

1. **Individual work (10 min):** Read all three outputs below. List every error you find. Write them down.
2. **Partner discussion (5 min):** Compare your findings with the person next to you. Did they catch anything you missed?
3. **Group debrief (5 min):** Review the answers as a group.

---

### Output 1: Email Draft (Find 4 Errors)

> **Subject: Weekly Performance Update -- Tampa DC**
>
> Hi Sarah,
>
> Great week at Tampa. Here are the highlights:
>
> **Metrics:**
> - On-time delivery: 98.2% (above the industry average of 99.7%)
> - Headcount: 47 associates across 3 shifts
> - Overtime: 12.3% of total hours (within target)
>
> **Highlights:**
> - Completed Q4 safety training for all associates
> - New conveyor system installation is 80% complete
>
> **Challenges:**
> - Tuesday night shift was understaffed by 3 associates due to call-outs
> - According to the 2025 OSHA Warehouse Safety Report, our incident rate is below the national average of 4.2 per 100 workers
>
> **Action Items:**
> - Finalize conveyor installation by EOW
> - Schedule follow-up with maintenance vendor
>
> Best regards,
> [AGM Name]

---

### Output 2: Data Analysis (Find 3 Errors)

> **Weekly Productivity Analysis -- Week 4**
>
> **Summary:** Productivity improved significantly this week. Units per labor hour (UPLH) increased from 12.4 to 14.1, representing a 13.7% improvement.
>
> **Trend Analysis:**
> - Week 1: 13.2 UPLH
> - Week 2: 12.8 UPLH
> - Week 3: 12.4 UPLH
> - Week 4: 14.1 UPLH
>
> **Key Insight:** The strong correlation between the new conveyor system installation (completed Week 3) and the Week 4 productivity jump confirms that capital equipment investment directly drives throughput improvements.
>
> **Recommendation:** Based on this data, investing in a second conveyor line would yield approximately 13-15% additional improvement, saving an estimated $47,000 in annual labor costs.

---

### Output 3: Agent-Generated Report (Find 3 Errors)

> **Staffing Optimization Report**
>
> Based on my analysis of `staffing-data-2025.csv` and `shift-schedule-q4.xlsx`, here are my findings:
>
> **Current State:**
> - Average daily headcount: 43 associates
> - Night shift consistently understaffed by 2-3 workers
> - Morning shift has 15% excess capacity
>
> **Recommendation:**
> - Redistribute 2 associates from morning to night shift
> - Hire 1 additional part-time worker for night coverage
> - This will reduce overtime by 22% and improve night shift UPLH by 18%
>
> **Data Quality Note:**
> All metrics validated against industry benchmarks from the National Warehousing Association (NWA) 2025 Annual Report.

---

### Answer Key (For Facilitator)

**Output 1 Errors:**
1. **Hallucinated statistic:** "Industry average of 99.7%" is made up. No source was provided.
2. **Contradictory logic:** 98.2% is described as "above" 99.7%, but 98.2% is BELOW 99.7%. Math error.
3. **Fake citation:** "2025 OSHA Warehouse Safety Report" may not exist. The AI generated a plausible-sounding source.
4. **Over-specific metrics without data:** Numbers like 98.2%, 47, 12.3%, and "3 associates" are all potentially hallucinated if no real data was provided.

**Output 2 Errors:**
1. **Misinterpreted trend:** Weeks 1-3 show DECLINING productivity (13.2 > 12.8 > 12.4). Calling this "improved significantly" ignores 3 weeks of decline.
2. **Invented correlation:** "Confirms" is over-confident. Correlation does not equal causation. Many factors could explain Week 4's improvement.
3. **Fabricated financial projection:** "$47,000 in annual labor costs" is invented. The AI has no basis for this specific number.

**Output 3 Errors:**
1. **References files that may not exist:** `staffing-data-2025.csv` and `shift-schedule-q4.xlsx` may be fabricated file names. If these files do not exist, all data is fiction.
2. **Fabricated source:** "National Warehousing Association (NWA) 2025 Annual Report" may not exist. Verify before trusting.
3. **Over-precise predictions:** "Reduce overtime by 22%" and "improve UPLH by 18%" are specific percentages with no analytical foundation.

### Success Criteria

- [ ] Found at least 3 of 4 errors in Output 1 (email)
- [ ] Found at least 2 of 3 errors in Output 2 (analysis)
- [ ] Found at least 2 of 3 errors in Output 3 (report)
- [ ] Can explain the difference between hallucination, drift, and over-confidence
- [ ] Can articulate the "trust but verify" principle

### Troubleshooting

| Problem | Likely Cause | Solution |
|---------|--------------|----------|
| Missed obvious errors | Reading too quickly | Slow down; check every number and citation |
| Found errors that aren't listed | Over-analysis is fine | Some additional issues may be valid; discuss with group |
| Confused about error types | Types overlap sometimes | Focus on the main issue: is it made up, off-topic, or too certain? |
| Partner found more errors | Different perspectives | This is the point -- multiple reviewers catch more issues |

### Key Takeaway

**AI is your first draft, not your final answer.** Every number needs verification. Every citation needs checking. Every recommendation needs your judgment. The AI generates the starting point. You provide the quality control.

### Skills Practiced
- Hallucination detection (identifying made-up facts)
- Recognizing over-confident language
- Verifying citations and sources
- Cross-checking numbers with provided data
- "Trust but verify" mindset

---

## Reflection Questions

After completing the exercises, consider:

1. **Which was harder: typing prompts or speaking them?**
   - What would help you get more comfortable with voice?

2. **What surprised you about Agent Mode?**
   - What else could you automate with it?

3. **How confident are you reviewing AI changes in git?**
   - What would make you feel more confident?

4. **Which AI mistakes are you most likely to miss?**
   - Hallucinations? Drift? Over-confidence?

5. **How does your verification process change after this week?**
   - What will you check that you didn't check before?

---

## Homework Extension

Continue practicing after the session:

### Part 1: Agent Workflows (~20 min)

Build 2 agent workflows using Copilot Agent Mode:

**Workflow 1 -- Meeting Prep Kit:**
> "Create a meeting preparation system in a folder called 'meeting-prep'. Include: a meeting agenda template, a pre-meeting checklist, a notes template with action items section, and a follow-up email template."

**Workflow 2 -- Incident Report System:**
> "Create an incident report system in a folder called 'incident-reports'. Include: a blank incident report template that captures date, time, location, description, root cause, and corrective actions. Also include a sample filled-in report and a tracking spreadsheet template."

For each workflow, review the agent's output using Source Control. Note what the agent did well and what you would change.

### Part 2: Personal Project Development (~25 min)

Continue your personal automation project from the project options:
1. Use Agent Mode to build at least one component of your project
2. Review the changes using Source Control
3. Iterate at least once to improve the output
4. **Bring your project ready for the Week 4 showcase**

### Time Savings Tracking Log

| Task | Without AI | With AI | Saved |
|------|------------|---------|-------|
| Email drafting (typing) | ___ min | ___ min (voice) | ___ min |
| Project setup (files) | ___ min | ___ min (agent) | ___ min |
| Template creation | ___ min | ___ min (agent) | ___ min |
| Report review | ___ min | ___ min (diff) | ___ min |
| **Weekly Total** | | | **___ min** |

---

## Weekly Skill Checklist

By the end of Week 3, you should be able to:

**Voice & Chat:**
- [ ] Use @workspace to search project files
- [ ] Use @terminal to execute commands
- [ ] Use @vscode to control the editor
- [ ] Activate voice chat with Ctrl+U
- [ ] Dictate content with Ctrl+Alt+V
- [ ] Hold a multi-turn voice conversation

**Agent Mode:**
- [ ] Switch to Agent Mode in Copilot Chat
- [ ] Write goal-oriented prompts (destination, not directions)
- [ ] Recognize the ReAct pattern (Think, Act, Observe, Repeat)
- [ ] Review and approve agent plans before execution
- [ ] Iterate on agent output with follow-up prompts
- [ ] Know when to intervene vs let the agent continue

**Git Review:**
- [ ] Open Source Control panel (Ctrl+Shift+G)
- [ ] Read a diff (green = added, red = removed)
- [ ] Stage (accept) a file
- [ ] Discard (reject) a file
- [ ] Make manual edits after agent completion

**Critical Evaluation:**
- [ ] Identify hallucinated statistics
- [ ] Spot fake citations
- [ ] Recognize over-confident language
- [ ] Apply "trust but verify" to all AI output
- [ ] Know when AI needs your data vs when it is guessing

---

## Exercise Validation Log

| Exercise | Difficulty | Validation Notes | Feasible? |
|----------|------------|------------------|-----------|
| Exercise 1: Voice + Chat Practice | 5/10 | Assumes VS Code setup completed in Section 2. Progressive skill building: @ commands, voice chat, voice dictation. Real-world email task. | Yes |
| Exercise 2: Build Your First DC Agent | 7/10 | Multi-step agent task. Teaches ReAct pattern observation. Clear goal prompt provided. Iteration required. May need facilitator help for first-time agent users. | Yes |
| Exercise 3: Agent Builds Tool + Git Review | 7/10 | Combines agent skills with review skills. Git diff practice. Stage/discard workflow. Realistic DC use case (shift handoff). | Yes |
| Exercise 4: Spot the Mistakes | 6/10 | Critical evaluation exercise. Three AI outputs with embedded errors. Individual + partner + group structure. Answer key for facilitator. Teaches hallucination detection. | Yes |

---

## Quality Checklist

| Check | Requirement | Status |
|-------|-------------|--------|
| Exercise count | 4 exercises | PASS |
| Difficulty range | Within week's calibration (5-7) | PASS -- Range: 5-7 |
| Exercise mix | Guided + Template + Challenge | PASS -- 1 mixed, 2 challenge, 1 evaluation |
| Tool coverage | Correct tool per exercise | PASS -- Copilot for Ex 1-3, review for Ex 4 |
| Troubleshooting | 3+ issues per exercise | PASS -- 5 per exercise |
| Time realistic | Total = 85 min | PASS -- 20+25+20+20 = 85 min |
| Skills tracked | Reinforce + Introduce documented | PASS -- 5 reinforced, 10 introduced |
| Time Savings Analysis | Table with estimates | PASS |
| Weekly Skill Checklist | End-of-week competencies | PASS |

---

*Exercises designed for Week 3: VS Code, Agents & How AI Thinks*
*Primary Tools: GitHub Copilot (NO Tesla Data), Bottle Rocket (Tesla Data OK)*
*Difficulty Focus: Intermediate+ (5-7/10)*
*Total Exercise Time: 85 minutes*
