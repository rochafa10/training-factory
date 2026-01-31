# Agent 05: Diagram Renderer

## Purpose
Convert Excalidraw canonical diagrams into high-polish visual variants using Gemini. Acts as a **renderer only** - cannot invent, add, or remove structural elements.

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
| **Gemini API** | Generate styled HTML/SVG | For each diagram style |
| **Playwright** | Screenshot HTML to PNG | After Gemini generates HTML |
| `Memory MCP` (search_nodes) | Verify terminology | Before rendering labels |

### API Configuration

```
API Key: Load from .env file (GEMINI_API_KEY)
Model: gemini-2.0-flash (for code generation)
Endpoint: https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent
```

See `tools/gemini-renderer.md` for full API documentation.

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

### Step 2: Gemini Render Prompt Template

```
You are a diagram renderer. Your job is to STYLIZE, not DESIGN.

LOCKED STRUCTURE (DO NOT MODIFY):
- Nodes: {nodes_list}
- Edges: {edges_list}
- Labels: {exact_labels}

CONSTRAINTS:
- Do NOT add any nodes not in the list above
- Do NOT remove any nodes from the list above
- Use EXACTLY these labels (character-for-character)
- Maintain ALL connections shown in edges

STYLE: {style_name}
- Whiteboard: Hand-drawn feel, sketch-like lines, warm white background
- Minimal: Clean vectors, lots of whitespace, monochrome with one accent
- Thumbnail: Bold, high contrast, readable at 200x150px

OUTPUT: PNG image at {dimensions}

Generate the styled diagram now.
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

---

## Output Naming Convention

```
{diagram-name}--{style}.png
```

Examples:
- `orchestration--whiteboard.png`
- `orchestration--minimal.png`
- `orchestration--thumbnail.png`
- `tool-contracts--whiteboard.png`
- `failure-retry--minimal.png`

---

## Rendering Pipeline

For each `.excalidraw` file:

```
1. Read diagram-contracts.json for this diagram
   ↓
2. Extract locked structure (nodes, edges, labels)
   ↓
3. Query Memory MCP for any terminology verification
   ↓
4. For each style (whiteboard, minimal, thumbnail):
   a. Build Gemini prompt with locked structure
   b. Call Gemini API → get styled HTML/SVG
   c. Save HTML to temp file
   d. Playwright screenshot → PNG
   e. Validate against contract
   f. Save as {name}--{style}.png
   ↓
5. Log results in render-log.md
```

---

## Gemini API Integration

### API Call Structure

```bash
curl -X POST "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent" \
  -H "Content-Type: application/json" \
  -H "x-goog-api-key: ${GEMINI_API_KEY}" \
  -d '{
    "contents": [{
      "parts": [{"text": "PROMPT_HERE"}]
    }],
    "generationConfig": {
      "temperature": 0.1,
      "maxOutputTokens": 8192
    }
  }'
```

**Temperature: 0.1** - Low temperature for deterministic, consistent output.

### Master Render Prompt

```
You are a technical diagram renderer. Your ONLY job is to convert structure to styled HTML/SVG.

## LOCKED STRUCTURE (DO NOT MODIFY)

Nodes:
{{NODES_FROM_CONTRACT}}

Edges:
{{EDGES_FROM_CONTRACT}}

Labels (use EXACTLY as written):
{{LABELS_FROM_CONTRACT}}

## STYLE: {{STYLE_NAME}}

{{STYLE_SPECIFICATIONS}}

## OUTPUT REQUIREMENTS

1. Generate a complete HTML document
2. Use inline SVG for the diagram
3. Dimensions: {{DIMENSIONS}}
4. Include ALL nodes listed above
5. Include ALL edges listed above
6. Use EXACTLY the labels provided (character-for-character)

## CRITICAL CONSTRAINTS

- DO NOT add any nodes not in the list
- DO NOT add any edges not in the list
- DO NOT add explanatory text
- DO NOT paraphrase or abbreviate labels
- DO NOT add decorative elements that look like nodes

Output ONLY the HTML code, no explanation.
```

### Per-Style Specifications

**Whiteboard:**
```
Background: #faf9f7 (warm off-white)
Strokes: 2-3px, slightly rough/wavy (use SVG filters)
Fill: Hachure pattern or light solid
Font: Comic Sans MS or similar hand-drawn
Node shadows: 4px offset, soft blur
Overall: Collaborative whiteboard feel
Dimensions: 1200x800px
```

**Minimal:**
```
Background: #ffffff (pure white)
Strokes: 1-2px, clean vectors
Fill: Solid flat colors
Font: Helvetica, Arial, or Inter
Node shadows: None or 1px subtle
Accent: Tesla red #e82127 for emphasis only
Overall: Professional slide deck
Dimensions: 1600x900px
```

**Thumbnail:**
```
Background: #0a0a0a (Tesla dark)
Strokes: 3-4px, bold
Fill: Bright, saturated colors
Font: Arial Bold, 150% size
Shadows: None
Labels: White text, high contrast
Overall: Readable at small size
Dimensions: 400x300px
```

---

## Playwright Screenshot Step

After Gemini generates HTML:

```javascript
// Save HTML to temp file
// outputs/week-N/images/temp/{diagram}--{style}.html

// Navigate and screenshot
browser_navigate({
  "url": "file:///[full-path]/outputs/week-N/images/temp/orchestration--whiteboard.html"
})

browser_take_screenshot({
  "filename": "outputs/week-N/images/orchestration--whiteboard.png"
})
```

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

## Gemini Prompt Examples

### Whiteboard Style Prompt

```
You are rendering a diagram in whiteboard style.

LOCKED STRUCTURE - DO NOT MODIFY:
Nodes:
1. "Planner Agent" (agent type, blue family)
2. "Executor Agent" (agent type, blue family)
3. "Playwright MCP" (tool type, green family)
4. "User" (user type, yellow family)

Edges:
1. User → Planner Agent (labeled: "request")
2. Planner Agent → Executor Agent (labeled: "task steps")
3. Executor Agent → Playwright MCP (labeled: "tool call")
4. Playwright MCP → Executor Agent (labeled: "result")

STYLE REQUIREMENTS:
- Background: warm off-white (#faf9f7)
- Lines: slightly wobbly, hand-drawn feel
- Fill: hachure/cross-hatching pattern
- Font: hand-drawn style
- Shadows: soft, 4px offset
- Overall feel: collaborative whiteboard session

OUTPUT: 1200x800 PNG

CRITICAL: Use EXACTLY these labels. Do not paraphrase or abbreviate.
```

### Minimal Style Prompt

```
You are rendering a diagram in minimal corporate style.

LOCKED STRUCTURE - DO NOT MODIFY:
[same nodes and edges]

STYLE REQUIREMENTS:
- Background: pure white (#ffffff)
- Lines: clean, precise vectors
- Fill: solid flat colors
- Font: Helvetica or Inter, clean sans-serif
- No shadows or minimal (1px)
- Use Tesla red (#e82127) sparingly for emphasis
- Overall feel: professional slide deck

OUTPUT: 1600x900 PNG (16:9 ratio)

CRITICAL: Use EXACTLY these labels. Do not paraphrase or abbreviate.
```

---

## Quality Checklist

Before delivering images, verify:

| Check | Requirement | Status |
|-------|-------------|--------|
| All diagrams rendered | 3 styles each | [ ] |
| Contract compliance | 100% node/edge match | [ ] |
| Label accuracy | Exact match to source | [ ] |
| Style adherence | Matches specifications | [ ] |
| File naming | {name}--{style}.png format | [ ] |
| Render log | Complete and accurate | [ ] |

### FAIL CONDITIONS (must re-render):
- Missing node from contract
- Extra node not in contract
- Label mismatch (even capitalization)
- Wrong style applied
- Incorrect dimensions
- Missing render log entry

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
- **Minimal** style for most slides
- **Thumbnail** for navigation/overview slides
- **Whiteboard** for exercise/workshop slides

---

## Quality Gate Integration

This agent's output is validated by **Gate 4** (combined with Agent 04) before the parallel phase begins.
