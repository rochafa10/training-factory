# Visual Tools Reference

Complete guide to all MCP-connected visual tools available in the training factory pipeline.

## Tool Inventory

| Tool | MCP Server | Primary Use | Used By |
|------|-----------|-------------|---------|
| Excalidraw MCP | `@cmd8/excalidraw-mcp` | Create/edit canonical diagrams | Agent 04 |
| Draw.io MCP | `drawio-mcp` | Process flowcharts, org charts | Agent 04 |
| Gemini API | `gemini-2.0-flash` | Render styled HTML/SVG from structure | Agent 05 |
| Gemini Image Gen | `gemini-2.0-flash-exp` | Generate diagram images directly | Agent 05 (fallback) |
| AntV Chart MCP | `mcp-server-chart` | Data charts (bar, line, pie, radar) | Agent 05, 07 |
| Playwright MCP | `@playwright/mcp` | Screenshot HTML to PNG, validate slides | Agent 05, 07, 10 |
| Canva MCP | `@canva/cli mcp` | Branded infographics, polished visuals | Agent 07 |
| Figma MCP | `figma-developer-mcp` | Design system tokens, inspect assets | Agent 07 (reference) |
| Memory MCP | `@modelcontextprotocol/server-memory` | Label/terminology consistency | Agent 04, 05 |

---

## Tool Details

### 1. Excalidraw MCP

**Purpose:** Create and edit Excalidraw JSON diagrams programmatically via MCP.

**When to use:** Agent 04 (Diagram Architect) — creating canonical `.excalidraw` files.

**Key operations:**
- `create_excalidraw_file` — Create a new diagram with elements
- `add_elements` — Add nodes/edges to existing diagram
- `export_to_svg` — Export for embedding in slides

**Advantages over manual JSON:**
- Validates element structure automatically
- Handles ID generation and binding
- Ensures correct Excalidraw schema compliance

**Example:**
```
Use the Excalidraw MCP to create a new diagram file at outputs/week-2/diagrams/prompt-formula.excalidraw with:
- 4 rectangles labeled "ROLE", "CONTEXT", "TASK", "FORMAT"
- Arrows connecting them left-to-right
- Blue fill (#4dabf7) for agent-type nodes
```

**Known Limitations (tested 2026-02-22):**

| Feature | Status | Details |
|---------|--------|---------|
| `create_view` (in-chat preview) | Works | Great for iterating on structure with draw-on animation |
| `export_to_excalidraw` (shareable URL) | **Broken for text** | Shapes and arrows render, but ALL text is stripped — labels, titles, descriptions all lost |
| `save_checkpoint` / `read_checkpoint` | Works | Preserves in-chat state between create_view calls |

**Role in pipeline:** Excalidraw MCP is a **design and preview tool**, not a rendering tool. Use it for:
- In-chat structural iteration with `create_view` (fast feedback)
- Saving canonical `.excalidraw` JSON files (structural source-of-truth)

**Do NOT use** `export_to_excalidraw` → Playwright screenshot for production rendering. Agent 05 renders diagrams via Gemini HTML + Playwright screenshot pipeline instead.

---

### 2. Draw.io MCP

**Purpose:** Create structured flowcharts and process diagrams in Draw.io (mxGraph XML) format.

**When to use:** Agent 04 — alternative format for process flows, org charts, and swim-lane diagrams that benefit from Draw.io's layout engine.

**Key operations:**
- Create `.drawio` XML files with auto-layout
- Export to SVG/PNG for embedding
- Swim-lane and container support

**Best for:**
- Process flows with many decision branches
- Swim-lane diagrams (multi-actor workflows)
- Org charts and hierarchies

**Integration with pipeline:**
- Output `.drawio` files alongside `.excalidraw` files in `outputs/week-N/diagrams/`
- Add entries to `diagram-contracts.json` with `"format": "drawio"`
- Agent 05 renders Draw.io diagrams the same way (extract structure → Gemini style → Playwright screenshot)

**Example:**
```
Use the Draw.io MCP to create a swim-lane diagram showing the AGM workflow:
- Lane 1: "AGM" — initiates prompt, reviews output
- Lane 2: "Bottle Rocket" — processes request, generates response
- Lane 3: "Policy Layer" — validates against approved tools list
```

---

### 3. Gemini API (Code Generation)

**Purpose:** Convert locked diagram structures into styled HTML/SVG for screenshot rendering.

**When to use:** Agent 05 — primary rendering approach (Approach B in `tools/gemini-renderer.md`).

**Configuration:**
```
Model: gemini-2.0-flash
Endpoint: https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent
API Key: .env → GEMINI_API_KEY
Temperature: 0.1
Max tokens: 8192
```

**Three style variants:** whiteboard, minimal, thumbnail (see Agent 05 for specs).

---

### 4. Gemini Image Generation (nano-banana)

**Purpose:** Generate styled infographics, diagrams, and polished visual assets directly as PNG images using Gemini's native image generation.

**When to use:** Agent 05 — for infographics, artistic whiteboard-style variants, or when HTML/SVG rendering produces insufficient quality. Also usable by Agent 07 for high-impact slide visuals.

**Configuration:**
```
Model: nano-banana-pro-preview (primary)
Fallbacks: gemini-2.0-flash-exp-image-generation, gemini-2.5-flash-image, gemini-3-pro-image-preview
Endpoint: https://generativelanguage.googleapis.com/v1beta/models/nano-banana-pro-preview:generateContent
Response modality: Include "IMAGE" in responseModalities
```

**API call structure:**
```bash
curl -k -X POST "https://generativelanguage.googleapis.com/v1beta/models/nano-banana-pro-preview:generateContent" \
  -H "Content-Type: application/json" \
  -H "x-goog-api-key: ${GEMINI_API_KEY}" \
  -d '{
    "contents": [{"parts": [{"text": "PROMPT_HERE"}]}],
    "generationConfig": {
      "temperature": 0.2,
      "responseModalities": ["TEXT", "IMAGE"]
    }
  }'
```

**Note:** Use `-k` flag for SSL on Windows. Save response to file, then extract image:
```python
import json, base64
data = json.load(open("gemini-response.json"))
for part in data["candidates"][0]["content"]["parts"]:
    if "inlineData" in part:
        open("output.png", "wb").write(base64.b64decode(part["inlineData"]["data"]))
```

**Risk:** Higher structural drift than Approach B for technical diagrams. Always validate against `diagram-contracts.json`.

**Best for:** Infographics, comparison visuals, polished summary graphics, whiteboard-style diagrams where artistic quality matters.

---

### 5. AntV Chart MCP

**Purpose:** Generate data-driven charts (bar, line, pie, radar, gauge) as PNG images.

**When to use:**
- Agent 05 — render data visualizations referenced in content.md
- Agent 07 — embed inline charts in slide HTML

**Key operations:**
- `bindData` — Load dataset for charting
- `bindChart` — Configure chart type and visual encoding
- `exportChart` — Export as PNG at specified dimensions

**Supported chart types:**
| Type | Best For | Example Use |
|------|----------|-------------|
| Bar | Comparisons | "Time saved per task" |
| Line | Trends over time | "AI adoption curve" |
| Pie | Proportions | "Tool usage distribution" |
| Radar | Multi-dimension scores | "Skill assessment spider" |
| Gauge | Single metric | "Confidence level" |
| Heatmap | Matrix data | "Task × Tool effectiveness" |

**Tesla theme configuration:**
```json
{
  "theme": {
    "backgroundColor": "#0a0a0a",
    "colors": ["#e82127", "#4ade80", "#facc15", "#4dabf7", "#da77f2"],
    "textColor": "#ffffff",
    "gridColor": "#2a2a2a",
    "fontFamily": "Arial, sans-serif"
  }
}
```

**Output naming:** `{chart-name}--chart.png` in `outputs/week-N/images/`

**Integration with slide pipeline:**
- Agent 06 can reference chart images in slide plans with type `Chart`
- Agent 07 embeds them like any other image: `<img src="../images/{name}--chart.png">`

---

### 6. Playwright MCP

**Purpose:** Browser automation for three use cases: (A) screenshotting HTML to PNG, (B) validating slide rendering, and (C) capturing live web content for slides.

**When to use:**
- Agent 02 — capture screenshots of tool UIs, documentation pages, or web examples for research evidence
- Agent 05 — screenshot Gemini-generated HTML diagrams
- Agent 07 — validate every slide HTML file AND capture live web content for Screenshot slides
- Agent 10 — spot-check visual quality

**Key operations:**
- `browser_navigate` — Load any URL (local file or web page)
- `browser_snapshot` — Capture accessibility tree for structural validation
- `browser_take_screenshot` — Save visual as PNG
- `browser_click` / `browser_type` — Interact with web pages to reach the right state before capturing

#### Use Case A: Slide/Diagram Validation

**Important:** Playwright blocks `file://` URLs. Serve HTML over HTTP instead:

```bash
# Start a local server (run in background)
python -m http.server 8787 --directory outputs/week-N/images/temp &
```

```javascript
// Navigate via HTTP and screenshot
browser_navigate({ "url": "http://localhost:8787/slide.html" })
browser_snapshot({})  // Check structure
browser_take_screenshot({ "filename": "screenshot.png" })  // Save visual
```

**Alternative** — use `browser_run_code` for viewport control + screenshot in one call:
```javascript
browser_run_code({ "code": "async (page) => { await page.setViewportSize({ width: 960, height: 540 }); await page.goto('http://localhost:8787/diagram.html'); await page.screenshot({ path: 'outputs/week-N/images/diagram--slide-embed.png', type: 'png' }); }" })
```

#### Use Case B: Capturing Live Web Content for Slides
Navigate to a tool UI, documentation page, or web example, interact to show the relevant state, then screenshot for embedding in slides.

```javascript
// Example: Capture Bottle Rocket UI
browser_navigate({ "url": "https://go.tesla.com/chat" })
// Interact if needed to show relevant state
browser_take_screenshot({ "filename": "outputs/week-N/images/bottle-rocket-ui--screenshot.png" })
```

**Best capture targets for this course:**
| Content | URL / Source | Use In |
|---------|-------------|--------|
| Bottle Rocket chat interface | `go.tesla.com/chat` | Week 1 — "What It Looks Like" slides |
| GitHub Copilot suggestions | VS Code with Copilot active | Week 3 — agent mode demos |
| VS Code workspace | Local VS Code screenshot | Week 3 — IDE orientation |
| Prompt engineering examples | Tool output screenshots | Week 2 — before/after prompts |
| Policy documentation | Internal Tesla policy pages | Week 1 — policy tier reference |

**Output naming:** `{name}--screenshot.png` in `outputs/week-N/images/`

**Screenshot guidelines:**
- Capture at consistent dimensions (1280x720 or 960x540 for direct slide embed)
- Crop or annotate to highlight the relevant area
- Blur or redact any sensitive/personal data before embedding
- Add a thin border (#2a2a2a, 1px) for screenshots on dark slide backgrounds

---

### 7. Canva MCP

**Purpose:** Create branded infographics, social-style visuals, and polished one-pagers using Canva's design engine.

**When to use:** Agent 07 — for slides that need infographic-quality visuals beyond what HTML/CSS can achieve (e.g., summary infographics, branded handout covers).

**Key operations:**
- `create_design` — Create a new Canva design from template or blank
- `add_elements` — Add text, images, shapes to design
- `export_design` — Export as PNG/PDF at specified dimensions

**Best for:**
- Course summary infographics
- Branded handout cover pages
- Visual cheat sheets
- Certificate-style completion slides

**Tesla brand settings:**
```json
{
  "brandKit": {
    "primaryColor": "#e82127",
    "secondaryColor": "#0a0a0a",
    "accentColor": "#ffffff",
    "fontHeading": "Arial Bold",
    "fontBody": "Arial Regular"
  }
}
```

**Output naming:** `{name}--infographic.png` in `outputs/week-N/images/`

**When NOT to use Canva:**
- Standard content slides (use HTML templates)
- Technical diagrams (use Excalidraw + Gemini)
- Data charts (use AntV Chart)

---

### 8. Figma MCP

**Purpose:** Read-only access to Figma design files for extracting design tokens, inspecting Tesla brand assets, and referencing component specifications.

**When to use:** Agent 07 — reference only, for verifying Tesla brand compliance and extracting exact color/spacing values from corporate design files.

**Key operations:**
- `get_file` — Read Figma file structure
- `get_file_styles` — Extract color, text, effect styles
- `get_file_components` — List reusable components

**Note:** This is a reference tool, not a generation tool. Use it to verify brand compliance, not to create new assets.

---

## Tool Selection Guide

### By Diagram Type

| Need | Tool | Output |
|------|------|--------|
| Architecture diagram | Excalidraw MCP → Gemini | `.excalidraw` → `--minimal.png` |
| Process flowchart | Draw.io MCP → Gemini | `.drawio` → `--minimal.png` |
| Swim-lane workflow | Draw.io MCP → Gemini | `.drawio` → `--whiteboard.png` |
| Data chart/graph | AntV Chart MCP | `--chart.png` |
| Infographic | Canva MCP | `--infographic.png` |
| Artistic/sketch visual | Gemini Image Gen | `--whiteboard.png` |
| Live tool UI / web page | Playwright MCP | `--screenshot.png` |

### By Agent

| Agent | Primary Tools | When to Escalate |
|-------|--------------|------------------|
| 02 Research Agent | Perplexity, WebSearch, Playwright (content capture) | Capture tool UIs and web pages as research evidence |
| 04 Diagram Architect | Excalidraw MCP, Draw.io MCP, Memory MCP | Complex swim-lanes → Draw.io |
| 05 Diagram Renderer | Gemini API, Playwright, AntV Chart, Memory MCP | Data viz → AntV; artistic → Gemini Image Gen |
| 06 Slide Planner | Memory MCP | Reference chart/infographic/screenshot assets in plan |
| 07 Slide Renderer | Playwright, Canva MCP, AntV Chart (inline) | Infographic slides → Canva; screenshots → Playwright capture |
| 10 Quality Reviewer | Playwright | Visual regression checks |

---

## Tesla Diagram Brand Guidelines

Diagrams are embedded in Tesla dark-theme slides (`#0a0a0a` background). Diagram palettes must match the slide context.

### Slide-Embed Palette (DEFAULT — for dark slides)

Use this for any diagram that will appear in a slide.

**Background:** `#0a0a0a` (matches slide) or transparent

| Element | Fill | Border/Stroke | Text |
|---------|------|---------------|------|
| Agent node | `#1e3a5f` (dark blue) | `#4a9eed` (bright blue) | `#ffffff` |
| Tool node | `#1a4d2e` (dark green) | `#22c55e` (bright green) | `#ffffff` |
| Memory node | `#2d1b69` (dark purple) | `#8b5cf6` (bright purple) | `#ffffff` |
| Guardrail node | `#5c3d1a` (dark orange) | `#f59e0b` (bright amber) | `#ffffff` |
| User node | `#5c4d1a` (dark yellow) | `#ffd43b` (bright yellow) | `#ffffff` |
| Data node | `#1a3a5c` (dark teal) | `#4dabf7` (bright blue) | `#ffffff` |
| Decision node | `#3d3520` (dark cream) | `#fab005` (bright gold) | `#ffffff` |
| Error node | `#5c1a1a` (dark red) | `#f87171` (bright red) | `#ffffff` |
| Arrows/edges | — | `#ffffff` or `#a0a0a0` | `#e5e5e5` (labels) |
| Accent | — | `#e82127` (Tesla red) | — |

**Typography on dark:** Arial/Helvetica, minimum 14px. Title text `#ffffff`, body/labels `#e5e5e5`, secondary `#a0a0a0`. Never use text darker than `#a0a0a0` on dark backgrounds.

### Light-Background Palette (for whiteboard/handouts)

Use for exercise handouts and workshop materials printed on paper.

**Background:** `#faf9f7` (warm off-white) or `#ffffff`

Existing Excalidraw pastel palette applies:
- Agent: `#4dabf7`, Tool: `#69db7c`, Memory: `#da77f2`, Guardrail: `#ffa94d`
- Text: `#1e1e1e` (dark), secondary: `#757575`

### Which Palette to Use

| Output Target | Palette | Style Variant |
|--------------|---------|---------------|
| Slide HTML (960x540 dark) | Slide-embed | `--slide-embed` |
| Standalone documentation | Light-background | `--minimal` |
| Exercise handouts | Light-background | `--whiteboard` |
| Navigation/gallery | Slide-embed | `--thumbnail` |

**Default: slide-embed** — most diagrams end up in slides.

---

## Output File Naming Conventions

All visual outputs go in `outputs/week-N/images/`:

| Pattern | Source | Example |
|---------|--------|---------|
| `{name}--whiteboard.png` | Gemini render | `orchestration--whiteboard.png` |
| `{name}--minimal.png` | Gemini render | `orchestration--minimal.png` |
| `{name}--thumbnail.png` | Gemini render | `orchestration--thumbnail.png` |
| `{name}--chart.png` | AntV Chart | `time-savings--chart.png` |
| `{name}--infographic.png` | Canva | `week-summary--infographic.png` |
| `{name}--screenshot.png` | Playwright capture | `bottle-rocket-ui--screenshot.png` |
| `{name}.drawio` | Draw.io MCP | `agm-workflow.drawio` (in diagrams/) |

---

## Contract Extensions

When using Draw.io or AntV Chart, extend `diagram-contracts.json` with format-specific metadata:

### Draw.io Entry
```json
{
  "filename": "agm-workflow.drawio",
  "format": "drawio",
  "title": "AGM Workflow",
  "week": 2,
  "nodes": [...],
  "edges": [...],
  "swimLanes": ["AGM", "Bottle Rocket", "Policy Layer"]
}
```

### AntV Chart Entry
```json
{
  "filename": "time-savings--chart.png",
  "format": "antv-chart",
  "chartType": "bar",
  "title": "Time Savings by Task",
  "week": 2,
  "dataSource": "research.md Section 3.2",
  "dimensions": { "width": 800, "height": 500 }
}
```
