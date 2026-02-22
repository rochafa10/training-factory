# Gemini Diagram Renderer

## Overview

This tool uses Google's Gemini API to render styled diagram variants from Excalidraw canonical structures.

## API Configuration

The API key is stored in `.env`:
```
GEMINI_API_KEY=your-key-here
```

## Rendering Approaches

### Approach A: Gemini Image Generation (nano-banana)

Use Gemini's native image generation to produce styled diagrams and infographics directly as PNG images.

**Model:** `nano-banana-pro-preview` (primary), `gemini-2.0-flash-exp-image-generation` (fallback)
**API Endpoint:** `https://generativelanguage.googleapis.com/v1beta/models/nano-banana-pro-preview:generateContent`

**Best for:** Infographics, polished comparison visuals, artistic whiteboard variants

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

Playwright blocks `file://` URLs. Serve the generated HTML over HTTP:

```bash
# Start local server (run in background)
python -m http.server 8787 --directory outputs/week-N/images/temp &
```

```javascript
// Using Playwright MCP — navigate via HTTP
browser_navigate({ "url": "http://localhost:8787/orchestration--whiteboard.html" })
browser_take_screenshot({ "filename": "orchestration--whiteboard.png" })
```

```bash
# Kill server after rendering
pkill -f "python -m http.server 8787"
```

---

## Implementation: Approach A (nano-banana Image Generation)

### API Call

```bash
curl -k -X POST "https://generativelanguage.googleapis.com/v1beta/models/nano-banana-pro-preview:generateContent" \
  -H "Content-Type: application/json" \
  -H "x-goog-api-key: ${GEMINI_API_KEY}" \
  -d '{
    "contents": [{"parts": [{"text": "YOUR_PROMPT_HERE"}]}],
    "generationConfig": {
      "temperature": 0.2,
      "responseModalities": ["TEXT", "IMAGE"]
    }
  }'
```

**Note:** Use `-k` flag for SSL on Windows environments.

### Response Handling

The response contains base64-encoded image data. Extract and save:

```python
import json, base64
with open("gemini-response.json") as f:
    data = json.load(f)
for candidate in data.get("candidates", []):
    for part in candidate.get("content", {}).get("parts", []):
        if "inlineData" in part:
            img = base64.b64decode(part["inlineData"]["data"])
            with open("output.png", "wb") as f:
                f.write(img)
```

### Fallback Models (if nano-banana is unavailable)

1. `gemini-2.0-flash-exp-image-generation` — same API pattern
2. `gemini-2.5-flash-image` — same API pattern
3. `gemini-3-pro-image-preview` — same API pattern

### Practical Workflow

1. Write prompt to a JSON request file (`tools/gemini-request.json`)
2. `curl -k -s -X POST ... -d @tools/gemini-request.json -o tools/gemini-response.json`
3. Extract image with Python base64 decode
4. Validate against diagram contracts

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
