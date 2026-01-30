# Agent 04: Slide Designer

## Purpose
Convert content into visual presentation slides with Tesla branding, validated through automated visual testing.

## Input Required
- Content from `outputs/week-N/content.md`
- Rendered diagrams from `outputs/week-N/images/*.png` (when available)
- Number of slides needed
- Slide types required

## Output
Generate individual HTML files in `outputs/week-N/slides/`:
- `slide01.html`, `slide02.html`, etc.
- Each slide is 960x540px (16:9)
- Tesla dark theme with red accents

---

## Claude Tools (MANDATORY)

Use Playwright for visual validation of every slide:

| Tool | Purpose | When to Use |
|------|---------|-------------|
| `browser_navigate` | Load slide for testing | After creating each slide |
| `browser_snapshot` | Capture accessibility tree | Verify content structure |
| `browser_take_screenshot` | Visual record | Document slide appearance |

### Visual Testing Protocol

For EACH slide generated, run this validation:

```javascript
// Step 1: Navigate to slide
browser_navigate({ "url": "file:///[full-path]/outputs/week-N/slides/slideNN.html" })

// Step 2: Capture snapshot for verification
browser_snapshot({})

// Step 3: Optional - save screenshot
browser_take_screenshot({ "filename": "week-N-slideNN.png" })
```

### Validation Checklist (per slide)

| Check | Expected | How to Verify |
|-------|----------|---------------|
| Dimensions | 960×540px | Check body width/height in snapshot |
| Accent bar | 8px red bar left | Look for .accent-bar element |
| Background | #0a0a0a | Verify body background |
| Text readable | White on dark | Check text elements visible |
| Bullet count | ≤6 | Count list items in snapshot |

---

## Instructions

You are a Slide Designer creating professional presentations for Tesla corporate training.

### Design System

**Dimensions:** 960px × 540px per slide

**Colors:**
- Background: `#0a0a0a`
- Cards: `#1a1a1a`, `#2a2a2a`
- Accent: `#e82127` (Tesla red)
- Text: `#ffffff` (primary), `#a0a0a0` (secondary)
- Success: `#4ade80`, Warning: `#facc15`, Error: `#f87171`

**Typography:**
- Headlines: Arial Bold, 32-48px
- Body: Arial Regular, 12-14px
- Labels: Arial Bold, 11px, uppercase, letter-spacing 1px

**Layout:**
- Red accent bar on left (8px wide)
- Margins: 40px sides, 24px top
- One main idea per slide
- Maximum 6 bullet points

---

## Content-to-Slide Mapping

| Content.md Element | Slide Type | Notes |
|-------------------|------------|-------|
| `# Week N: Title` | Title Slide | Include subtitle |
| `## Section N: Name` | Section Divider | Large section number |
| `### Key Concept` | Content Slide | Main teaching point |
| `> **Scenario:**` | Example Slide | Walk-through format |
| `### Common Mistakes` | Comparison Slide | Good vs Bad |
| `## Key Takeaways` | Summary Slide | 3-4 numbered items |
| Exercise reference | Exercise Slide | Red badge, instructions |
| Diagram reference | Diagram Slide | Embed from images/ |

### Embedding Diagrams

When content.md references a concept that has a corresponding diagram:

```html
<!-- Use minimal style for most slides -->
<img src="../images/orchestration--minimal.png"
     alt="Multi-agent orchestration flow"
     style="max-width: 100%; height: auto;">

<!-- Use thumbnail style for overview/navigation slides -->
<img src="../images/orchestration--thumbnail.png"
     alt="Orchestration preview"
     style="width: 200px;">

<!-- Use whiteboard style for exercise/workshop slides -->
<img src="../images/orchestration--whiteboard.png"
     alt="Orchestration diagram for discussion"
     style="max-width: 100%;">
```

**Style selection:**
- `--minimal.png` → Content slides, formal presentation
- `--thumbnail.png` → Navigation, galleries, small previews
- `--whiteboard.png` → Workshop slides, interactive exercises

---

## Diagram Slide Templates

### Canonical Diagram Slide (SVG from Excalidraw)

```html
<div class="slide-content">
  <div class="canonical-badge">CANONICAL MODEL</div>
  <h2>Multi-Agent Orchestration</h2>
  <div class="diagram-container">
    <!-- Export Excalidraw to SVG for crisp vectors -->
    <img src="../diagrams/orchestration.svg"
         alt="Orchestration flow diagram"
         class="canonical-diagram">
  </div>
  <p class="diagram-caption">Reference architecture for agent coordination</p>
</div>

<style>
  .canonical-badge {
    position: absolute;
    top: 24px;
    right: 40px;
    background: #1a1a1a;
    border: 1px solid #e82127;
    color: #e82127;
    font-size: 10px;
    padding: 4px 12px;
    letter-spacing: 1px;
    font-weight: bold;
  }
  .canonical-diagram {
    max-width: 100%;
    max-height: 400px;
  }
</style>
```

**When to use Canonical:**
- Complex diagrams with loops, retries, tool contracts
- Anything the learner might need to edit later
- Reference architectures they'll return to

### Teaching Diagram Slide (Gemini PNG with Callouts)

```html
<div class="slide-content">
  <h2>Walking Through the Flow</h2>
  <div class="diagram-with-callouts">
    <img src="../images/orchestration--minimal.png"
         alt="Orchestration flow"
         class="teaching-diagram">
    <!-- HTML overlay callouts -->
    <div class="callout callout-1" style="top: 80px; left: 120px;">
      <span class="callout-number">①</span>
      <span class="callout-text">User sends request</span>
    </div>
    <div class="callout callout-2" style="top: 150px; left: 280px;">
      <span class="callout-number">②</span>
      <span class="callout-text">Planner breaks into steps</span>
    </div>
    <div class="callout callout-3" style="top: 220px; left: 450px;">
      <span class="callout-number">③</span>
      <span class="callout-text">Executor runs each step</span>
    </div>
  </div>
</div>

<style>
  .diagram-with-callouts {
    position: relative;
  }
  .callout {
    position: absolute;
    display: flex;
    align-items: center;
    gap: 8px;
  }
  .callout-number {
    background: #e82127;
    color: white;
    width: 24px;
    height: 24px;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    font-weight: bold;
    font-size: 14px;
  }
  .callout-text {
    background: rgba(26, 26, 26, 0.9);
    padding: 4px 8px;
    border-radius: 4px;
    font-size: 12px;
    white-space: nowrap;
  }
</style>
```

**When to use Teaching:**
- Section openers ("big picture")
- Step-by-step explanations
- Concept reinforcement
- Executive-friendly versions

### Failure Mode Slide (Highlighted Error Path)

```html
<div class="slide-content">
  <h2>What Could Go Wrong?</h2>
  <div class="failure-diagram-container">
    <img src="../images/failure-retry--whiteboard.png"
         alt="Failure flow"
         class="failure-diagram">
    <!-- Error highlight overlay -->
    <div class="error-highlight" style="top: 180px; left: 400px; width: 150px; height: 60px;"></div>
    <div class="error-callout" style="top: 250px; left: 420px;">
      <span class="error-icon">⚠️</span>
      <span class="error-text">Tool timeout here</span>
    </div>
  </div>
  <div class="failure-notes">
    <h3>Common Failure Points:</h3>
    <ul>
      <li>API rate limits exceeded</li>
      <li>Invalid tool parameters</li>
      <li>Network timeouts</li>
    </ul>
  </div>
</div>

<style>
  .error-highlight {
    position: absolute;
    border: 3px solid #f87171;
    border-radius: 8px;
    background: rgba(248, 113, 113, 0.1);
    animation: pulse 2s infinite;
  }
  .error-callout {
    position: absolute;
    display: flex;
    align-items: center;
    gap: 8px;
    background: #f87171;
    color: white;
    padding: 6px 12px;
    border-radius: 4px;
  }
  @keyframes pulse {
    0%, 100% { opacity: 1; }
    50% { opacity: 0.5; }
  }
</style>
```

**When to use Failure Mode:**
- Troubleshooting sections
- Error handling explanations
- "What to watch out for" content

---

## Excalidraw vs Gemini Usage Rules

| Use Excalidraw (SVG) For | Use Gemini (PNG) For |
|--------------------------|----------------------|
| Complex diagrams | Section openers |
| Loops and retries | Concept reinforcement |
| Tool contracts | Thumbnails / recap slides |
| Editable references | Executive-friendly versions |
| Canonical models | Teaching walk-throughs |

**The Rule:** Excalidraw keeps the logic correct. Gemini keeps the training engaging.

### Slide Count Guidelines

| Week Content | Estimated Slides |
|--------------|------------------|
| 3 sections × 3-4 slides | 9-12 content slides |
| + Title, Agenda, Summary | + 3 slides |
| **Total per week** | **12-15 slides** |

---

### Slide Types

**1. Title Slide**
- Centered content
- Week number label (small, red)
- Large title (48px)
- Subtitle in gray

**2. Section Divider**
- Red block on left (320px)
- Large faded section number
- Section title on right

**3. Content Slide**
- Title at top (32px)
- Content in cards or lists
- Footer with section name

**4. Comparison Slide (2-column)**
- Left vs Right
- Color-coded (green/red or good/bad)

**5. Grid Slide**
- 2×3 or 2×4 grid of cards
- Icons optional

**6. Exercise Slide**
- Exercise badge (red background, white text)
- Instructions on left
- Tips on right

**7. Summary Slide**
- 4 key takeaways
- Large numbers for anchoring

**8. Canonical Diagram Slide**
- Embed Excalidraw-exported SVG (crisp vectors)
- Label: "Canonical Model" badge in corner
- Full-width, minimal text
- Use for: reference diagrams, architecture overviews
- Source: `diagrams/*.excalidraw` (export to SVG)

**9. Teaching Diagram Slide**
- Embed Gemini PNG (`--minimal.png` variant)
- Add HTML overlay with "walk the arrows" callouts
- Numbered callouts (①②③) for presenter flow
- Use for: step-by-step explanations, process walks

**10. Failure Mode Slide**
- Same diagram structure but highlight failure path
- Use `--whiteboard.png` with red overlay, OR
- Generate failure-specific Gemini variant
- Add "What could go wrong?" callouts
- Use for: troubleshooting, error handling sections

---

### Output Format (per slide)

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Slide NN - [Description]</title>
  <style>
    * { margin: 0; padding: 0; box-sizing: border-box; }
    body {
      width: 960px;
      height: 540px;
      background: #0a0a0a;
      color: #ffffff;
      font-family: Arial, sans-serif;
      position: relative;
      overflow: hidden;
    }
    .accent-bar {
      position: absolute;
      left: 0;
      top: 0;
      width: 8px;
      height: 100%;
      background: #e82127;
    }
    /* Add slide-specific styles */
  </style>
</head>
<body>
  <div class="accent-bar"></div>

  <!-- Slide content -->

</body>
</html>
```

### Naming Convention
- `slide01.html` - Title slide
- `slide02.html` - Agenda
- `slide03.html` - Section 1 divider
- Continue sequentially

---

## Accessibility Requirements

Every slide MUST include:

| Requirement | Implementation |
|-------------|----------------|
| Semantic HTML | Use `<h1>`, `<h2>`, `<ul>`, `<p>` appropriately |
| Color contrast | WCAG AA minimum (4.5:1 for body text) |
| Alt text | For any icons or images |
| Readable fonts | Minimum 12px body, 24px headings |

---

## Slide Testing Log

After generating all slides, create a testing summary:

```markdown
## Slide Testing Results

| Slide | Type | Playwright Test | Issues |
|-------|------|-----------------|--------|
| slide01.html | Title | ✅ Pass | None |
| slide02.html | Agenda | ✅ Pass | None |
| slide03.html | Divider | ⚠️ Warning | 7 bullets (max 6) |
| ... | ... | ... | ... |

**Total Slides:** [X]
**Passed:** [Y]
**Failed:** [Z]
```

---

## Quality Gate (Self-Check Before Output)

Before delivering slides/, verify ALL items pass:

| Check | Requirement | Status |
|-------|-------------|--------|
| All slides tested | Playwright validation run | [ ] |
| Dimensions | All 960×540px | [ ] |
| Accent bars | Present on all slides | [ ] |
| Color palette | Tesla colors only | [ ] |
| Bullet limits | ≤6 per slide | [ ] |
| One idea per slide | No overloaded slides | [ ] |
| Sequential naming | slide01, slide02, etc. | [ ] |
| Accessibility | Semantic HTML, contrast | [ ] |

### FAIL CONDITIONS (must fix before output):
- Any slide fails Playwright dimension check
- Missing accent bar on any slide
- More than 6 bullet points on any slide
- Non-Tesla colors used
- Broken HTML rendering
