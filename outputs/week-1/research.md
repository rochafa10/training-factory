# Research: Week 1 - AI Foundations & Policy Compliance

## Executive Summary

Week 1 research reveals that successful AI training for non-technical operations managers requires establishing realistic expectations about AI capabilities and limitations, teaching structured prompt engineering frameworks (ROLE + CONTEXT + TASK + FORMAT), and applying adult learning principles that emphasize hands-on practice and immediate relevance. Studies show organizations achieving 20-30% efficiency improvements when implementing proper AI training, while 95% of AI pilots fail due to organizational factors rather than technology.

## Research Methodology

- **Primary tool used:** perplexity_research
- **Verification method:** perplexity_search
- **Sources consulted:** 25+
- **Research date:** January 2026

---

## Key Concepts

### Concept 1: AI Capabilities for Operations Managers

**Definition:** AI tools like large language models (LLMs) are systems that predict likely text continuations based on training patterns. They excel at processing large volumes of data, identifying patterns, and generating human-like text, but do not "think" or "understand" like humans.

**Why it matters:** AGMs need realistic expectations. AI is most effective when positioned as a collaborative tool that handles high-volume, repetitive analytical work while humans focus on strategic decision-making, exception handling, and areas requiring contextual judgment.

**Key Capabilities:**
- Analyzing and summarizing large documents quickly
- Generating draft communications and reports
- Identifying patterns in data
- Answering questions about processes and procedures
- Creating structured outputs from unstructured inputs

**Key Limitations:**
- Cannot reliably explain its own reasoning ("black box" problem)
- Frequently makes overconfident predictions about incorrect information
- Struggles with novel situations outside training data
- Cannot perform reliable arithmetic or formal logic
- May "hallucinate" false information presented confidently

**Source:** Harvard Business School - "AI offers scale and speed, but humans provide judgment, ethics, and experience." (online.hbs.edu)

### Concept 2: The ROLE + CONTEXT + TASK + FORMAT Prompting Framework

**Definition:** A structured approach to writing prompts that dramatically improves AI output quality by explicitly specifying four components in every request.

**Why it matters:** Research shows non-technical users who incorporate all four components obtain outputs rated substantially more helpful, relevant, and actionable than users who simply state their request.

**The Four Components:**

| Component | Purpose | Example |
|-----------|---------|---------|
| **ROLE** | Instructs AI to adopt a specific persona or expertise level | "You are an experienced operations manager at a distribution center." |
| **CONTEXT** | Provides background information the AI needs | "I manage the morning shift at the Tampa DC. Yesterday we processed 2,500 orders with 45 associates." |
| **TASK** | Articulates the specific request or problem | "Create a brief standup summary highlighting yesterday's performance and today's priorities." |
| **FORMAT** | Specifies how the response should be structured | "Use bullet points. Keep it under 200 words. Include: 1) Yesterday's metrics, 2) Key issues, 3) Today's focus areas." |

**Source:** LearnPrompting.org, OpenAI Prompt Engineering Guide, Anthropic Documentation

### Concept 3: Adult Learning Principles (Andragogy)

**Definition:** The theory and practice of adult learning, developed by Malcolm Knowles, which recognizes that adults learn differently from children and require specific instructional approaches.

**Why it matters:** Operations managers are adult learners who bring extensive experience and expect training to connect immediately to their daily work. Training that violates adult learning principles produces compliance but not behavior change.

**Core Principles for AI Training:**

1. **Self-direction:** Adults prefer to take responsibility for their own learning rather than passively receiving standardized content
2. **Immediate application:** Adults learn most effectively when training connects to practical, immediate use cases
3. **Understanding the "why":** Adults require understanding the reasoning behind specific topics and methods
4. **Problem-centered:** Training should be organized around problems (inventory optimization) rather than AI topics (machine learning)
5. **Building on experience:** Effective training positions AI as a tool that augments existing expertise, not replaces it
6. **Intrinsic motivation:** Adults are motivated by improved job performance, not badges or certificates

**Source:** Malcolm Knowles' Andragogy Theory, elearningindustry.com, pasai.org

### Concept 4: Voice Mode in VS Code

**Definition:** VS Code Speech is a Microsoft extension that enables hands-free interaction with GitHub Copilot, allowing users to dictate prompts, questions, and commands using voice instead of typing.

**Why it matters:** Voice Mode enables busy operations managers to interact with AI while handling other tasks, reducing repetitive stress and increasing accessibility. It can be activated in Copilot Chat, inline chat, and the code editor.

**Key Features:**
- Activate with "Hey Code" wake word or keyboard shortcut
- Works in Copilot Chat sidebar, inline chat, and editor
- Supports multiple languages
- Reduces typing strain for extended AI sessions

**Setup Requirements:**
- VS Code installed
- GitHub Copilot extension
- VS Code Speech extension (from Microsoft)
- Microphone enabled

**Source:** Microsoft VS Code Documentation, VS Code Speech Extension documentation

---

## Best Practices

### 1. Start with Clear Objectives

**What:** Define precisely what success looks like before writing prompts
**Why:** Vague goals produce vague results; clarity improves output quality
**How:** Ask yourself: What decisions will outputs inform? What format serves that purpose? What level of detail is appropriate?
**Source:** Lakera.ai Prompt Engineering Guide, OpenAI Best Practices

### 2. Use Action-Oriented Language

**What:** Begin prompts with strong action verbs like "Generate," "Summarize," "Analyze," or "Create"
**Why:** Models respond better to direct commands than soft openings like "Can you..." or "I need..."
**How:** Transform "I need help understanding this report" into "Summarize this report highlighting key metrics and action items"
**Source:** Mirascope.com Prompt Engineering Best Practices

### 3. Provide Examples (Few-Shot Learning)

**What:** Show the AI examples of the desired output before asking it to generate new content
**Why:** Examples dramatically improve consistency and accuracy, reducing hallucination
**How:** Include 1-3 examples of well-structured outputs that match your desired format
**Source:** OpenAI Prompt Engineering Guide, promptingguide.ai

### 4. Iterate Rather Than Perfect

**What:** View your first prompt as a foundation for refinement, not a final product
**Why:** Initial responses often require adjustment; iteration is normal and expected
**How:** Review output, identify gaps, refine with follow-up prompts like "Make it more concise" or "Add a section on risks"
**Source:** Anthropic documentation, Google Cloud prompt engineering guide

### 5. Verify Before Trusting

**What:** Always validate AI outputs, especially for consequential decisions
**Why:** AI systems exhibit "overconfidence" - generating incorrect information with high confidence
**How:** Cross-reference critical facts, verify calculations with other tools, treat outputs as "suggestions requiring validation"
**Source:** Harvard Business School Ethics of AI, unity-connect.com AI Limitations

---

## Real-World Examples

### Example 1: Daily Standup Preparation

**Scenario:** An AGM needs to prepare for the 7 AM standup meeting, summarizing yesterday's performance and today's priorities.

**Without AI (Traditional):** 15-20 minutes manually reviewing reports, compiling notes, formatting talking points

**With AI (Structured Prompt):**
```
ROLE: You are an experienced operations manager at a distribution center.

CONTEXT: I manage the morning shift at the Tampa DC. Yesterday we processed 2,847 orders with 42 associates. We had a conveyor issue from 2-4 PM that caused a 2-hour delay in outbound shipments.

TASK: Create a brief standup summary highlighting yesterday's performance and today's priorities.

FORMAT: Use bullet points. Keep it under 150 words. Include:
1) Yesterday's key metrics
2) Main issue and resolution
3) Today's focus areas
```

**Result:** Draft talking points in 2 minutes, saving 13-18 minutes

**Source:** Synthesized from research on operations AI use cases

### Example 2: Professional Email Drafting

**Scenario:** An AGM needs to send an update to regional leadership about a safety incident.

**Without AI:** 10-15 minutes drafting, reviewing tone, ensuring professionalism

**With AI (Voice Mode):**
1. Activate Voice Mode in VS Code
2. Dictate: "Create a professional email to regional leadership summarizing a near-miss forklift incident that occurred yesterday. Include what happened, immediate actions taken, and preventive measures being implemented. Keep the tone factual and proactive."
3. Review and refine with voice: "Make the tone more concise and add next steps for the team"

**Result:** Professional draft in 3-4 minutes with consistent quality

**Source:** Synthesized from VS Code Voice Mode research and operations use cases

### Example 3: Root Cause Analysis Template

**Scenario:** An AGM needs to analyze why missed shipments increased last week.

**Without AI:** 30+ minutes building analysis framework, identifying factors, structuring report

**With AI (Chain-of-Thought):**
```
ROLE: You are a supply chain analyst specializing in distribution center operations.

CONTEXT: Last week, our DC had 47 missed shipments compared to an average of 12. We had normal staffing levels and no major equipment issues.

TASK: Help me conduct a 5-whys root cause analysis to identify potential causes.

FORMAT:
1. Start with the problem statement
2. Ask "Why?" at each level
3. Identify 3 possible root causes to investigate
4. Suggest data I should pull to validate each cause
```

**Result:** Structured analysis framework in 5 minutes, identifying investigation areas

**Source:** Synthesized from operations AI use cases

---

## Tool-Specific Insights

### Bottle Rocket (Tesla's Approved AI Chat)

- **Access:** go.tesla.com/chat
- **Tesla Data:** Allowed - can use with real performance metrics, employee names, internal processes
- **Models Available:** Grok 3, Grok 4, Claude 4 Sonnet, Claude 4.5 Sonnet, Claude 4 Opus, Gemini 2.5 Pro, Gemini 2.5 Flash
- **Best For:** Daily operations tasks, internal communications, analysis with Tesla data
- **Policy Status:** Fully Approved

**Model Selection Tips:**
| Model | Best For | Speed |
|-------|----------|-------|
| Grok 4 | Complex analysis, nuanced writing | Medium |
| Claude 4.5 Sonnet | Balanced tasks, good reasoning | Fast |
| Gemini 2.5 Flash | Quick answers, simple tasks | Fastest |

*Source: Tesla internal documentation (go.tesla.com/aitools)*

### GitHub Copilot

- **Access:** VS Code extension
- **Tesla Data:** NOT Allowed - use only for generic coding, no internal data
- **Features:** Chat, Edit Mode, Agent Mode, Voice Mode
- **Best For:** Code generation, automation scripts, learning programming concepts
- **Policy Status:** Conditionally Approved

**Key Features in VS Code:**
- **Chat Mode:** Ask questions, get explanations
- **Edit Mode:** Refine and modify code with AI assistance
- **Agent Mode:** Autonomous multi-step task completion
- **Voice Mode:** Hands-free interaction via VS Code Speech extension

*Source: GitHub Copilot Documentation, code.visualstudio.com/docs/copilot*

---

## Common Pitfalls

| Mistake | Why It Happens | How to Avoid | Source |
|---------|----------------|--------------|--------|
| Vague prompts | Assuming AI knows your context | Always include ROLE + CONTEXT | OpenAI Best Practices |
| Asking too much at once | Trying to combine multiple tasks | Break complex requests into sequential prompts | Lakera.ai Guide |
| Trusting without verifying | AI confidence appears authoritative | Treat outputs as suggestions; verify critical info | Harvard Business School |
| No examples provided | Assuming AI knows desired format | Include 1-3 examples of good output | promptingguide.ai |
| Using prohibited tools | Unclear on policy | Use Bottle Rocket for Tesla data; check go.tesla.com/aitools | Tesla AI Policy |
| Expecting perfect first outputs | Misunderstanding AI iteration | View first output as starting point; refine with follow-ups | Anthropic Documentation |
| Overreliance on AI | Treating AI as replacement for judgment | Position AI as augmentation tool; humans make final decisions | MIT Research |

---

## Key Statistics

| Statistic | Value | Source | Verified |
|-----------|-------|--------|----------|
| AI pilot failure rate | 95% fail before production | MIT Generative AI Study (Fortune) | Yes |
| Efficiency improvement with AI training | 20-30% | Centric Consulting | Yes |
| Time saved per week with AI tools | 7.5 hours average | Worklytics 2025 Productivity Benchmarks | Yes |
| Supply chain cost reduction potential | 25-30% (transportation + inventory) | Centric Consulting, SAP Research | Yes |
| Demand forecast accuracy improvement | Up to 75% | SAP AI in Supply Chain | Yes |
| GitHub Copilot Fortune 100 adoption | 90% of Fortune 100 companies | Worklytics 2025 | Yes |
| Time spent fixing AI mistakes | ~1.5 weeks/year for highly engaged employees | CyberNews AI Research | Yes |

---

## Source Verification Log

| # | Fact/Claim | Source | Tool Used | Date | Status |
|---|------------|--------|-----------|------|--------|
| 1 | ROLE+CONTEXT+TASK+FORMAT framework improves output quality | LearnPrompting.org, OpenAI | perplexity_search | Jan 2026 | Verified |
| 2 | 95% of AI pilots fail before production | MIT/Fortune | perplexity_research | Jan 2026 | Verified |
| 3 | Adults learn differently - andragogy principles | Malcolm Knowles, elearningindustry.com | perplexity_research | Jan 2026 | Verified |
| 4 | AI systems exhibit overconfidence on incorrect outputs | Harvard Business School, unity-connect.com | perplexity_research | Jan 2026 | Verified |
| 5 | Voice Mode available via VS Code Speech extension | Microsoft VS Code Docs | perplexity_search | Jan 2026 | Verified |
| 6 | 7.5 hours/week saved with AI tools | Worklytics 2025 Benchmarks | perplexity_research | Jan 2026 | Verified |
| 7 | Chain-of-thought prompting improves reasoning | OpenAI, Lakera.ai | perplexity_search | Jan 2026 | Verified |
| 8 | Few-shot examples improve consistency | OpenAI, promptingguide.ai | perplexity_search | Jan 2026 | Verified |

---

## Full References

1. Harvard Business School. "Ethical Considerations of AI." online.hbs.edu, 2025.
2. OpenAI. "Best Practices for Prompt Engineering." help.openai.com, 2025.
3. LearnPrompting.org. "Prompt Structure Basics." learnprompting.org/docs/basics, 2025.
4. Lakera.ai. "The Ultimate Guide to Prompt Engineering." lakera.ai/blog, December 2025.
5. Microsoft. "GitHub Copilot in VS Code." code.visualstudio.com/docs/copilot, January 2026.
6. Fortune/MIT. "95% of Generative AI Pilots Failing." fortune.com, August 2025.
7. Worklytics. "2025 Productivity Benchmarks: Knowledge Workers." worklytics.co, 2025.
8. Centric Consulting. "How AI Can Drive Supply Chain Savings." centricconsulting.com, 2025.
9. SAP. "AI in Supply Chain Management." sap.com/resources, 2025.
10. University of Wisconsin. "Applied AI for Non-Technical Leaders." continuingeducation.wisc.edu, 2025.
11. elearningindustry.com. "The Adult Learning Theory (Andragogy) of Malcolm Knowles." 2025.
12. GitHub. "Copilot Chat Extension for VS Code." github.com/microsoft/vscode-copilot-chat, 2025.
13. Mirascope. "Prompt Engineering Best Practices." mirascope.com/blog, July 2025.
14. Anthropic. "Economic Index: Task Primitives." anthropic.com/research, 2025.

---

## Policy Reference Summary

### Tesla AI Policy Quick Reference

| Category | Tools | Tesla Data Allowed |
|----------|-------|-------------------|
| Approved | Bottle Rocket, IT Assist, Employee Assist | Yes |
| Conditional | GitHub Copilot, GitHub Copilot CLI | No |
| Prohibited | ChatGPT, Claude.ai, Gemini (external), Meeting transcription, Apple Intelligence | N/A |

**What is "Tesla Data"?**
Any information about Tesla, customers, employees, affiliates, or users including:
- Performance metrics, KPIs
- Employee names, schedules, personal data
- Customer information
- Internal processes, SOPs
- Financial data
- Proprietary code

**Policy Reference:** go.tesla.com/aitools

---

*Research compiled: January 2026*
*Next step: Content creation using Agent 03*
