# Bottle Rocket Documentation Research

> Source: https://docs.bottlerocket.tesla.com (scraped 2026-01-31)

---

## 1. AI Tiers

Source: `/general-information/ai-tiers/`

### Tier 1: AI Chatbots
- Access and deliver information from a **known set** (predefined database, documents, knowledge bases)
- **Retrieval**: Process query into embeddings (RAG)
- **Content Matching**: Find most relevant stored content
- **Response Generation**: Construct answer with minimal processing beyond formatting

### Tier 2: AI Workflows
- Orchestrate data from **multiple sources or services** for nuanced/dynamic questions
- **Query Processing**: NLP to parse and interpret intent
- **System Invocation**: Call external APIs, computational services, multiple internal systems
- **Response Synthesis**: Aggregate answers from multiple sources

### Tier 3: AI Agents
- Actively **manipulate environment** or perform tasks with autonomy and decision-making
- **Perception**: Interpret environment/requests through sensors or digital inputs
- **Decision Making**: Choose actions based on current state, goals, available actions
- **Action Execution**: Automate workflows, control devices, manage tasks
- **Feedback Loop**: Monitor outcomes, adjust future actions, learn

---

## 2. Chat.BottleRocket

Source: `/chat-bottlerocket/overview/` and `/chat-bottlerocket/engineering-notes/`

### What is Chat.BottleRocket?
- Tesla-internal conversational AI chatbot
- **Approved for use with business-sensitive data**
- URL: https://chat.bottlerocket.tesla.com/
- Access automatically granted to all Tesla employees, interns, and contractors

### Features

#### Personas
- Create, view, update, and delete custom AI personas
- Each persona has: **name**, **description**, and **prompt**
- Types:
  - **Custom Persona**: Created and owned by a user
  - **Curated Persona**: System-provided, cannot be edited or deleted
- Best practice: Use one persona per session to avoid mixing prompts/styles
- Refresh page after selecting/editing a persona

#### Enhanced Model Selector
- Choose from multiple AI models for chat tasks
- Model categories:
  - **General-purpose**: Everyday chat, coding, tech support (e.g., "Grok 3")
  - **Large context**: Processing long documents or code (e.g., "Gemini 2.5 Pro")
  - **Technical reasoning**: Complex problem-solving (e.g., "Claude 3.7")
  - **Coding support**: Models with "code proficiency"
- grok4 added in v1.9.34

#### Chat History
- Located at left side of screen
- Models perform better when history is focused on a particular topic
- Saves time by remembering previous context
- **All conversation history deleted after 90 days** (hard requirement)
- Can be disabled in Settings → Personalized Mode

#### File Upload
- Upload files and ask questions about them
- Supports JSON file upload (added v1.9.34)
- Example prompts: "Summarize this PDF", "How much was the total for this quantity of parts?"

#### Web Search
- Added in v1.9.31

#### Release Notes Highlights
- v1.9.41: Added Personas feature
- v1.9.35: Updated context window for some models
- v1.9.34: JSON upload, grok4, optimized context windows
- v1.9.31: Chat history renaming, Web Search
- v1.9.30: Chat history bug fix

### Chrome v142 Note
- Chrome v142 rolling out Nov 24, 2025 requires "Local Network Access" set to "Allow"
- Blocking causes significantly longer load times for all Bottlerocket apps
- Affects: Chat, Veritas, Token Self-Service, Nabu, and others

---

## 3. AI System Prompt Engineering

Source: `/general-information/ai-system-prompt-engineering/`

### What is Prompt Engineering?
- Process of creating and optimizing prompts for AI models
- System prompt directly impacts performance and behavior
- Complex and iterative — requires multiple rounds of testing and refinement
- Users frequently "break" prompts by posing unexpected questions

### General Tips and Best Practices
1. Ensure planned changes don't contradict or override existing instructions in the same prompt
2. Build and maintain a core "test set" of questions to gauge performance
3. Organize testing environments — local dev must match staging/production parameters

### Example Types in System Prompts
- **Zero-shot**: No examples, just instructions
- **One-shot**: One example to show desired output
- **Few-shot**: Multiple (2-5) examples for context
- **Multi-shot**: Many examples (5+) for complex tasks or patterns

> Warning: Too many examples can cause overfitting — model won't generalize well

---

## 4. Tesla Assist / Joule

Source: `/joule/overview/`

### What is Joule?
- **Customer-facing** AI agent for sales and customer support
- Covers both vehicle and energy products
- Integrated into Tesla Assist on January 31, 2025
- Available via tesla.com "Ask a Question" feature

### Capabilities
- Answer product questions
- Request demo drives
- Find nearest Tesla location or Supercharger
- Check specific inventory model availability
- Request to speak with a human agent

### How Joule Works
- **Not "trained"** — fed Tesla-curated content via RAG (Retrieval-Augmented Generation)
- Content sources:
  - Tesla.com product/marketing/support/TRT pages
  - Vehicle owner/service/DIY manuals
  - Temporary custom content written in Markdown

---

## 5. Other Bottle Rocket Chatbots

Source: `/other-chatbots/overview/`

### Chatbots Powered by Bottle Rocket
| Chatbot | URL | Notes |
|---------|-----|-------|
| **Employee Assist** | https://hr.bottlerocket.tesla.com/ | Also in Tesla One mobile app |
| **IT Assist** | https://it.bottlerocket.tesla.com/ | |
| **Energy Industrial Chat** ("Newton") | https://energy.bottlerocket.tesla.com/ | |
| **Energy Technician Chat** ("Calorie") | https://energy-technician.bottlerocket.tesla.com/ | |
| **Investor Relations Chat** | https://ir.bottlerocket.tesla.com/ | |

### How They Work
- All use **Retrieval Augmented Generation (RAG)** to answer questions
- Each chatbot has its own repository of curated content
- Content is **manually updated** without automation
- All content is in **Markdown format**

> Access request: Email DL-Bottlerocket-Admin@tesla.com with justification

---

## 6. Architecture Review Board (ARB)

Source: `/general-information/arb/`

### Key Facts
- **All AI projects at Tesla must go through ARB/SRB review/approval**
- ARB Web Application: https://arbreview.tesla.com/
- 4 review types: 3rd Party, Proof of Concept, Production, API

### Review Timeline
- 3rd-Party Reviews: < 24 hours
- POC Reviews: < 24 hours
- API Reviews: 1-3 days
- Production Reviews: 4-21 days depending on priority (P1/P2/P3)

### Flag System
- **Yellow Flag**: Minor issues, non-blocking (failure to remediate may revoke approval)
- **Red Flag**: Major issues, blocking (significant risk, P1 priority remediation required)

---

## 7. AI Security Summary

Source: `/general-information/ai-security/`

### Key Security Topics Covered

#### LangChain/LangGraph Vulnerabilities
- Prompt Injection / Remote Code Execution (CVE-2023-44467)
- Server-Side Request Forgery (CVE-2023-46229)
- SQL Injection risks
- Data Privacy/Leakage to external LLM providers
- Sensitive error exposure
- Malicious package supply chain attacks

#### MCP (Model Context Protocol) Security Concerns
- Remote Code Execution (CVE-2025-6514, CVSS 9.6)
- Filesystem security vulnerabilities (symlink bypass, directory traversal)
- Supply chain attacks (fake extensions, compromised packages)
- Tool poisoning attacks (hidden instructions in tool descriptions)
- Context poisoning and data exfiltration
- Network exposure without authentication (492 exposed servers found)
- SQL injection in MCP servers
- Command injection (43% of assessed servers vulnerable)
- No concept of least privilege
- Plaintext credential exposure

#### Best Practices for Secure Use
1. Update regularly
2. Sanitize all inputs — never execute LLM-generated code without validation
3. Control data flows — avoid sending sensitive data to external LLMs
4. Audit dependencies for compromised packages
5. Implement guardrails (security gateways, custom error handling, access controls)
6. Conduct regular security reviews

---

## 8. Bottle Rocket Ecosystem Map

```
Bottle Rocket Platform
├── Chat.BottleRocket (go.tesla.com/chat) — General AI chat, Tesla data OK
├── Joule (tesla.com) — Customer-facing sales/support agent
├── Employee Assist (hr.bottlerocket.tesla.com) — HR questions
├── IT Assist (it.bottlerocket.tesla.com) — IT support
├── Energy Industrial Chat "Newton" — Energy division
├── Energy Technician Chat "Calorie" — Energy technicians
├── Investor Relations Chat — IR queries
├── Veritas — (separate product, code snippets available)
├── Uhura — (separate product)
├── Nabu — (document management, content tagging)
└── Doc to Markdown — (document conversion)
```

### AI Tier Classification for Training
- **Chatbots** (Tier 1): Chat.BottleRocket, Employee Assist, IT Assist, Energy chats, IR Chat
- **Workflows** (Tier 2): Multi-source orchestration systems
- **Agents** (Tier 3): Joule (autonomous customer interaction with RAG + actions)

---

## 9. Live App Observations (chat.bottlerocket.tesla.com)

> Captured from live session, 2026-01-31, App version 2.0.5

### UI Layout
- **Dark theme** (black background `#0a0a0a` style)
- Greeting: "Hello [Name]. Welcome to Bottlerocket Chat. Ask me anything."
- **Left sidebar**: New Chat, New Private Chat, Personas, History, Bottlerocket Suite links
- **Main area**: Text input with file upload (paperclip), web search (globe), model selector, persona selector
- **Footer**: "Bottlerocket uses AI, mistakes may occur. Learn more." | Tesla © 2026

### Available Models (as of 2026-01-31)

| Model | Description | Best For |
|-------|-------------|----------|
| **Qwen 3 235B Instruct** | Advanced multilingual MoE with strong coding support | Complex multilingual/coding tasks |
| **Qwen 3 30B** | MoE with strong coding support | Everyday coding tasks (default) |
| **OpenAI GPT OSS 120B** | Large open source reasoning model based on OpenAI architecture | Reasoning tasks |
| **Grok 4** | High-performance thinking model | Deep analysis/thinking |
| **Grok 4 Fast Reasoning** | High-performance thinking model | Fast reasoning tasks |
| **Grok 4 Fast Non Reasoning** | High-performance thinking model | Quick non-reasoning responses |
| **Gemini 3 Pro** | Handles large code/text inputs with high accuracy on math and code | Long documents, math, code |
| **Gemini 2.5 Pro** | Handles large code/text inputs with high accuracy on math and code | Long documents, math, code |

> Note: The docs mention "Claude 3.7" and "Grok 3" but the live app shows newer models. No Claude model visible in current selector.

### Curated Personas (built-in)

| Persona | Description |
|---------|-------------|
| **Feynman** | Breaks down any complex topic into fundamental principles, explaining in simple, intuitive terms |
| **General** | Reliable and knowledgeable partner for a wide range of tasks |
| **The Swiss Army Knife** | Acts like a versatile Swiss Army Knife, selecting the right metaphorical "tool" for the job |
| **The Visionary** | Channels the spirit of an iconic innovator to challenge conventions and drive product excellence |

Users can also **Create New Persona** with custom name, description, and system prompt.

### Input Controls
- **File upload**: Paperclip icon (supports PDF, JSON, and other file types)
- **Web search**: Globe icon — "Retrieve real-time information from the web"
- **Model selector**: Dropdown at right of input bar
- **Persona selector**: Button below input bar or in sidebar
- **Send button**: Disabled until text is entered

### Bottlerocket Suite (sidebar links)
| Product | URL | Description |
|---------|-----|-------------|
| AI Document Extraction | veritas.bottlerocket.tesla.com | Veritas — document processing |
| RAG Agents | nabu.bottlerocket.tesla.com | Nabu — custom RAG agent builder |
| API Documentation | docs.bottlerocket.tesla.com | Developer docs |
| Inference Tokens | tokens.bottlerocket.tesla.com | Token management/self-service |

### Training-Relevant Observations
1. **Default model is Qwen 3 30B** — AGMs will see this by default, no action needed to start chatting
2. **"New Private Chat"** exists as separate option — likely doesn't save to history (important for sensitive topics)
3. **Personas are prominent** in the UI — both sidebar and main area, making them discoverable for beginners
4. **Web search is a toggle** (globe icon) — not on by default, users need to know to activate it
5. **No Claude model currently visible** — docs are outdated on this point; training should reflect actual models available
6. **Chat history is organized** by Today / Last 7 Days / Last 30 Days with "Show All" option
7. **"Bottlerocket uses AI, mistakes may occur"** — built-in disclaimer reinforces the "verify AI output" training message

---

## 10. Nabu — RAG Agents Platform (nabu.bottlerocket.tesla.com)

> Captured from live session, 2026-01-31, Nabu App version 2.1.1

### What is Nabu?
- Platform to **"Manage and create Agents powered by markdown content"**
- Self-service agent builder — any Tesla employee can create a custom RAG agent
- Agents are fed Markdown documents and respond to queries using RAG
- **38 total agents** currently registered on the platform
- Accessible from Chat.BottleRocket sidebar under "Bottlerocket Suite → RAG Agents"

### Agent Lifecycle Statuses
| Status | Meaning |
|--------|---------|
| **Live on Nova** | Active and deployed, accessible via @-tag in Nova Chat |
| **Ready to Deploy** | Built and approved, awaiting deployment |
| **Review In Progress** | Submitted for review, pending approval |
| **Denied** | Review denied, needs changes |
| *(no status)* | Draft/in development |

### Agent Configuration (4 tabs)

1. **Documents** — Upload or create Markdown documents that the agent retrieves from
   - Document versioning (Latest Version, Deployed Version)
   - "Deploy All Latest Documents" button to push updates live
   - Search documents within the agent

2. **Prompt Management** — Write and version the system prompt
   - Multiple prompt versions tracked (Version 1, 2, etc.)
   - Rich text editor for the system prompt
   - "Save As New Version" to iterate on prompts

3. **API Keys** — Programmatic access to the agent

4. **Settings** — Agent configuration:
   - **General**: Name (unique, capitalized), Description (checked for duplication across Nabu)
   - **Access Management**: Admin access by Security Group, "Allow access from Nova Chat" toggle, End User Access groups
   - **Data Classification**: Sensitive / Confidential / Public data type, Personal data (Yes/No)
   - **Danger Zone**: Disable Nova Access, Delete Agent
   - Links to Tesla's Personal Data Handling Policy and Data Classification & Management Policy

5. **Playground** — Interactive testing of the agent (button in top-right)

### Real Tesla Agents (38 total, selected highlights)

#### Operations & Manufacturing
| Agent | Status | Description |
|-------|--------|-------------|
| **5-Why Analysis AI-Agent** | Live on Nova | Systematic root cause analysis using 5-Why methodology |
| **Megafactory_Lathrop_5S** | Live on Nova | Answer 5S questions, auto-generate 5S reports |
| **Megafactory NPI Documents** | Review In Progress | Search all NPI related documents |
| **North Paint** | Live on Nova | Resolve data discrepancies, filter raw data |
| **VMSi** | Ready to Deploy | Vehicle manufacturing specification navigation |
| **Screwing Systems Expert** | Review In Progress | Engineering/purchasing/manufacturing support |
| **Parts-SOP-Generator** | No status | Creates SOPs for Parts Operations North America |
| **(SARC) Strategic Aging Review Council** | Ready to Deploy | Review aging vehicles for leadership/dispatching visibility |
| **Kistler and Rundown Troubleshooting** | Ready to Deploy | Troubleshoot kistler and rundown issues |

#### Sales & Delivery
| Agent | Status | Description |
|-------|--------|-------------|
| **sales** | Live on Nova | Consultative Tesla sales expert (MEDDPICC, value selling, B2B/B2C) |
| **NA-Tesla-Delivery-Advisor-Master-Agent** | Review In Progress | Knowledge base for all Delivery Advisors |
| **Tesla Sales Advisor Master Agent (TSAMA)** | Review In Progress | Knowledge base for all Sales Advisors |
| **Customer Support** | Live on Nova | Answer customer pricing questions |
| **Watt Wizard** | Live on Nova | AI Energy explainer — gas-to-kWh comparisons for Advisors |

#### Engineering & Technical
| Agent | Status | Description |
|-------|--------|-------------|
| **SPARQ Smart Processing Agent** | Live on Nova | Field assistant for manufacturer documentation (valves, transmitters, breakers) |
| **fastener-finder** | Ready to Deploy | Identify correct fasteners from engineering catalogs/BOMs |
| **Spec Master** | No status | Tesla Construction Specification (CSI) reference |
| **FS-fx-docs-agent** | No status | Factory Software FX docs agent |
| **IEC-60529-Agent-Test** | Ready to Deploy | Technical standards reading (IP Testing) |

#### Energy
| Agent | Status | Description |
|-------|--------|-------------|
| **Tesla Electric** | Live on Nova | Assist support team with Tesla Electric topics |

#### Supply Chain & Compliance
| Agent | Status | Description |
|-------|--------|-------------|
| **NODE / Supply Chain Knowledge** | Ready to Deploy | Supply chain training, policies, guidelines from Confluence |
| **Compliance CT agent** | Ready to Deploy | Connecticut vehicle registration tax compliance checker |
| **Automation** | No status | Sourcing information automation |

#### HR & Workplace
| Agent | Status | Description |
|-------|--------|-------------|
| **Workplace Health - Giga Texas** | No status | Work-related injury and workers compensation Q&A |

#### General / Other
| Agent | Status | Description |
|-------|--------|-------------|
| **Tesla GPT** | Live on Nova | Structured responses similar to ChatGPT |
| **Tesla Steve** | Live on Nova | Problem solving and connections |
| **Email automation Test Agent** | No status | Respond to emails and quotes |
| **Image Data Extraction** | Review In Progress | Extract data from measurements encoded in photos |
| **NPI Masterchief** | Ready to Deploy | Go-to resource for all things NPI |
| **Semi notes** | Ready to Deploy | Semi service operations/procedures |
| **Pattern Recognition** | Ready to Deploy | Pattern recognition |
| **ist-ft** | No status | AI agent trained on Inside Tesla course/program data |

### Nova Chat Integration
- Agents with "Allow access from Nova Chat" enabled can be **@-tagged in Nova Chat** (nova.tesla.com)
- This means users can invoke specialized agents directly from their chat interface
- Nova appears to be a newer/enterprise chat platform separate from Chat.BottleRocket

### Training Implications for AGMs
1. **Nabu is a Tier 1 Chatbot builder** — AGMs could propose agents for their distribution centers
2. **Real use cases span every Tesla division** — manufacturing, sales, energy, supply chain, HR, compliance
3. **No-code agent creation** — upload Markdown docs + write a system prompt = working agent
4. **Approval workflow exists** — agents go through review before going "Live on Nova"
5. **Data classification is required** — agents must declare Sensitive/Confidential/Public data handling
6. **Version control on prompts** — demonstrates iterative prompt engineering in practice
7. **5-Why agent is a perfect case study** — directly relevant to ops leaders doing root cause analysis
8. **SPARQ agent shows field worker empowerment** — asking natural language questions about technical docs instead of digging through PDFs
