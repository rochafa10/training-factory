# Diagram Render Log - Week 1

**Rendered:** 2026-01-22
**Source:** outputs/week-1/diagrams/diagram-contracts.json
**API:** Gemini 2.0 Flash

---

## Renders

| Source | Style | Output | Validation | Notes |
|--------|-------|--------|------------|-------|
| sample-flow (test) | minimal | sample-flow--minimal.png | ✅ Pass | All 4 nodes, 4 edges, exact labels |
| sample-flow (test) | whiteboard | sample-flow--whiteboard.png | ✅ Pass | Curved generation arrow, pastel colors |
| sample-flow (test) | thumbnail | sample-flow--thumbnail.png | ✅ Pass | Dark bg, no edge labels (correct for thumbnail) |

## Validation Summary

- **Total renders:** 3
- **Passed first attempt:** 3
- **Required correction:** 0
- **Failed:** 0

## Contract Compliance

| Diagram | Nodes Expected | Nodes Found | Edges Expected | Edges Found | Labels Match |
|---------|----------------|-------------|----------------|-------------|--------------|
| sample-flow | 4 | 4 | 4 | 4 | ✅ 100% |

## Nodes Verified

| Node | Label | Type | Color | Present in All Styles |
|------|-------|------|-------|----------------------|
| user | User | ellipse | #ffd43b (yellow) | ✅ |
| bottlerocket | Bottle Rocket | rectangle | #4dabf7 (blue) | ✅ |
| model | AI Model | rounded rect | #69db7c (green) | ✅ |
| response | Response | parallelogram | #a5d8ff (light blue) | ✅ |

## Edges Verified

| From | To | Label | Present |
|------|----|-------|---------|
| User | Bottle Rocket | prompt | ✅ (minimal, whiteboard) |
| Bottle Rocket | AI Model | request | ✅ |
| AI Model | Bottle Rocket | generation | ✅ (curved in whiteboard/thumbnail) |
| Bottle Rocket | Response | output | ✅ |

## Style Comparison

| Aspect | Minimal | Whiteboard | Thumbnail |
|--------|---------|------------|-----------|
| Background | #ffffff | #faf9f7 | #0a0a0a |
| Dimensions | 800x400 | 900x350 | 400x200 |
| Edge labels | Yes | Yes | No (too small) |
| Text color | Black | Black | White |
| Feel | Professional | Collaborative | Bold/compact |

## API Details

- **Model:** gemini-2.0-flash
- **Temperature:** 0.1-0.2 (low for consistency)
- **Max tokens:** 8192
- **Average response time:** ~3 seconds

## Known Issues

1. **Minimal style:** "generation" and "output" labels overlap when both use straight lines
   - **Fix:** Prompt for curved return arrow (applied in whiteboard/thumbnail)

2. **Label placement:** Some edge labels appear inside nodes
   - **Fix:** Specify "below the line" or "above the arrow" in prompt

## Recommendations for Production

1. Use whiteboard prompt's curved arrow technique for all styles
2. Increase node spacing in minimal style
3. Consider SVG filter for true hand-drawn effect in whiteboard
