# Tesla Acceptable Use Policy for AI Tools — Complete Reference

> Source: AI Policy PDF (v2.0, approved April 29, 2025) + Confluence "Approved Software — AI Tools" (last modified Jan 29, 2026)
> Reference URL: https://go.tesla.com/aitools

---

## Purpose

AI Tools (generative AI, LLMs, etc.) can assist with data management, writing/modifying code, and improving workplace efficiency. However, they carry cybersecurity, privacy, and data risks. Improper use can expose Tesla proprietary information, reveal personal data, violate local laws, and/or break third-party confidentiality commitments.

## Scope

Applies to **all Tesla Workers** who have access to Tesla's data, systems, or network. AI Tools used for executing job responsibilities are in scope. AI Tools built by Tesla for commercial use on Tesla products (e.g., Optimus, Autopilot) are **not** in scope.

## Key Rule

**If an AI tool is not explicitly approved, consider it not allowed for use.**

---

## What Is Tesla Data?

For AI purposes, any data that is not publicly available outside Tesla. Remember you have signed a Non-Disclosure Agreement and agreed to protect Tesla Data.

Also see: Data Classification and Management Policy — https://go.tesla.com/datapolicy

---

## Tool Classification System

### Table 1: Tool Types and Tesla Data Permissions

| Tool Type | Tesla Data Allowed in Prompts? |
|-----------|-------------------------------|
| **Tesla Approved Tools** | **Yes** |
| **Conditionally Approved Tools** | **No** (additional restrictions for Tesla Code) |
| **Prohibited Tools** | N/A — do not use |

---

## Approved Tools (Tesla Data = YES)

### Core Tools

| Tool | Tesla Data? | Vehicle Software | Description | URL |
|------|:-----------:|:----------------:|-------------|-----|
| **Bottle Rocket** | Yes | Yes | Tesla Approved general-purpose AI chatbot. All models are approved for use with Tesla Data via chat and API. | https://go.tesla.com/chat / Inference as a Service |
| **IT Assist Bot** | Yes | Yes | IT-specific instance of Bottle Rocket for IT-related assistance. | https://it.bottlerocket.tesla.com |
| **Employee Assist** | Yes | Yes | HR-specific instance of Bottle Rocket for HR-related assistance. | https://hr.bottlerocket.tesla.com |
| **Inference as a Service (API Access)** | Yes | Yes | For teams that want to control their entire implementation stack end to end. All models provided via Bottle Rocket are approved for use with Tesla Data. Requires ARB approval. | https://go.tesla.com/inference |

#### Inference as a Service — Available Models (as of Jan 2026)

**On-Prem Models:**
- LlamaGuard3-8B
- Meta Llama-3.1-405B-Instruct
- Meta-Llama-3.1-70B-Instruct
- Meta Llama 3.2-90B
- openai/gpt-oss-20b
- openai/gpt-oss-120b
- Qwen2.5-72B-Instruct
- Qwen/Qwen2.5-VL-7B-Instruct
- Qwen3-30B-A3B
- Qwen3-30B-A3B-Instruct
- Qwen-235B-A22B
- Qwen-235B-A22B-Instruct
- Qwen3-Omni

**Commercial Models:**
- Grok 2 Vision
- Grok 3 Mini
- Grok 3
- Grok 3 Vision
- Grok 4
- Grok 4 Fast Reasoning
- Grok 4 Fast Non-Reasoning
- Grok 4.1 Fast Reasoning
- Grok 4.1 Fast Non-Reasoning
- Grok Code
- Claude 3.7 Sonnet
- Claude 4 Sonnet
- Claude 4.5 Sonnet
- Claude 4 Opus
- Claude 4.1 Opus
- Claude 4.5 Opus
- Claude 4.5 Haiku
- Gemini 2.5 Pro
- Gemini 2.5 Flash
- Gemini 3 Pro

**On-Prem Embedding Models:**
- minilm
- stella-400m
- bge-m3

**Commercial Embedding Models:**
- Grok Embedding
- Gemini Embedding

### Platform & Framework Tools

| Tool | Tesla Data? | Vehicle Software | Description | URL |
|------|:-----------:|:----------------:|-------------|-----|
| **TAFFY Framework** | Yes | Yes | Tesla's standard for all AI agents and tools. Defines protocol and requirements for building agents — ensures consistency, interoperability, observability, and secure communication. | https://go.tesla.com/taffy |
| **Tokens Self Service** | Yes | Yes | Self-service access to inference and embedding tokens for Bottle Rocket. Requires: appcode, ARB, Agent Registry. | Inference as a Service / Self Service Inference Tokens |
| **"Help me build a bot" option** | Yes | — | For non-engineering teams. Content Curation Onboarding by GENAI team. | https://genai.tesla.com/blog/guide-build/ |
| **Nova** | Yes | Yes | Uses Bottle Rocket for inference and approved tool calls to leverage internal tools. Agents: IT Answers, Access Control, Confluence, Edge Portal, Employee Assist, Jira. *Grok is available via Nova (through Bottle Rocket), and Nova with Grok is approved for Tesla Data use.* | https://nova.tesla.com / https://nova-wiki.tesla.com |

### Developer Tools (Approved)

| Tool | Tesla Data? | Vehicle Software | Description | Notes |
|------|:-----------:|:----------------:|-------------|-------|
| **Microsoft Copilot for GitHub** | Yes | Yes | Allowed for all GitHub users. Limited 300 requests/month for premium models (resets monthly). Code base and repo NOT sent to cloud. All models hosted in GitHub Managed accounts within Azure Tenant. Model providers have no access to Inference Instances. Client data NOT used for code training. Hashed prompts stored in Azure Tenants for 60 days (legal). MCP use limited to approved Nova MCP tools. | IDE setup: VS Code, JetBrains |
| **Microsoft Copilot for GitHub CLI** | Yes | — | Allowed for all GitHub users. MCP use limited to approved Nova MCP tools. | |
| **RoboDev** (PR Review + Coding/Chat Agent) | Yes | Yes* | AI dev assistant supporting 2 workflows: automated code generation and automated code review. Uses Bottle Rocket and approved LLMs. *Not approved for use on github-fw.* | https://github.tesla.com/digital-experience/robodev |
| **Claude Code CLI** | Yes* | Yes | Approved for Autonomy via Bottle Rocket. **Not approved for direct API to Anthropic, Proxy, or Direct Bedrock implementations.** Anthropic does not allow use of local models or proxy to local models. Must disable telemetry. | |
| **Grok CLI** | Yes* | Yes | Approved for Autonomy via Bottle Rocket. Approved for Energy via Bottle Rocket. **Not approved for Direct API to xAI.** | |
| **Crush CLI** | Yes | — | Must be used with Bottle Rocket. As of 10/6/2025 has telemetry feature — disable with `CRUSH_DISABLE_METRICS=1` and `DO_NOT_TRACK=1`. Update to 1.0.216+ to mitigate CVE-2026-22812. | https://github.com/charmbracelet/crush |
| **OpenCode CLI** | Yes | — | Disable metrics recording: set `"recordMetrics": false` in `~/.config/opencode/opencode.json`. | May also call external to update models. |
| **Zed with Microsoft Copilot for GitHub** | Yes | Yes | Use GitHub Copilot Zed assistant via model dropdown. **Disable Zed Tab Completion as it uses Claude.** | |

### Specialized / Department Tools

| Tool | Tesla Data? | Vehicle Software | Description |
|------|:-----------:|:----------------:|-------------|
| **Microsoft 365 Copilot Chat and Copilot Windows application** | Yes | — | Data remains in tenant, protected by Microsoft Enterprise Data Protection. Same controls as existing Office applications. **Use corporate link: https://m365.cloud.microsoft.chat** — Do NOT use https://copilot.microsoft.com (personal link). |
| **Microsoft Teams Premium** | Yes* | — | Limited to users who host large volumes of meetings requiring notes. Requires manager approval. Must meet Global Meeting Recording Policy. **Not allowed for vendors/suppliers.** |
| **Microsoft Power Automate** | Yes | — | AI functions approved from infosec perspective (data stays inside tenant). Open AI connector is blocked. Caution: overconsumption of AI Builder Credits. **Does NOT include Power Apps/AI Agent or model building features.** |
| **Veritas Data Extractor** | Yes | — | In-house app for document-specific content extraction. LLM-powered. Supports PDF, images, documents. Multi-language output. |
| **Adobe AI Assistant & Adobe Firefly** | Yes | N/A | AI Assistant reviewed. Must log in using Tesla licensed credentials. **Free demo/personal accounts not approved.** Firefly limited to customer use, not for Adobe training/product improvement. |
| **Articulate Storyline AI** | Yes | N/A | AI Assistant reviewed. Does not approve additional licensing requirements. |
| **Autodesk AI Features** | Yes | N/A | AI Features reviewed. Does not approve additional licensing requirements. |
| **Business Solver Benefit Solver** | Yes | N/A | Solution reviewed. Does not approve additional licensing requirements. |
| **Thompsons Reuters Westlaw CoCounsel** | Yes | N/A | AI Assistant reviewed. Does not approve additional licensing requirements. |
| **Colourlab AI Pro 2025** | Yes | N/A | Uses local neural network for converting video styles. No cloud, no external models. |
| **Relativity One / Relativity AIR** | Yes | N/A | Adds generative AI for document summarization and privilege review using Microsoft Azure OpenAI Service. |
| **Rechtsorde GenIA-L** | Yes | N/A | Uses OpenAI Models hosted in Rechtsorde's Azure tenant, encrypted at rest. EU hosted. |

### Conditionally Approved Tools

| Tool | Tesla Data? | Vehicle Software | Description | Key Restrictions |
|------|:-----------:|:----------------:|-------------|-----------------|
| **Microsoft Copilot M365** (Word, Excel, PowerPoint, Outlook, Teams) | N/A | N/A | **Copilot M365 is not available.** Different from Copilot Chat. | Not available |
| **Cursor AI** | Yes* | No | Approved Orgs only. **Grok is the only approved model.** Requires E-1 approval per org. **Personal accounts prohibited.** Restricted from: Autopilot Hardware (Texas Silicon/DOJO), Autopilot, Vehicle Software. Approved for IDE/Code indexing. | Org-level E-1 approval required. Disable Zed Tab Completion (uses Claude). |
| **Figma AI Features** | Yes* (Conditionally) | No | Approved for Internal UI Design for Tesla employee tools. Uses Sub Processors (Fireworks, Anthropic PBC, Google Gemini, Groq, OpenAI, Jasper AI). Data retained 30 days, not used for training. **Not approved for external Product Design, vehicle UI, or unreleased products** (requires E-1 risk acceptance). | |
| **Tesla Chat / chat.fw.teslamotors.com / fauxpilot** | Yes* (Conditionally) | Yes | Conditionally approved **only for Silvio Brugada's organization** to support firmware programming. **Not approved for general Tesla use. Not approved for Inference Services.** | |

---

## Prohibited Tools and Uses

### Prohibited Third-Party LLM Tools

| Tool | Tesla Data? | Vehicle Software | Description |
|------|:-----------:|:----------------:|-------------|
| **Third-party LLM Tools** (ChatGPT, Claude, Gemini, NotebookLM, Perplexity, Chatbase, Moonshot, Grok direct, Baidu Ernie, Doubao) | No. API access not approved to 3rd party LLM. | No | To protect Tesla IP and sensitive business data. LLM redirection does not constitute approval. **Exception:** Up to 30 days with E-1 executive approval + infosec@tesla.com verification. |
| **Grok (directly via xAI, X, or apps)** | No. Grok is not approved for Tesla Data via xAI, X, or their apps. | No | Direct use without Bottle Rocket, Nova or internal gateway is prohibited. General use of Grok via AI, X, or apps is approved (like other third-party tools) but **Grok is not approved for Tesla Data via xAI, X, or their apps.** |
| **Grok via internal approved tools (Bottle Rocket or Nova)** | **Yes** | Yes | Grok model use inside Bottle Rocket or Nova IS approved for Tesla Data. Use: https://go.tesla.com/chat or https://nova.tesla.com or Inference as a Service. |
| **OpenAI Atlas, Arc Search, Perplexity Browser, Onestart (or other AI browsers), Claude Cowork, Clawdbot, Moltbot** | No | — | Not approved. |
| **Open AI Codex CLI** | No* | — | Use RoboDev instead (uses OpenAI Codex under the hood). RoboDev is approved for Tesla Data. |
| **Kiro IDE / Kiro.dev** | No | — | Not approved. Commercial licensing required, AWS based. Overlaps multiple solutions. Use Copilot, Cursor, CLI with Bottle Rocket, VS Code with BR. |
| **Windsurf / Antigravity** | No | — | Personal accounts not approved. No licensing for enterprise use. Multiple vulnerabilities as of 11/25/2025. |
| **Deepseek China hosted models** | No | No | Deepseek models hosted in China are prohibited for any use. |
| **Apple Intelligence** | No | No | Prohibited on corporate managed devices. |
| **Kingsoft WPS Office, WPS 365, WPS PDF Tools** | No | No | Prohibited Office alternative with AI Tools owned by China State-owned businesses. |
| **Personally owned AI-enabled devices / wearable AI devices** (Ray-Ban Meta, AI-powered recording/transcription devices, earbuds with real-time transcription) | No | No | Bringing or using AI-enabled devices within Tesla facilities is prohibited. |
| **Cloud hosted AI app/site builders** (Vercel v0, Lovable, Bolt, Replit, Heroku, Firebase Studio) | No | No | Cloud IDE / Cloud Hosted Dev environments prohibited. |

### Prohibited Use Cases

| Use Case | Allowed? | Description |
|----------|:--------:|-------------|
| **Meeting Recording** | No | Meeting recording with AI is prohibited by either party. Request vendors disable AI assistants during calls. Applies to all parties (Tesla internal, third-party suppliers). See Global Meeting Recording Policy. |
| **Interview Assistance** | No | No "note taking bots." No recording, transcribing, or use of Tesla information in 3rd party AI tools. No copying/archival/sharing of interview questions, challenges, or tests. Interviewers who suspect candidate AI use should terminate the interview and report. |
| **Presentations/training/docs using Tesla non-public data** | No (by exception only) | Creating outputs with unapproved or third-party AI Tools where input materials contain Tesla Data or non-public information is prohibited. |
| **Tesla Code in Conditionally Approved Tools** | No | Running tests, debugging, optimizing Tesla Code, sorting through Tesla databases/ERP, or any use case where Tesla Code is provided as input to Unapproved or Conditionally Approved AI Tools. |
| **Apple Intelligence on corporate devices** | No | Prohibited on all Tesla-issued (corporate) devices. |
| **Photos/video/audio inside Tesla facilities** | No | Per Code of Business Ethics and employee NDA. Includes Ray-Ban Meta Glasses, AI-powered recording devices, etc. |

---

## Deployment Models

| Deployment Model | Allowed? | Notes |
|------------------|----------|-------|
| Hosted on-prem models via Bottle Rocket | **Approved** | Preferred method for on-prem hosted models. https://go.tesla.com/inference |
| Commercial/Foundation models via Bottle Rocket gateway in Tesla's Infrastructure managed tenant | **Approved** | Preferred model for ChatGPT, Claude, Gemini, Grok or other 3rd party commercial models. https://go.tesla.com/inference |
| Locally Hosted Models (on-prem) | **Prohibited** (exception by case) | Running locally on per-use basis is inefficient. Servicing groups/teams from personal devices prohibited. AI on non-GPU assets (e.g., Kubernetes) prohibited. AI on unapproved GPU assets prohibited. |
| MCP use with service accounts | **Prohibited** | Service account use for MCP does not pass user authentication for RBAC. Service account requests for AI/LLM/agentic coding will be rejected. Expressly prohibited for Splunk/Grafana. Leverage Nova for MCP use. |
| MCP, MCP Servers, A2A | **Prohibited** | **Update:** Approved MCP server offerings in trial to allow vetted MCP use (Nova, Bottle Rocket). |
| MCP Server use within IDE | **Prohibited** | Under review. |
| MCP Dockerized/containerized | **Prohibited** | Under review. |
| Direct database query / SQL Query | **Prohibited** | LLM/AI agents prohibited from directly querying databases of any type (includes read only). |
| Self-hosted on on-prem on work-provided endpoint | **Prohibited** (exception only) | Prohibited for group/team/production use. |
| Third-party hosted models in Tesla-owned tenant | **Prohibited** (exception only) | |
| Foundation models in Amazon Bedrock | **Prohibited** (exception only) | Tesla AWS use prohibited by executive direction. Use Bottle Rocket. |
| Direct use of Foundation models (Azure AI, Google Cloud Vertex AI) | **Prohibited** (exception only) | |
| Direct data or API calls to 3rd party endpoints | **Prohibited** | Specifically prohibited for Tesla data. |
| China-based solutions using U.S. GPUs | **Prohibited** | Per BIS Interim Final Rule (Jan 2025) — three-tier system for global GPU access based on Export Control Reform Act (ECRA). |

---

## Acceptable Uses of AI Tools

Employees may use **Approved AI Tools** as long as policy requirements are met:

1. As an internet search engine
2. To summarize complex, publicly available information
3. To assist in writing text
4. To assist with mathematical calculations
5. To assist in writing code (e.g., write a program to find max value in Python)

**Note:** Tesla Data is only permitted in Tesla Approved Tools. Use of Tesla Data (including NDA-covered or unreleased data) is prohibited with Conditionally Approved tools.

---

## Responsible Use of AI-Generated Data

- AI models may produce inaccurate or unfounded information (biased/incomplete training data)
- **Workers are responsible for reviewing/validating all AI output**
- Exercise due diligence before using any output from internal or approved third-party AI Tools
- **Must be transparent about AI use** — clearly attribute AI use notice

### AI-Generated Code Requirements

All code, including AI-assisted or generated, must adhere to Tesla's secure coding best practices:

1. AI-generated code must be **reviewed by the user and peer reviewed**
2. Must not contain potentially dangerous content
3. Must not violate copyright/license terms
4. Must go through:
   - Application security scans
   - Testing
   - Peer review

Reference: Tesla Baseline Internal-Apps Security Requirements Policy and Security Guidelines.

---

## Non-Compliance

- Tesla reserves the right to take legal action or press charges against users violating local, state, or federal laws
- Workers who violate this Policy may be subject to **disciplinary action, up to and including termination**
- Questions: infosec@tesla.com

## Exceptions

Contact infosec@tesla.com and visit https://go.tesla.com/ARB

---

## Definitions

| Term | Definition |
|------|-----------|
| **Tesla Data** | Any and all information, data (including Personal Data), materials, works, or content regarding Tesla, Tesla customers, Tesla affiliates, Tesla employees, or its users. |
| **Tesla Code** | Any piece of code that is merged into Tesla code repositories (internal/external applications, services, microservices, portals, API, etc.). |
| **Personal Data** | Any information that relates to an identifiable or identified individual (customer, employee, vendor point of contact). |
| **Tesla Workers** | All Tesla employees and workers, including interns, contingent workers, contractors, part-time and full-time employees. |

---

## Quick Reference for AGM Training

### What AGMs CAN Do

| Action | Tool to Use |
|--------|-------------|
| Analyze Tesla operations data (headcount, throughput, KPIs) | **Bottle Rocket** (go.tesla.com/chat) |
| Upload Excel/CSV files with Tesla data for analysis | **Bottle Rocket** |
| Draft emails, memos, reports with Tesla info | **Bottle Rocket** |
| Ask HR questions | **Employee Assist** (hr.bottlerocket.tesla.com) |
| Get IT help | **IT Assist** (it.bottlerocket.tesla.com) |
| Search Confluence, Jira, internal tools | **Nova** (nova.tesla.com) |
| Write generic code (no Tesla data) | **GitHub Copilot** (conditionally approved) |
| Summarize publicly available information | Any approved tool |

### What AGMs CANNOT Do

| Action | Why Not |
|--------|---------|
| Use ChatGPT for any work task | Prohibited tool |
| Paste Tesla data into Claude.ai or Gemini.ai | Prohibited — use Bottle Rocket instead (which has Claude/Gemini models internally) |
| Record a meeting with AI transcription | Prohibited — all parties, all tools |
| Use Apple Intelligence on company iPhone/iPad | Prohibited on corporate devices |
| Share Tesla headcount/KPI data with GitHub Copilot | Conditionally approved = no Tesla Data |
| Take photos inside the DC with Ray-Ban Meta or similar | Prohibited — AI-enabled recording devices in facilities |
| Use Perplexity, Arc Search, or AI browsers | Explicitly prohibited |

### The Critical Distinction

**Grok, Claude, Gemini models are available and approved INSIDE Bottle Rocket.** The models themselves are fine — it's the *platform* that matters. Using Claude via Bottle Rocket = approved. Using Claude via claude.ai = prohibited. Same model, different data protection.

---

*Policy Version: 2.0 | Approved: April 29, 2025 | Confluence last modified: January 29, 2026*
