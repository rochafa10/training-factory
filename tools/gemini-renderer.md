# Gemini Diagram Renderer

## Overview

This tool uses Google's Gemini API (`nano-banana-pro-preview`) to render styled diagram variants from Excalidraw canonical structures. All diagram rendering goes through nano-banana's native image generation — a single API call that produces Tesla-branded images with accurate labels.

## API Configuration

The API key is stored in `.env`:
```
GEMINI_API_KEY=your-key-here
```

**Model:** `nano-banana-pro-preview`
**Fallbacks:** `gemini-2.5-flash-image`, `gemini-3-pro-image-preview`
**Endpoint:** `https://generativelanguage.googleapis.com/v1beta/models/nano-banana-pro-preview:generateContent`

---

## Implementation

### Step 1: Build the Render Prompt

Include the locked structure from `diagram-contracts.json` and the target style:

```
Generate an image: A {STYLE_DESCRIPTION} diagram showing {DIAGRAM_TITLE}.

STRUCTURE (render EXACTLY):
- Nodes: {NODES_FROM_CONTRACT}
- Edges: {EDGES_FROM_CONTRACT}
- Labels (use EXACTLY as written): {LABELS_FROM_CONTRACT}

STYLE: {STYLE_SPECS}

CONSTRAINTS:
- Use EXACTLY these labels (character-for-character)
- Include ALL nodes and edges listed above
- Do NOT add any nodes, edges, or text not listed above
- Do NOT paraphrase or abbreviate labels

Dimensions: {WIDTH}x{HEIGHT} landscape orientation.
```

### Step 2: Call Gemini API

```bash
curl -k -s "https://generativelanguage.googleapis.com/v1beta/models/nano-banana-pro-preview:generateContent?key=${GEMINI_API_KEY}" \
  -H "Content-Type: application/json" \
  -d '{
    "contents": [{"parts": [{"text": "YOUR_PROMPT_HERE"}]}],
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
        print(f\"Saved: {len(base64.b64decode(part[chr(105)+chr(110)+chr(108)+chr(105)+chr(110)+chr(101)+chr(68)+chr(97)+chr(116)+chr(97)][chr(100)+chr(97)+chr(116)+chr(97)]))} bytes\")
"
```

**Note:** Use `-k` flag for SSL on Windows.

**Simplified version** (save response then extract):
```bash
# Step A: Call API and save response
curl -k -s "https://generativelanguage.googleapis.com/v1beta/models/nano-banana-pro-preview:generateContent?key=${GEMINI_API_KEY}" \
  -H "Content-Type: application/json" \
  -d @request.json -o response.json

# Step B: Extract image
python -c "
import json, base64
data = json.load(open('response.json'))
for part in data['candidates'][0]['content']['parts']:
    if 'inlineData' in part:
        open('output.png', 'wb').write(base64.b64decode(part['inlineData']['data']))
"
```

### Step 3: Validate Against Contract

After each render, verify against `diagram-contracts.json`:

1. Visually confirm all nodes from contract are present
2. Verify all labels match exactly
3. Check all edges/connections exist
4. If drift detected → regenerate with stricter prompt

---

## Per-Style Prompt Specs

### Slide-Embed (DEFAULT)
```
Dark-themed diagram on near-black background (#0a0a0a).
Node fills: dark saturated colors (blue #1e3a5f, green #1a4d2e, purple #2d1b69, orange #5c3d1a).
Node borders: bright accents (blue #4a9eed, green #22c55e, purple #8b5cf6, orange #f59e0b).
White text labels (#ffffff). Clean solid strokes. Tesla red #e82127 for emphasis.
Professional corporate training style. 880x420 landscape.
```

### Whiteboard
```
Hand-drawn whiteboard style on warm off-white background (#faf9f7).
Slightly rough/wavy strokes, hachure or cross-hatch fills, hand-drawn font feel.
Soft shadows. Pastel node colors. Dark gray edges (#495057). Dark charcoal labels (#212529).
Collaborative brainstorming feel. 1200x800 landscape.
```

### Minimal
```
Clean professional diagram on pure white background (#ffffff).
Solid flat colors, clean vector strokes (1-2px), Helvetica/Arial font.
No shadows. Muted professional palette. Tesla red #e82127 for accent only.
Corporate slide deck style. 1600x900 landscape.
```

### Thumbnail
```
High-contrast diagram on dark background (#0a0a0a).
Bold thick strokes (3-4px), bright saturated fills, large labels (150% size).
White text (#ffffff). No shadows. Readable at small size.
400x300 landscape.
```

---

## Output Format

- **File type:** JPEG (nano-banana returns JPEG, not PNG)
- **No transparency** — background is opaque (fine for dark slides)
- **Naming:** `{diagram-name}--{style}.png` in `outputs/week-N/images/`

---

## Fallback Models

If `nano-banana-pro-preview` is unavailable, use the same API pattern with:
1. `gemini-2.5-flash-image`
2. `gemini-3-pro-image-preview`

---

## Error Handling

| Error | Cause | Solution |
|-------|-------|----------|
| 400 API key expired | Key needs renewal | Update `.env` — check MCP config for working key |
| 403 Forbidden | Invalid API key | Verify key at https://aistudio.google.com/apikey |
| 429 Rate Limited | Too many requests | Add delay between renders |
| Drift detected | Gemini added/removed content | Regenerate with stricter "DO NOT" constraints |
| Empty response | Wrong model or missing responseModalities | Ensure `responseModalities: ["TEXT", "IMAGE"]` |

---

## Usage in Agent 05

When running Agent 05 (Diagram Renderer):

1. Load `.env` to get `GEMINI_API_KEY`
2. Read `diagram-contracts.json` for locked structure
3. For each diagram × style combination:
   - Build prompt with locked labels + style specs
   - Call nano-banana API
   - Extract and save image
   - Validate against contract
4. For chart entries → use AntV Chart MCP instead
5. Log results in `render-log.md`
