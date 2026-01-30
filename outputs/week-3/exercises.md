# Week 3 Exercises: GitHub Copilot, Voice Mode & Agent Fundamentals

**Total Time:** 70 minutes (during session)
**Tools Needed:** VS Code with GitHub Copilot, microphone
**Difficulty Range:** 5-7 / 10

---

## Skills Progression

### Skills Reinforced (from Weeks 1-2)
- **ROLE + CONTEXT + TASK + FORMAT** - The prompt formula
- **Iteration** - Refining prompts through follow-ups
- **Template customization** - Adapting prompts to specific situations
- **Output evaluation** - Judging AI output quality

### Skills Introduced (Week 3)
- **VS Code navigation** - Using a code editor environment
- **GitHub Copilot Chat** - AI assistant within VS Code
- **@ commands** - Directing Copilot to specialists (@workspace, @terminal, @vscode)
- **Voice Mode input** - Hands-free AI interaction
- **Agent Mode** - Autonomous task planning and execution
- **Plan-Execute-Iterate loop** - Understanding agentic workflows

---

## Exercise 1: VS Code + GitHub Copilot Setup

**Type:** Guided Practice
**Difficulty:** 5/10
**Time:** 15 minutes
**Tool:** 🟡 GitHub Copilot (NO Tesla Data)

### Scenario

You're setting up your development environment for AI-assisted automation. VS Code with GitHub Copilot will be your platform for voice input, file creation, and Agent Mode tasks throughout Weeks 3 and 4.

### Instructions

1. **Download VS Code** (if not already installed)
   - Go to [code.visualstudio.com](https://code.visualstudio.com/download)
   - Or install from Microsoft Store (Windows)
   - Launch VS Code after installation

2. **Install GitHub Copilot Extensions**
   - Open Extensions panel: Press `Ctrl+Shift+X`
   - Search "GitHub Copilot"
   - Install "GitHub Copilot" extension (by GitHub)
   - Install "GitHub Copilot Chat" extension (by GitHub)

3. **Sign In with Tesla GitHub**
   - Click the Copilot icon in the Status Bar (bottom)
   - Select "Set up Copilot"
   - Sign in with your Tesla GitHub account
   - Approve access if prompted

4. **Verify Installation**
   - Look for Copilot icon in Status Bar (should show active)
   - Open Copilot Chat: Press `Ctrl+Alt+I`
   - Type "Hello, can you help me today?" and press Enter
   - You should receive a friendly response

### What Good Output Looks Like

**Status Bar:** Copilot icon visible and not showing errors
**Chat Panel:** Open on the right side with your message and AI response
**Response:** Friendly acknowledgment from Copilot

### Troubleshooting

| Problem | Likely Cause | Solution |
|---------|--------------|----------|
| Can't sign in | SSO/network issues | Sign out of browser GitHub, try again |
| No Copilot icon | Extension not installed | Search "GitHub Copilot" in Extensions panel |
| Auth loops repeatedly | Old cookies | Sign out everywhere, clear browser cache |
| Spinning/timeout on response | Proxy or VPN blocking | Check VS Code proxy settings (Ctrl+,) |

### Skills Practiced
- VS Code navigation
- Extension installation
- GitHub authentication
- Copilot Chat basics

---

## Exercise 2: Voice Mode Setup & Practice

**Type:** Template Exercise
**Difficulty:** 5/10
**Time:** 15 minutes
**Tool:** 🟡 GitHub Copilot (NO Tesla Data)

### Scenario

Voice input lets you speak 3-5 times faster than you type. You're setting up VS Code Speech extension to enable hands-free AI interaction—a key skill for rapid automation work.

### Instructions

**Part A: Install Voice Mode**

1. Open Extensions panel: Press `Ctrl+Shift+X`
2. Search "VS Code Speech"
3. Install the extension
4. Reload VS Code if prompted

**Part B: Configure Voice Settings**

1. Open Settings: Press `Ctrl+,`
2. Search "accessibility.voice"
3. (Optional) Enable "Hey Code" wake word for hands-free activation
4. Look for microphone icon in the status bar

**Part C: Practice Voice Input**

Try each voice command:

| Action | Shortcut | What to Say |
|--------|----------|-------------|
| Voice Chat | `Ctrl+U` | "Hello, can you hear me?" |
| Editor Dictation | `Ctrl+Alt+V` | "Create a list of three priorities for today" |
| Stop Dictation | `Escape` | (stops listening) |

### Practice Prompts (Voice Input)

**Prompt 1:** Press `Ctrl+U` and say:
```
"What are the @ commands available in Copilot Chat and what does each one do?"
```

**Prompt 2:** Create a new file (`Ctrl+N`), then press `Ctrl+Alt+V` and say:
```
"Write a paragraph describing what I learned about AI tools in this training so far"
```

**Prompt 3:** In Copilot Chat, press `Ctrl+U` and say:
```
"Help me create a checklist for my morning routine at the distribution center"
```

### Success Criteria

- [ ] VS Code Speech extension installed
- [ ] Microphone icon visible in status bar
- [ ] Successfully dictated at least one prompt using `Ctrl+U`
- [ ] Successfully dictated text into editor using `Ctrl+Alt+V`
- [ ] Received helpful responses from Copilot

### Troubleshooting

| Problem | Likely Cause | Solution |
|---------|--------------|----------|
| No microphone icon | Extension not installed | Reinstall VS Code Speech |
| "No microphone found" | System permissions | Allow VS Code microphone access in system settings |
| Speech not recognized | Speaking too fast | Slow down, speak clearly at normal pace |
| Voice input cuts off | Background noise | Find quieter location, use headset mic |

### Skills Practiced
- Voice Mode setup
- VS Code Speech configuration
- Voice command shortcuts
- Hands-free AI interaction

---

## Exercise 3: Voice-Dictated Email Draft

**Type:** Template Exercise
**Difficulty:** 6/10
**Time:** 15 minutes
**Tool:** 🟡 GitHub Copilot (NO Tesla Data)

### Scenario

You need to draft a performance update email to your regional director. Instead of typing, you'll use voice dictation to create a professional email in a fraction of the time.

**Important:** Use placeholders like [INSERT METRICS] for any Tesla-specific data. Fill in real data later using Bottle Rocket or manually.

### Instructions

1. **Open Copilot Chat:** Press `Ctrl+Alt+I`
2. **Activate Voice:** Press `Ctrl+U`
3. **Dictate Your Request:** Say clearly (modify as needed):

```
"Create a professional email to my regional director summarizing our DC's performance this week. Include placeholder sections for: key metrics, top highlights, challenges we faced, and action items for next week. Make it under 200 words and keep the tone professional but conversational."
```

4. **Review the Output:** Read through the generated email
5. **Iterate with Voice:** Press `Ctrl+U` again and say:

```
"Make the tone more concise and add a section for next week's focus areas"
```

6. **Save the Result:** Copy to clipboard or save as a template

### Email Template (Reference)

Your output should include sections similar to:

```
Subject: Weekly Performance Update - [DC Name] - Week of [Date]

Hi [Name],

[Opening summary sentence]

Key Metrics:
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

### Success Criteria

- [ ] Successfully dictated initial request via voice
- [ ] Received structured email with all requested sections
- [ ] Used voice to iterate and refine the output
- [ ] Final output is work-ready (with placeholders for Tesla data)
- [ ] Completed in under 5 minutes

### Time Savings Comparison

| Method | Typical Time |
|--------|--------------|
| Traditional typing | 5-10 minutes |
| Voice + Copilot | 2-3 minutes |
| **Savings** | **3-7 minutes per email** |

### Troubleshooting

| Problem | Likely Cause | Solution |
|---------|--------------|----------|
| Email too formal | No tone guidance | Add "professional but conversational" to prompt |
| Missing sections | Prompt too vague | Explicitly list all sections you need |
| Too long | No length constraint | Add "under 200 words" to prompt |
| Voice cuts off | Speaking too long | Break into shorter sentences, pause |

### Skills Practiced
- Voice dictation for work tasks
- Iteration via voice
- Template creation
- Time savings awareness

---

## Exercise 4: First Agent Task

**Type:** Scenario Challenge
**Difficulty:** 7/10
**Time:** 20 minutes
**Tool:** 🟡 GitHub Copilot (NO Tesla Data)

### Scenario

Agent Mode can autonomously plan and execute multi-step tasks. Your challenge is to use Agent Mode to create a complete project folder structure for your personal automation project—something that would take 15+ minutes manually.

### Your Task

Use Agent Mode to create a project folder with organized subfolders and a README file. Be specific about what you need.

### Instructions

1. **Switch to Agent Mode**
   - Open Copilot Chat: `Ctrl+Alt+I`
   - Click the mode selector dropdown (top of chat panel)
   - Choose "Agent" (not "Chat" or "Edit")

2. **Describe Your Project**
   Type (or dictate!) something like:

```
Create a project folder called 'my-automation' for a [YOUR PROJECT TYPE] automation. Include:
- A README.md with project description and requirements sections
- A src folder for Python scripts
- A data folder for CSV files
- A config folder for settings files
- A docs folder for documentation
- A .gitignore file with common Python ignores
```

3. **Review the Plan**
   - Read what Agent Mode intends to do
   - Check the proposed folder structure
   - Verify README content looks reasonable

4. **Approve Execution**
   - Click "Continue" or approve the plan
   - Watch as files are created
   - Review any terminal commands before approving

5. **Verify Results**
   - Check that all folders exist in the file explorer
   - Open README.md and review content
   - Verify structure matches your request

6. **Iterate (Challenge)**
   After initial creation, try:
```
Add a tests folder and update the README to mention unit testing
```

### Project Type Suggestions

Choose one for your prompt:
- "KPI dashboard automation"
- "Daily report generator"
- "Email template system"
- "Incident analysis toolkit"
- "Dive deep report automation"

### Hints (if stuck)

<details>
<summary>Hint 1: Mode Selection</summary>
Make sure you're in "Agent" mode, not "Chat" mode. Check the dropdown at the top of the Copilot Chat panel.
</details>

<details>
<summary>Hint 2: Be Specific</summary>
The more specific your request, the better the result. List each folder and file you want explicitly.
</details>

<details>
<summary>Hint 3: Review First</summary>
Always read the plan before clicking "Continue". Make sure it's doing what you expect.
</details>

### Success Criteria

- [ ] Successfully entered Agent Mode
- [ ] Described project requirements clearly
- [ ] Reviewed and approved the plan
- [ ] Project folder structure created
- [ ] README.md contains meaningful project description
- [ ] Successfully iterated to add more content

### Time Savings

| Method | Typical Time |
|--------|--------------|
| Manual creation | 15+ minutes |
| Agent Mode | 30 seconds |
| **Savings** | **~14 minutes** |

### Troubleshooting

| Problem | Likely Cause | Solution |
|---------|--------------|----------|
| Agent doesn't activate | Wrong mode selected | Click dropdown, select "Agent" explicitly |
| No plan shown | Request too simple | Make request more complex with multiple folders |
| Terminal command fails | Permission issue | Run VS Code as administrator, or approve "safe" commands |
| Missing files | Partial execution | Run iteration prompt to add missing items |

### Skills Practiced
- Agent Mode activation
- Task description for autonomous AI
- Plan review and approval
- Terminal command approval
- Iteration with Agent Mode

---

## Reflection Questions

After completing the exercises, consider:

1. **Which was harder: typing prompts or speaking them?**
   - What would help you get more comfortable with voice?

2. **What surprised you about Agent Mode?**
   - What else could you automate with it?

3. **How does Copilot differ from Bottle Rocket?**
   - When would you use each tool?

4. **What's your estimated time savings from today's tools?**
   - Voice input: __ minutes saved per task
   - Agent Mode: __ minutes saved per setup task

---

## Homework Extension

Continue practicing after the session:

### Part 1: Voice Mode Mastery (~20 min)

Complete these voice-dictated tasks:
1. Draft a shift handoff summary using only voice
2. Create a meeting agenda by dictating requirements
3. Generate a root cause analysis template via voice

### Part 2: Personal Project Setup (~25 min)

Using Agent Mode:
1. Ensure your project folder is complete with all necessary subfolders
2. Have the agent expand the README with detailed requirements
3. Create a basic outline of the files you'll need for Week 4

### Time Savings Tracking Log

| Task | Without AI | With AI | Saved |
|------|------------|---------|-------|
| Email drafting (typing) | ___ min | ___ min (voice) | ___ min |
| Meeting agenda | ___ min | ___ min (voice) | ___ min |
| Project setup | ___ min | ___ min (agent) | ___ min |
| **Weekly Total** | | | **___ min** |

---

## Exercise Validation Log

| Exercise | Difficulty | Validation Notes | Feasible? |
|----------|------------|------------------|-----------|
| Exercise 1: VS Code Setup | 5/10 | Step-by-step guided setup. Clear instructions with troubleshooting. Realistic 15-min completion. | ✅ |
| Exercise 2: Voice Mode | 5/10 | Progressive voice commands. Practice prompts provided. Audio setup may need IT help. | ✅ |
| Exercise 3: Voice Email | 6/10 | Real-world task. Template provided. Requires voice comfort. Uses iteration skill. | ✅ |
| Exercise 4: Agent Mode | 7/10 | Challenge level appropriate. Plan review teaches critical evaluation. May need facilitator help. | ✅ |

---

## Quality Checklist

| Check | Requirement | Status |
|-------|-------------|--------|
| Exercise count | 3+ exercises per week | ✅ 4 exercises |
| Difficulty range | Within week's calibration (5-7) | ✅ Range: 5-7 |
| Exercise mix | 30% Guided, 50% Template, 20% Challenge | ✅ 1 Guided, 2 Template, 1 Challenge |
| Tool coverage | Correct tool per exercise | ✅ All Copilot (no Tesla data) |
| Troubleshooting | 3+ issues per exercise | ✅ 4 per exercise |
| Time realistic | Total ≤ 70 min | ✅ 65 min total |
| Skills tracked | Reinforce + Introduce documented | ✅ 4 reinforced, 6 introduced |

---

*Exercises designed for Week 3: GitHub Copilot, Voice Mode & Agent Fundamentals*
*Primary Tool: GitHub Copilot (NO Tesla Data)*
*Difficulty Focus: Intermediate+ (5-7/10)*
