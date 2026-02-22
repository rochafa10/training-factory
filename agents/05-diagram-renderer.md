# Agent 05: Diagram Renderer

## Purpose
Convert Excalidraw canonical diagrams into high-polish visual variants using Gemini. Acts as a **renderer only** - cannot invent, add, or remove structural elements.

## Important: Excalidraw MCP Export Limitation

Excalidraw MCP `.excalidraw` files are structural source-of-truth only. **Do NOT** use `export_to_excalidraw` to render diagrams — it strips all text (labels, titles, descriptions). Always render via the Gemini HTML + Playwright screenshot pipeline described below.

## Input Required
- Excalidraw files from `outputs/week-N/diagrams/*.excalidraw`
- Diagram contracts from `outputs/week-N/diagrams/diagram-contracts.json`
- Style guide (defined in this document)

## Output
Generate PNG images in `outputs/week-N/images/`:
```
orchestration--whiteboard.png
orchestration--minimal.png
orchestration--thumbnail.png
tool-contracts--whiteboard.png
tool-contracts--minimal.png
tool-contracts--thumbnail.png
...
```

---

## Claude Tools (MANDATORY)

| Tool | Purpose | When to Use |
|------|---------|-------------|
| **Gemini Image Gen** (nano-banana) | Render all diagram variants | Primary: for every diagram × style combination |
| **AntV Chart MCP** | Generate data charts (column, bar, pie, radar, line) | When content.md includes statistics or metrics |
| **Playwright** | Validate rendered images | Spot-check visual quality |
| `Memory MCP` (search_nodes) | Verify terminology | Before rendering labels |

### API Configuration

**Gemini Image Generation (nano-banana) — Primary Renderer:**
```
API Key: Load from .env file (GEMINI_API_KEY)
Model: nano-banana-pro-preview
Endpoint: https://generativelanguage.googleapis.com/v1beta/models/nano-banana-pro-preview:generateContent
Response modalities: ["TEXT", "IMAGE"]
Temperature: 0.2
```

**Fallback models (if nano-banana is unavailable):**
- `gemini-2.5-flash-image`
- `gemini-3-pro-image-preview`

**API call pattern:**
```bash
curl -k -s "https://generativelanguage.googleapis.com/v1beta/models/nano-banana-pro-preview:generateContent?key=${GEMINI_API_KEY}" \
  -H "Content-Type: application/json" \
  -d '{
    "contents": [{"parts": [{"text": "YOUR_PROMPT_HERE"}]}],
    "generationConfig": {
      "temperature": 0.2,
      "responseModalities": ["TEXT", "IMAGE"]
    }
  }'
```

**Response handling:** The image is returned as base64 JPEG in `candidates[0].content.parts[].inlineData.data`. Decode and save:
```python
import json, base64, sys
data = json.load(sys.stdin)
for part in data["candidates"][0]["content"]["parts"]:
    if "inlineData" in part:
        open("output.png", "wb").write(base64.b64decode(part["inlineData"]["data"]))
```

**Output format:** JPEG (no transparency). Fine for dark-bg slides.

**Important:** The Gemini MCP's `gemini_chat` tool CANNOT return images — always use direct curl API.

See `tools/gemini-renderer.md` and `tools/visual-tools.md` for full documentation.

### AntV Chart MCP

Use AntV Chart MCP tools to generate data-driven visualizations when content.md includes statistics, metrics, or comparative data. Each chart type has its own dedicated tool.

**Chart tool selection:**
| Data Pattern | Tool | Data Format |
|---|---|---|
| Compare categories | `generate_column_chart` or `generate_bar_chart` | `[{ category, value, group? }]` |
| Trend over time | `generate_line_chart` or `generate_area_chart` | `[{ time, value, group? }]` |
| Part-of-whole | `generate_pie_chart` (set `innerRadius: 0.6` for donut) | `[{ category, value }]` |
| Multi-dimension | `generate_radar_chart` | `[{ name, value, group? }]` |
| Bar + line combo | `generate_dual_axes_chart` | `{ categories, series }` |

**Tesla dark theme (apply to ALL charts):**
```
theme: "dark"
width: 880
height: 420
style: {
  palette: ["#e82127", "#4a9eed", "#22c55e", "#f59e0b", "#8b5cf6"],
  backgroundColor: "#0a0a0a"
}
```

**Output is a hosted URL** — download it after generation:
```bash
curl -s -k -o "outputs/week-N/images/{name}--chart.png" "<RETURNED_URL>"
```

**Contract integration:** Add entries to `diagram-contracts.json`:
```json
{
  "filename": "time-savings--chart.png",
  "format": "antv-chart",
  "chartType": "column",
  "title": "Time Savings by Task",
  "dataSource": "research.md Section 3.2"
}
```

### Critical Constraint
**Gemini is NOT allowed to:**
- Invent labels or text
- Add nodes not in the contract
- Remove nodes from the contract
- Change edge connections
- Modify the diagram structure

**Gemini IS allowed to:**
- Apply visual styling (shadows, gradients, textures)
- Adjust colors within the allowed palette
- Add decorative elements (not informational)
- Optimize layout for readability

---

## The Diagram Lock Protocol

### Step 1: Extract Structure from Excalidraw

Before calling Gemini, extract and lock the structure:

```json
{
  "locked_structure": {
    "nodes": [
      { "id": "planner", "label": "Planner Agent", "type": "agent" },
      { "id": "executor", "label": "Executor Agent", "type": "agent" }
    ],
    "edges": [
      { "from": "planner", "to": "executor", "label": "task steps" }
    ],
    "allowed_colors": {
      "agent": ["#4dabf7", "#1971c2", "#339af0"],
      "tool": ["#69db7c", "#2f9e44", "#40c057"]
    }
  }
}
```

### Step 2: Nano-banana Render Prompt Template

```
Generate an image: A {style_description} diagram showing {diagram_title}.

STRUCTURE (render EXACTLY):
- Nodes: {nodes_list}
- Edges: {edges_list}
- Labels (use EXACTLY as written): {exact_labels}

STYLE:
{style_specifications}

CONSTRAINTS:
- Use EXACTLY these labels (character-for-character)
- Include ALL nodes and edges listed above
- Do NOT add any nodes, edges, or text not listed above
- Do NOT paraphrase or abbreviate labels

Dimensions: {width}x{height} landscape orientation.
```

### Step 3: Validation

After Gemini output, verify:
- [ ] All nodes from contract are present
- [ ] All edges from contract are present
- [ ] All labels match exactly
- [ ] No extra elements added

---

## Style Specifications

### Style: Whiteboard

```yaml
name: whiteboard
description: Hand-drawn, collaborative feel
background: "#faf9f7" (warm off-white)
stroke_style: "rough" (slight wobble)
fill_style: "hachure" (cross-hatching)
font: "hand-drawn" or "Comic Sans MS"
shadows: soft, 4px offset
borders: 2-3px, slightly uneven
colors:
  nodes: pastel versions of type colors
  edges: dark gray (#495057)
  labels: dark charcoal (#212529)
dimensions: 1200x800px
use_case: In-session teaching, brainstorming
```

### Style: Minimal

```yaml
name: minimal
description: Clean, professional, corporate-ready
background: "#ffffff" (pure white)
stroke_style: "solid" (clean vectors)
fill_style: "solid" (flat colors)
font: "Inter" or "Helvetica"
shadows: none or very subtle (1px)
borders: 1-2px, precise
colors:
  nodes: muted, professional palette
  edges: light gray (#adb5bd)
  labels: dark gray (#343a40)
  accent: Tesla red (#e82127) for emphasis only
dimensions: 1600x900px (16:9)
use_case: Slide decks, documentation
```

### Style: Thumbnail

```yaml
name: thumbnail
description: Maximum readability at small size
background: "#0a0a0a" (Tesla dark)
stroke_style: "solid" (thick, clean)
fill_style: "solid" (high contrast)
font: "Arial Bold"
shadows: none
borders: 3-4px, bold
colors:
  nodes: bright, saturated versions
  edges: white or bright colors
  labels: white (#ffffff)
text_size: 150% of normal (readable at 200px)
dimensions: 400x300px
use_case: Navigation, previews, galleries
```

### Style: Slide-Embed (DEFAULT for slides)

```yaml
name: slide-embed
description: Designed for Tesla dark-theme slides (960x540)
background: "#0a0a0a" (matches slide background)
stroke_style: "solid" (clean, precise)
fill_style: "solid" (dark saturated colors with bright borders)
font: "Arial" or "Helvetica"
shadows: subtle (2px, rgba(0,0,0,0.3))
borders: 2px, bright accent colors
colors:
  nodes:
    agent: fill #1e3a5f, border #4a9eed
    tool: fill #1a4d2e, border #22c55e
    memory: fill #2d1b69, border #8b5cf6
    guardrail: fill #5c3d1a, border #f59e0b
    user: fill #5c4d1a, border #ffd43b
    data: fill #1a3a5c, border #4dabf7
    decision: fill #3d3520, border #fab005
    error: fill #5c1a1a, border #f87171
  edges: white (#ffffff) or light gray (#a0a0a0)
  labels: white (#ffffff), secondary #e5e5e5
  accent: Tesla red (#e82127) for emphasis
text_size: standard (16px body, 20px titles min)
dimensions: 880x420px (fits 960x540 slide with 40px padding)
use_case: Primary — most diagrams are embedded in dark slides
```

**Tesla brand compliance:** This style uses the full Tesla slide palette from Agent 07. See `tools/visual-tools.md` → "Tesla Diagram Brand Guidelines" for the complete color reference.

---

## Output Naming Convention

```
{diagram-name}--{style}.png
```

Examples:
- `orchestration--slide-embed.png` (default for slides)
- `orchestration--whiteboard.png`
- `orchestration--minimal.png`
- `orchestration--thumbnail.png`
- `tool-contracts--slide-embed.png`
- `failure-retry--minimal.png`

---

## Rendering Pipeline

For each `.excalidraw` or `.drawio` file:

```
1. Read diagram-contracts.json for this diagram
   ↓
2. Extract locked structure (nodes, edges, labels)
   ↓
3. Query Memory MCP for any terminology verification
   ↓
4. For each style (slide-embed, whiteboard, minimal, thumbnail):
   a. Build nano-banana prompt with locked structure + style specs
   b. Call Gemini API (nano-banana) → get image as base64 JPEG
   c. Decode and save as {name}--{style}.png
   d. Validate against contract (all nodes, edges, labels present)
   ↓
5. For chart entries in diagram-contracts.json:
   a. Use AntV Chart MCP with Tesla dark theme
   b. Download URL → save as {name}--chart.png
   ↓
6. Log results in render-log.md
```

---

## Gemini API Integration

### API Call Structure

```bash
curl -k -s "https://generativelanguage.googleapis.com/v1beta/models/nano-banana-pro-preview:generateContent?key=${GEMINI_API_KEY}" \
  -H "Content-Type: application/json" \
  -d '{
    "contents": [{"parts": [{"text": "PROMPT_HERE"}]}],
    "generationConfig": {
      "temperature": 0.2,
      "responseModalities": ["TEXT", "IMAGE"]
    }
  }' | python -c "
import json, sys, base64
data = json.load(sys.stdin)
for part in data[\"candidates\"][0][\"content\"][\"parts\"]:
    if \"inlineData\" in part:
        with open(\"OUTPUT_PATH\", \"wb\") as f:
            f.write(base64.b64decode(part[\"inlineData\"][\"data\"]))
"
```

### Master Render Prompt

```
Generate an image: A {{STYLE_DESCRIPTION}} diagram showing {{DIAGRAM_TITLE}}.

STRUCTURE (render EXACTLY):
- Nodes: {{NODES_FROM_CONTRACT}}
- Edges: {{EDGES_FROM_CONTRACT}}
- Labels (use EXACTLY as written): {{LABELS_FROM_CONTRACT}}

STYLE:
{{STYLE_SPECIFICATIONS}}

CONSTRAINTS:
- Use EXACTLY these labels (character-for-character)
- Include ALL nodes and edges listed above
- Do NOT add any nodes, edges, or text not listed above
- Do NOT paraphrase or abbreviate labels

Dimensions: {{WIDTH}}x{{HEIGHT}} landscape orientation.
```

### Per-Style Prompt Specifications

**Slide-Embed (DEFAULT):**
```
Dark-themed diagram on near-black background (#0a0a0a).
Node fills: dark saturated colors (blue #1e3a5f, green #1a4d2e, purple #2d1b69, orange #5c3d1a).
Node borders: bright accents (blue #4a9eed, green #22c55e, purple #8b5cf6, orange #f59e0b).
White text labels (#ffffff). Clean solid strokes. Tesla red #e82127 for emphasis.
Professional corporate training style. 880x420 landscape.
```

**Whiteboard:**
```
Hand-drawn whiteboard style on warm off-white background (#faf9f7).
Slightly rough/wavy strokes, hachure or cross-hatch fills, hand-drawn font feel.
Soft shadows. Pastel node colors. Dark gray edges (#495057). Dark charcoal labels (#212529).
Collaborative brainstorming feel. 1200x800 landscape.
```

**Minimal:**
```
Clean professional diagram on pure white background (#ffffff).
Solid flat colors, clean vector strokes (1-2px), Helvetica/Arial font.
No shadows. Muted professional palette. Tesla red #e82127 for accent only.
Corporate slide deck style. 1600x900 landscape.
```

**Thumbnail:**
```
High-contrast diagram on dark background (#0a0a0a).
Bold thick strokes (3-4px), bright saturated fills, large labels (150% size).
White text (#ffffff). No shadows. Readable at small size.
400x300 landscape.
```

---

## No Playwright Needed for Diagrams

Nano-banana generates images directly — no HTML → HTTP server → screenshot chain required. Playwright is only used by other agents:
- Agent 07: Validating rendered slide HTML
- Agent 10: Spot-checking visual quality

---

## Render Log Format

Generate `outputs/week-N/images/render-log.md`:

```markdown
# Diagram Render Log - Week N

**Rendered:** [timestamp]
**Source:** outputs/week-N/diagrams/

## Renders

| Source | Style | Output | Validation | Notes |
|--------|-------|--------|------------|-------|
| orchestration.excalidraw | whiteboard | orchestration--whiteboard.png | ✅ Pass | |
| orchestration.excalidraw | minimal | orchestration--minimal.png | ✅ Pass | |
| orchestration.excalidraw | thumbnail | orchestration--thumbnail.png | ✅ Pass | |
| tool-contracts.excalidraw | whiteboard | tool-contracts--whiteboard.png | ⚠️ Fixed | Label case corrected |

## Validation Summary

- **Total renders:** [X]
- **Passed first attempt:** [Y]
- **Required correction:** [Z]
- **Failed (manual review needed):** [N]

## Contract Compliance

| Diagram | Nodes Expected | Nodes Found | Edges Expected | Edges Found | Labels Match |
|---------|----------------|-------------|----------------|-------------|--------------|
| orchestration | 5 | 5 | 6 | 6 | ✅ 100% |
| tool-contracts | 8 | 8 | 10 | 10 | ✅ 100% |
```

---

## Nano-banana Prompt Examples

### Slide-Embed Style (DEFAULT)

```
Generate an image: A dark-themed diagram showing Multi-Agent Orchestration Flow.

STRUCTURE (render EXACTLY):
- Nodes: "Planner Agent" (blue), "Executor Agent" (blue), "Playwright MCP" (green), "User" (yellow)
- Edges: User → Planner Agent ("request"), Planner → Executor ("task steps"), Executor → Playwright ("tool call"), Playwright → Executor ("result")
- Labels: use EXACTLY as written above

STYLE:
Dark background (#0a0a0a). Node fills: dark saturated colors (blue #1e3a5f, green #1a4d2e, yellow #5c4d1a).
Node borders: bright accents (#4a9eed, #22c55e, #ffd43b). White text labels (#ffffff).
Clean solid strokes. Tesla red #e82127 for emphasis. Professional corporate training style.

CONSTRAINTS:
- Use EXACTLY these labels (character-for-character)
- Include ALL nodes and edges
- Do NOT add any elements not listed above

Dimensions: 880x420 landscape.
```

### Whiteboard Style

```
Generate an image: A hand-drawn whiteboard diagram showing Multi-Agent Orchestration Flow.

STRUCTURE (render EXACTLY):
- Nodes: "Planner Agent", "Executor Agent", "Playwright MCP", "User"
- Edges: User → Planner Agent ("request"), Planner → Executor ("task steps"), Executor → Playwright ("tool call"), Playwright → Executor ("result")
- Labels: use EXACTLY as written above

STYLE:
Warm off-white background (#faf9f7). Hand-drawn feel with slightly rough/wavy strokes.
Hachure or cross-hatch fills. Pastel node colors. Soft shadows. Dark gray edges (#495057).
Dark charcoal labels (#212529). Collaborative brainstorming feel.

CONSTRAINTS:
- Use EXACTLY these labels. Do not paraphrase or abbreviate.
- Include ALL nodes and edges listed above.

Dimensions: 1200x800 landscape.
```

---

## Quality Checklist

Before delivering images, verify:

| Check | Requirement | Status |
|-------|-------------|--------|
| All diagrams rendered | 4 styles each (slide-embed, whiteboard, minimal, thumbnail) | [ ] |
| All charts rendered | AntV chart entries in contract | [ ] |
| Contract compliance | 100% node/edge match | [ ] |
| Label accuracy | Exact match to source | [ ] |
| Style adherence | Matches specifications | [ ] |
| File naming | {name}--{style}.png / {name}--chart.png | [ ] |
| Tesla theme on charts | Dark background, brand colors | [ ] |
| Render log | Complete and accurate | [ ] |

### FAIL CONDITIONS (must re-render):
- Missing node from contract
- Extra node not in contract
- Label mismatch (even capitalization)
- Wrong style applied
- Incorrect dimensions
- Missing render log entry
- Chart uses non-Tesla colors

---

## Integration with Slide Renderer

Agent 07 (Slide Renderer) can embed rendered images:

```html
<!-- In slide HTML -->
<img src="../images/orchestration--minimal.png"
     alt="Multi-agent orchestration flow"
     style="max-width: 100%; height: auto;">
```

Recommended usage:
- **Slide-embed** style for most slides (dark background, Tesla brand colors)
- **Minimal** for standalone documentation and light-background handouts
- **Whiteboard** for exercise/workshop slides
- **Thumbnail** for navigation/overview slides

---

## Quality Gate Integration

This agent's output is validated by **Gate 4** (combined with Agent 04) before the parallel phase begins.
