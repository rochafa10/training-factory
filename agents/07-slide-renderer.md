# Agent 07: Slide Renderer

## Purpose
Convert a structured slide plan into validated HTML slide files with Tesla branding. This agent handles rendering only — all content decisions were made by Agent 06 (Slide Planner).

## Input Required
- Slide plan from `outputs/week-N/slides/slide-plan.md`
- Rendered diagrams from `outputs/week-N/images/*.png` (for embedding)
- Excalidraw files from `outputs/week-N/diagrams/*.excalidraw` (for canonical SVG export)

## Output
Generate individual HTML files in `outputs/week-N/slides/`:
- `slide01.html`, `slide02.html`, etc.
- Each slide is 960x540px (16:9)
- Tesla dark theme with red accents

---

## Claude Tools (MANDATORY)

| Tool | Purpose | When to Use |
|------|---------|-------------|
| **Playwright** `browser_navigate` | Load slide for testing | After creating each slide |
| **Playwright** `browser_snapshot` | Capture accessibility tree | Verify content structure |
| **Playwright** `browser_take_screenshot` | Visual record | Document slide appearance |
| **Canva MCP** | Generate branded infographics | When slide plan specifies type `Infographic` |
| **AntV Chart MCP** | Generate inline data charts | When slide plan specifies type `Chart` (if not pre-rendered by Agent 05) |

See `tools/visual-tools.md` for full tool reference.

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

You are a Slide Renderer converting structured slide plans into polished HTML presentations for Tesla corporate training.

### Core Principle
**Render the plan faithfully.** The slide plan defines WHAT each slide contains. Your job is to produce clean, valid HTML that matches the plan exactly. Do not add, remove, or rearrange content.

---

## Design System

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
- Red accent bar on left (8px wide, full height)
- Margins: 40px sides, 24px top
- Container padding: 32px 40px 24px 48px

---

## Base HTML Template

Every slide starts from this template:

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

---

## Slide Type Templates

### Type: Title
```html
<!-- Centered content, flexbox -->
<body style="display: flex; align-items: center; justify-content: center;">
  <div class="accent-bar"></div>
  <div class="content" style="text-align: center; padding: 40px;">
    <p class="week-label">[Week label from plan]</p>
    <h1>[Title from plan]</h1>
    <p class="subtitle">[Subtitle from plan]</p>
    <p class="meta">[Meta from plan]</p>
  </div>
</body>
```
- `.week-label`: 14px bold uppercase, letter-spacing 3px, color #e82127
- `h1`: 48px bold, margin-bottom 16px
- `.subtitle`: 24px, color #a0a0a0
- `.meta`: 14px, color #a0a0a0

### Type: Divider
```html
<!-- Red block left (320px), content right -->
<div class="section-block">
  <span class="section-number">[Section number, e.g. "01"]</span>
</div>
<div class="section-content">
  <h1>[Section title from plan]</h1>
  <p class="duration">[Duration from plan]</p>
</div>
```
- `.section-block`: width 320px, height 100%, background #e82127, position absolute
- `.section-number`: 180px font-size, color rgba(255,255,255,0.15)
- `.section-content`: margin-left 360px, vertically centered
- `h1`: 40px bold

### Type: Content
```html
<div class="container">
  <h1>[Title from plan]</h1>
  <ul>
    <li>[Bullet 1]</li>
    <li>[Bullet 2]</li>
    <!-- Max 6 bullets -->
  </ul>
</div>
```
- `.container`: padding 32px 40px 24px 48px
- `h1`: 32px bold
- Card variant: wrap content in `.card` with background #1a1a1a, border-radius 12px, padding 24px

### Type: Comparison
```html
<div class="container">
  <h1>[Title from plan]</h1>
  <div class="columns">
    <div class="column left">
      <h2>[Left header]</h2>
      <ul><!-- Left items --></ul>
    </div>
    <div class="column right">
      <h2>[Right header]</h2>
      <ul><!-- Right items --></ul>
    </div>
  </div>
</div>
```
- `.columns`: display flex, gap 24px
- `.column`: flex 1, background #1a1a1a, border-radius 12px, padding 24px
- Left column: border-top 3px solid #4ade80 (good)
- Right column: border-top 3px solid #f87171 (bad)

### Type: Grid
```html
<div class="container">
  <h1>[Title from plan]</h1>
  <div class="stats-grid">
    <div class="stat-card">
      <span class="stat-number">[Number]</span>
      <span class="stat-label">[Label]</span>
      <span class="source">[Source]</span>
    </div>
    <!-- Repeat per card -->
  </div>
</div>
```
- `.stats-grid`: display grid, grid-template-columns repeat(3, 1fr), gap 24px
- `.stat-card`: background #1a1a1a, border-radius 12px, padding 24px, text-align center
- `.stat-number`: 48px bold, color #e82127
- `.stat-label`: 14px, color #a0a0a0
- `.source`: 10px, color #666

### Type: Exercise
```html
<div class="container">
  <div class="exercise-badge">[Badge text from plan]</div>
  <h1>[Title from plan]</h1>
  <div class="main-content">
    <div class="left-col">
      <ol><!-- Steps from plan --></ol>
    </div>
    <div class="right-col">
      <div class="time-box">[Time from plan]</div>
      <div class="criteria">
        <h3>Success Criteria</h3>
        <ul><!-- Criteria from plan --></ul>
      </div>
    </div>
  </div>
</div>
```
- `.exercise-badge`: background #e82127, color white, padding 4px 16px, font-size 12px bold uppercase
- `.main-content`: display flex, gap 32px
- `.time-box`: background #1a1a1a, padding 12px, text-align center, border-radius 8px

### Type: Summary
```html
<div class="container">
  <h1>[Title from plan]</h1>
  <div class="takeaways">
    <div class="takeaway">
      <span class="takeaway-number">1</span>
      <p>[Takeaway text]</p>
    </div>
    <!-- Repeat per takeaway -->
  </div>
</div>
```
- `.takeaway`: display flex, align-items center, gap 16px, margin-bottom 16px
- `.takeaway-number`: 32px bold, color #e82127, min-width 40px

### Type: Canonical Diagram
```html
<div class="slide-content">
  <div class="canonical-badge">CANONICAL MODEL</div>
  <h2>[Title from plan]</h2>
  <div class="diagram-container">
    <img src="[SVG path from plan]" alt="[Title]" class="canonical-diagram">
  </div>
</div>
```
- `.canonical-badge`: position absolute, top 24px, right 40px, background #1a1a1a, border 1px solid #e82127, color #e82127, font-size 10px, padding 4px 12px
- `.canonical-diagram`: max-width 100%, max-height 400px

### Type: Teaching Diagram
```html
<div class="slide-content">
  <h2>[Title from plan]</h2>
  <div class="diagram-with-callouts">
    <img src="[Image path from plan]" alt="[Title]" class="teaching-diagram">
    <!-- Callouts from plan -->
    <div class="callout" style="top: [Y]px; left: [X]px;">
      <span class="callout-number">①</span>
      <span class="callout-text">[Callout text from plan]</span>
    </div>
    <!-- Repeat per callout -->
  </div>
</div>
```
- `.diagram-with-callouts`: position relative
- `.callout`: position absolute, display flex, align-items center, gap 8px
- `.callout-number`: background #e82127, color white, 24px circle, font-weight bold, 14px
- `.callout-text`: background rgba(26,26,26,0.9), padding 4px 8px, border-radius 4px, 12px, white-space nowrap
- Position callouts based on plan hints; adjust as needed for readability

### Type: Failure Mode
```html
<div class="slide-content">
  <h2>[Title from plan]</h2>
  <div class="failure-diagram-container">
    <img src="[Image path from plan]" alt="[Title]" class="failure-diagram">
    <div class="error-highlight" style="[positioned over error area]"></div>
    <div class="error-callout" style="[positioned near error]">
      <span class="error-icon">⚠️</span>
      <span class="error-text">[Error description]</span>
    </div>
  </div>
</div>
```
- `.error-highlight`: position absolute, border 3px solid #f87171, border-radius 8px, background rgba(248,113,113,0.1), animation pulse 2s infinite
- `.error-callout`: position absolute, background #f87171, color white, padding 6px 12px, border-radius 4px

### Type: Chart
```html
<div class="slide-content">
  <h2>[Title from plan]</h2>
  <div class="chart-container">
    <img src="[Chart image path from plan]" alt="[Title]" class="chart-image">
  </div>
  <p class="chart-caption">[Caption from plan]</p>
</div>
```
- `.chart-container`: display flex, justify-content center, padding 16px 40px
- `.chart-image`: max-width 100%, max-height 380px, border-radius 8px
- `.chart-caption`: text-align center, font-size 12px, color #a0a0a0, margin-top 8px

**Note:** Chart images are pre-rendered by Agent 05 using AntV Chart MCP with Tesla dark theme. If the chart PNG doesn't exist yet, use AntV Chart MCP to generate it inline.

### Type: Infographic
```html
<div class="slide-content infographic-slide">
  <img src="[Infographic image path from plan]" alt="[Title]" class="infographic-image">
</div>
```
- `.infographic-slide`: display flex, align-items center, justify-content center, padding 0
- `.infographic-image`: max-width 960px, max-height 540px, object-fit contain

**Note:** Infographic images are generated by Canva MCP. Use `create_design` with Tesla brand colors, export at 960x540px to match slide dimensions, and save as `{name}--infographic.png` in `outputs/week-N/images/`.

**Canva workflow for infographic slides:**
1. Use Canva MCP `create_design` with dimensions 960x540
2. Apply Tesla brand: background #0a0a0a, accent #e82127, text #ffffff
3. Add content elements from slide plan (title, key points, icons)
4. Export as PNG to `outputs/week-N/images/{name}--infographic.png`
5. Embed in slide HTML with full-bleed layout

### Type: Screenshot
```html
<div class="slide-content">
  <h2>[Title from plan]</h2>
  <div class="screenshot-container">
    <img src="[Screenshot image path from plan]" alt="[Title]" class="screenshot-image">
    <!-- Annotation callouts from plan -->
    <div class="screenshot-callout" style="top: [Y]px; left: [X]px;">
      <span class="callout-number">①</span>
      <span class="callout-text">[Annotation text from plan]</span>
    </div>
    <!-- Repeat per annotation -->
  </div>
  <p class="screenshot-source">[Source URL or tool name]</p>
</div>
```
- `.screenshot-container`: position relative, display flex, justify-content center, padding 8px 40px
- `.screenshot-image`: max-width 100%, max-height 380px, border-radius 8px, border 1px solid #2a2a2a
- `.screenshot-callout`: position absolute, display flex, align-items center, gap 6px
- `.callout-number`: background #e82127, color white, width 22px, height 22px, border-radius 50%, font-weight bold, font-size 13px, display flex, align-items center, justify-content center
- `.callout-text`: background rgba(26,26,26,0.9), padding 4px 8px, border-radius 4px, font-size 11px, white-space nowrap
- `.screenshot-source`: text-align center, font-size 10px, color #666, margin-top 4px

**Playwright capture workflow for Screenshot slides:**
1. Use `browser_navigate` to load the target URL
2. Optionally interact (`browser_click`, `browser_type`) to reach the desired UI state
3. Use `browser_take_screenshot` to save as `outputs/week-N/images/{name}--screenshot.png`
4. If the screenshot already exists (pre-captured by Agent 02), skip capture and embed directly
5. Blur or redact any sensitive/personal data visible in the capture

---

## Embedding Diagrams

Use relative paths from the slides/ directory:

```html
<!-- Minimal style (most content slides) -->
<img src="../images/[name]--minimal.png" alt="[description]" style="max-width: 100%; height: auto;">

<!-- Thumbnail style (overview/navigation) -->
<img src="../images/[name]--thumbnail.png" alt="[description]" style="width: 200px;">

<!-- Whiteboard style (exercise/workshop) -->
<img src="../images/[name]--whiteboard.png" alt="[description]" style="max-width: 100%;">

<!-- AntV Chart (data visualization) -->
<img src="../images/[name]--chart.png" alt="[description]" style="max-width: 100%; height: auto;">

<!-- Canva Infographic (branded visual) -->
<img src="../images/[name]--infographic.png" alt="[description]" style="max-width: 100%; max-height: 540px;">

<!-- Playwright Screenshot (live tool/web capture) -->
<img src="../images/[name]--screenshot.png" alt="[description]" style="max-width: 100%; max-height: 380px; border: 1px solid #2a2a2a; border-radius: 8px;">
```

---

## Naming Convention

- `slide01.html` - First slide (usually Title)
- `slide02.html` - Second slide (usually Agenda)
- Continue sequentially matching slide-plan.md order

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
| All plan slides rendered | Every slide in slide-plan.md has HTML | [ ] |
| Playwright tested | All slides validated | [ ] |
| Dimensions | All 960×540px | [ ] |
| Accent bars | Present on all slides | [ ] |
| Color palette | Tesla colors only | [ ] |
| Bullet limits | ≤6 per slide | [ ] |
| Sequential naming | slide01, slide02, etc. | [ ] |
| Accessibility | Semantic HTML, contrast | [ ] |
| Diagram embeds | All image paths resolve | [ ] |

### FAIL CONDITIONS (must fix before output):
- Slide in plan not rendered to HTML
- Any slide fails Playwright dimension check
- Missing accent bar on any slide
- More than 6 bullet points on any slide
- Non-Tesla colors used
- Broken HTML rendering
- Diagram image path doesn't resolve

---

## Quality Gate Integration

This agent's output is validated by **Gate 5** (Post-Parallel) alongside Agent 08 (Exercises) and Agent 09 (Prompts).
