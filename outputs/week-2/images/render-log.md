# Diagram Render Log - Week 2

**Rendered:** 2026-02-22
**Source:** outputs/week-2/diagrams/
**Renderer:** Gemini nano-banana-pro-preview (diagrams), AntV Chart MCP (charts)

## Renders

| Source | Style | Output | Validation | Notes |
|--------|-------|--------|------------|-------|
| prompts-vs-agents.excalidraw | slide-embed | prompts-vs-agents--slide-embed.png | PASS | 7/7 nodes, 5/5 edges, all labels correct. Left/right comparison layout. 413 KB |
| plan-execute-iterate.excalidraw | slide-embed | plan-execute-iterate--slide-embed.png | PASS | 6/6 nodes, 6/6 edges, feedback loop visible. Decision diamond rendered correctly. 415 KB |
| mcp-architecture.excalidraw | slide-embed | mcp-architecture--slide-embed.png | PASS | 9/9 nodes, 5/5 edges, before/after layout. Error nodes in red. 503 KB |
| copilot-three-modes.excalidraw | slide-embed | copilot-three-modes--slide-embed.png | PASS | 6/6 nodes, 3-column layout with autonomy arrow. Shortcut labels included. 573 KB |
| agent-workflow.excalidraw | slide-embed | agent-workflow--slide-embed.png | PASS | 7/7 nodes, 8/8 edges, both feedback loops visible. Footer key message present. 445 KB |
| (AntV data) | chart | time-savings--chart.png | PASS | Column chart, 5 categories, Tesla dark theme, correct palette |
| (AntV data) | chart | skill-progression--chart.png | PASS | Radar chart, 5 dimensions x 2 groups, Week 1 vs Week 2 comparison |

## Validation Summary

- **Total renders:** 7
- **Passed first attempt:** 7
- **Required correction:** 0
- **Failed (manual review needed):** 0

## Contract Compliance

| Diagram | Nodes Expected | Nodes Found | Edges Expected | Edges Found | Labels Match |
|---------|----------------|-------------|----------------|-------------|--------------|
| prompts-vs-agents | 7 | 7 | 5 | 5 | PASS 100% |
| plan-execute-iterate | 6 | 6 | 6 | 6 | PASS 100% |
| mcp-architecture | 9 | 9 | 5 | 5 | PASS 100% |
| copilot-three-modes | 6 | 6 | 2 | 2 | PASS 100% |
| agent-workflow | 7 | 7 | 8 | 8 | PASS 100% |

## Chart Details

| Chart | Type | Tool | Data Points | Theme | Dimensions |
|-------|------|------|-------------|-------|------------|
| time-savings--chart.png | Column | AntV generate_column_chart | 5 categories | dark, #0a0a0a bg | 880x420 |
| skill-progression--chart.png | Radar | AntV generate_radar_chart | 5 dims x 2 groups | dark, #0a0a0a bg | 880x420 |

## Model Details

- **Diagram model:** nano-banana-pro-preview (Gemini API v1beta)
- **Temperature:** 0.2
- **Response modalities:** TEXT, IMAGE
- **Fallback models available:** gemini-2.5-flash-image, gemini-3-pro-image-preview
- **Chart tool:** AntV Chart MCP with Tesla dark theme palette (#e82127, #4a9eed, #22c55e, #f59e0b, #8b5cf6)
