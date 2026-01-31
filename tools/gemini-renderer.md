# Gemini Diagram Renderer

## Overview

This tool uses Google's Gemini API to render styled diagram variants from Excalidraw canonical structures.

## API Configuration

The API key is stored in `.env`:
```
GEMINI_API_KEY=your-key-here
```

## Rendering Approaches

### Approach A: Gemini Image Generation (Imagen 3)

Use Gemini to generate styled diagram images directly.

**API Endpoint:** `https://generativelanguage.googleapis.com/v1beta/models/imagen-3.0-generate-002:predict`

**Best for:** Whiteboard style, artistic variants

**Risk:** May drift from exact structure (mitigate with strong prompts)

### Approach B: Gemini Code Generation + Playwright (Recommended)

Use Gemini to generate styled SVG/HTML, then screenshot with Playwright.

**Flow:**
```
Excalidraw JSON → Gemini (generates styled HTML) → Playwright (screenshots to PNG)
```

**Best for:** Precise control, consistent output, minimal drift

---

## Implementation: Approach B (Recommended)

### Step 1: Gemini Prompt for Styled HTML

```
You are a diagram renderer. Convert this Excalidraw structure to styled HTML/SVG.

LOCKED STRUCTURE (from diagram-contracts.json):
{nodes}
{edges}
{labels}

STYLE: {whiteboard|minimal|thumbnail}

STYLE SPECIFICATIONS:
- Whiteboard: #faf9f7 background, rough stroke, hachure fill, hand-drawn font
- Minimal: #ffffff background, clean vectors, solid fill, Helvetica
- Thumbnail: #0a0a0a background, bold strokes, high contrast, large labels

OUTPUT: Complete HTML document with embedded SVG, exactly 1200x800px (or 400x300 for thumbnail)

CRITICAL CONSTRAINTS:
- Use EXACTLY these node labels: {exact_labels}
- Include ALL edges: {exact_edges}
- Do NOT add any text, nodes, or connections not listed above
```

### Step 2: Call Gemini API

```bash
curl -X POST "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent" \
  -H "Content-Type: application/json" \
  -H "x-goog-api-key: ${GEMINI_API_KEY}" \
  -d '{
    "contents": [{
      "parts": [{"text": "YOUR_PROMPT_HERE"}]
    }],
    "generationConfig": {
      "temperature": 0.1,
      "maxOutputTokens": 8192
    }
  }'
```

### Step 3: Save HTML and Screenshot with Playwright

```javascript
// Using Playwright MCP
browser_navigate({ "url": "file:///path/to/generated-diagram.html" })
browser_take_screenshot({ "filename": "orchestration--whiteboard.png" })
```

---

## Implementation: Approach A (Image Generation)

### For Imagen 3 (if available)

```bash
curl -X POST "https://generativelanguage.googleapis.com/v1beta/models/imagen-3.0-generate-002:predict" \
  -H "Content-Type: application/json" \
  -H "x-goog-api-key: ${GEMINI_API_KEY}" \
  -d '{
    "instances": [{
      "prompt": "Technical diagram showing: [DESCRIPTION FROM CONTRACT]. Style: whiteboard sketch with hand-drawn lines on warm white background. Labels must read exactly: [EXACT LABELS]. No additional text."
    }],
    "parameters": {
      "sampleCount": 1
    }
  }'
```

---

## Validation Protocol

After each render, verify against diagram-contracts.json:

```
1. Count nodes in output image
2. Compare to contract node count
3. Verify all labels are present and exact
4. Check all edges/connections exist
5. If drift detected → regenerate with stricter prompt
```

---

## Error Handling

| Error | Cause | Solution |
|-------|-------|----------|
| 403 Forbidden | Invalid API key | Check .env file |
| 429 Rate Limited | Too many requests | Add delay between renders |
| Drift detected | Gemini added content | Regenerate with explicit "DO NOT" |
| Missing labels | Prompt too long | Chunk into smaller diagrams |

---

## Usage in Agent 05

When running Agent 05 (Diagram Renderer):

1. Load `.env` to get `GEMINI_API_KEY`
2. Read `diagram-contracts.json` for locked structure
3. For each diagram × style combination:
   - Build prompt with locked labels
   - Call Gemini API (Approach B preferred)
   - Save HTML output
   - Screenshot with Playwright
   - Validate against contract
4. Log results in `render-log.md`
