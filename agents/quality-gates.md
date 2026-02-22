# Quality Gates

Inter-agent quality checkpoints that must pass before proceeding to the next phase.

---

## Overview

```
┌─────────────────────────────────────────────────────────────────────────┐
│                        QUALITY GATE FLOW                                 │
├─────────────────────────────────────────────────────────────────────────┤
│                                                                          │
│   Agent 01              GATE 1              Agent 02                     │
│   Curriculum       ───▶ Post-Syllabus  ───▶ Research                    │
│   Architect             Checkpoint          Agent                        │
│                                                │                         │
│                                           GATE 2                         │
│                                           Post-Research                  │
│                                           Checkpoint                     │
│                                                │                         │
│                                                ▼                         │
│                                           Agent 03                       │
│                                           Content Writer                 │
│                                                │                         │
│                                           GATE 3                         │
│                                           Post-Content                   │
│                                           Checkpoint                     │
│                                                │                         │
│                                                ▼                         │
│                                           Agent 04                       │
│                                           Diagram Architect              │
│                                                │                         │
│                                                ▼                         │
│                                           Agent 05                       │
│                                           Diagram Renderer               │
│                                                │                         │
│                                           GATE 4                         │
│                                           Post-Diagrams                  │
│                                           Checkpoint                     │
│                                                │                         │
│                         ┌──────────────────────┼──────────────────────┐  │
│                         ▼                      ▼                      ▼  │
│                  Agent 06 + 07           Agent 08              Agent 09  │
│                  Slide Planner           Exercises             Prompts   │
│                  + Slide Renderer                                        │
│                         │                      │                      │  │
│                         └──────────────────────┴──────────────────────┘  │
│                                                │                         │
│                                           GATE 5                         │
│                                           Post-Parallel                  │
│                                           Checkpoint                     │
│                                                │                         │
│                                                ▼                         │
│                                           Agent 10                       │
│                                           Quality Reviewer               │
│                                                │                         │
│                                           GATE 6                         │
│                                           Final Review                   │
│                                           Checkpoint                     │
│                                                │                         │
│                                                ▼                         │
│                                           ✅ RELEASE                     │
│                                                                          │
└─────────────────────────────────────────────────────────────────────────┘
```

---

## Gate 1: Post-Syllabus

**Checkpoint:** After Agent 01 (Curriculum Architect), before Agent 02 (Research)

### Validation Checklist

| Check | Requirement | How to Verify |
|-------|-------------|---------------|
| Week count | Exactly 4 weeks defined | Count week sections |
| Time allocation | Each week = 90 minutes total | Sum session + activities |
| Learning goals | All 5 goals from requirements mapped | Cross-reference requirements.md |
| Tool progression | Bottle Rocket (Weeks 1-4), Copilot (Weeks 3-4) | Check tool mentions per week |
| Homework | ~30 minutes per week | Review homework sections |
| Policy presence | Policy referenced in every week | Search for policy mentions |

### Pass Criteria
- [ ] All 4 weeks properly defined with objectives
- [ ] Time math: 90 minutes per week (±5 min tolerance)
- [ ] All 5 learning goals from requirements.md are assigned to specific weeks
- [ ] Tool introduction follows correct order
- [ ] Homework is realistic (≤30 min/week)

### Fail Actions
If ANY check fails:
1. Document the specific failure
2. Return to Agent 01 with correction request
3. Re-run Agent 01 with specific guidance
4. Maximum 3 retry attempts before escalating to user

---

## Gate 2: Post-Research

**Checkpoint:** After Agent 02 (Research Agent), before Agent 03 (Content Writer)

### Validation Checklist

| Check | Requirement | How to Verify |
|-------|-------------|---------------|
| Source count | Minimum 5 unique sources | Count in References section |
| Source verification | 100% of statistics verified | Check Source Verification Log |
| Recency | AI tool info from 2024+ | Check dates in sources |
| Tool accuracy | Features verified against docs | Cross-reference official docs |
| Policy alignment | Matches go.tesla.com/aitools | WebSearch verification |

### Pass Criteria
- [ ] Minimum 5 unique, credible sources cited
- [ ] All statistics have documented sources in verification log
- [ ] No AI tool information older than 2 years
- [ ] Tool features verified against current official documentation
- [ ] Policy information matches current Tesla AI policy

### Automated Checks
```
# Run these tools to verify:
perplexity_search({ "query": "[key claim from research]" })
WebSearch({ "query": "Tesla AI policy site:tesla.com" })
```

### Fail Actions
If ANY check fails:
1. Identify unverified claims or outdated information
2. Return to Agent 02 with specific claims to verify/update
3. Agent 02 must use perplexity_search to find valid sources
4. Remove any claims that cannot be verified

---

## Gate 3: Post-Content

**Checkpoint:** After Agent 03 (Content Writer), before Agent 04 (Diagram Architect)

### Validation Checklist

| Check | Requirement | How to Verify |
|-------|-------------|---------------|
| Research citations | 3+ explicit citations per section | Search for "Source:" or "From Research:" |
| Speaker notes | Every section has notes | Check for SPEAKER NOTES sections |
| Examples | 2+ DC-relevant examples | Review example scenarios |
| Time estimates | Total = 90 minutes | Sum all [X minutes] notations |
| Terminology | Matches previous weeks | Memory MCP cross-check |

### Pass Criteria
- [ ] Every major section cites research.md at least 3 times
- [ ] Speaker notes present for all content sections
- [ ] Examples are specific to distribution center operations
- [ ] Time allocations sum to ~90 minutes (±5 min)
- [ ] No terminology conflicts with previous weeks

### Automated Checks
```
# Cross-week consistency:
search_nodes({ "query": "terminology" })

# Verify research citations exist:
# Manual check: Ctrl+F for "Source:" in content.md
```

### Fail Actions
If ANY check fails:
1. Document missing citations or speaker notes
2. Return to Agent 03 with specific sections to revise
3. Ensure Content Writer references research.md for additions
4. Do NOT proceed to diagram phase with incomplete content

---

## Gate 4: Post-Diagrams

**Checkpoint:** After Agents 04 and 05 complete, before parallel phase (Agents 06/07/08/09)

### Sub-Gate 4A: Diagram Architect (Agent 04)

| Check | Requirement | How to Verify |
|-------|-------------|---------------|
| Files exist | All expected .excalidraw files | List diagrams/ directory |
| Contract exists | diagram-contracts.json complete | File exists and valid JSON |
| Labels match | 100% match with content.md | Cross-reference terminology |
| Node types | Correct colors per legend | Check against type definitions |
| Edges directional | All connections have direction | Review each edge in contract |
| Legend present | legend.excalidraw exists | File listing |
| **Start node** | Every diagram has entry point | Check for "start" or "user" node |
| **End node** | Every diagram has exit point | Check for "end" or "output" node |
| **Constraints** | Guardrails/policies shown | Look for guardrail-type nodes |
| **Failure path** | Error flow documented | Check for error-type edges |

### Diagram Completeness Criteria

Each major loop/flow in content.md MUST have a corresponding diagram that includes:

```
┌─────────────────────────────────────────────────────┐
│  COMPLETE DIAGRAM CHECKLIST                          │
├─────────────────────────────────────────────────────┤
│  ✓ START: Clear entry point (user request, trigger)  │
│  ✓ END: Clear exit point (output, completion)        │
│  ✓ HAPPY PATH: Normal flow from start to end         │
│  ✓ CONSTRAINTS: Policy/guardrail nodes where needed  │
│  ✓ FAILURE PATH: Error edges, retry loops            │
│  ✓ LABELS: Match content.md terminology exactly      │
└─────────────────────────────────────────────────────┘
```

### Sub-Gate 4B: Diagram Renderer (Agent 05)

| Check | Requirement | How to Verify |
|-------|-------------|---------------|
| Variants exist | 3 styles per diagram | Count files in images/ |
| Naming convention | {name}--{style}.png format | File listing pattern match |
| Node count match | Render nodes = Contract nodes | Compare contract vs render |
| Edge count match | Render edges = Contract edges | Compare contract vs render |
| Labels exact | Character-for-character match | Visual inspection + OCR |
| Render log | render-log.md complete | File exists with all entries |

### Diagram Lock Validation

The critical check for Gate 4B is verifying Gemini didn't drift:

```
For each diagram:
1. Read diagram-contracts.json entry
2. Count nodes in PNG (visual inspection or OCR)
3. Verify: rendered_nodes == contract_nodes
4. Verify: rendered_edges == contract_edges
5. Verify: all labels match exactly (case-sensitive)
```

### Pass Criteria
Both sub-gates must pass:
- [ ] 4A: All Excalidraw files valid, labels match content.md
- [ ] 4B: All renders match contracts, no drift detected

### Automated Checks
```
# Verify contract exists and is valid JSON:
# Read diagram-contracts.json and parse

# Check file counts:
# diagrams/*.excalidraw count >= 2 (legend + at least one diagram)
# images/*.png count = (diagram count - 1) * 3 (3 styles each, no legend render)

# Label verification:
search_nodes({ "query": "terminology" })
# Cross-reference with labels in diagram-contracts.json
```

### Fail Actions
If 4A fails (Architect):
1. Identify mismatched labels
2. Query Memory MCP for correct terminology
3. Re-run Agent 04 with explicit label corrections
4. Do NOT proceed to Renderer with bad structure

If 4B fails (Renderer):
1. Identify which diagram drifted
2. Check if contract was properly passed to Gemini prompt
3. Re-run Agent 05 with stricter constraints
4. If persistent drift, manually lock labels in prompt

---

## Gate 5: Post-Parallel

**Checkpoint:** After Agents 06, 07, 08, 09 complete, before Agent 10 (Quality Reviewer)

### Sub-Gate 5A-1: Slide Plan (Agent 06)

| Check | Requirement | How to Verify |
|-------|-------------|---------------|
| Slide count | 12-15 slides | Count slide blocks in slide-plan.md |
| Content coverage | All content.md sections mapped | Cross-reference sections |
| Bullet limits | No slide exceeds 6 bullets | Count per slide block |
| Diagram references | All point to existing files | Check images/ directory |
| One idea per slide | No overloaded slides | Review each slide block |

### Sub-Gate 5A-2: Slide HTML (Agent 07)

| Check | Requirement | How to Verify |
|-------|-------------|---------------|
| Dimensions | All slides 960×540px | Playwright browser_snapshot |
| Accent bar | 8px red bar present | Visual inspection via Playwright |
| Colors | Tesla palette (#0a0a0a, #e82127) | Playwright style check |
| Bullet count | ≤6 per slide | Count in snapshot |
| Naming | Sequential (slide01, slide02...) | File listing |

### Sub-Gate 5B: Exercises (Agent 08)

| Check | Requirement | How to Verify |
|-------|-------------|---------------|
| Exercise count | 3+ exercises per week | Count exercise sections |
| Difficulty range | Within week's calibration | Check difficulty labels |
| Tool coverage | Correct tool per exercise | Verify badges |
| Troubleshooting | 3+ issues per exercise | Count troubleshooting rows |
| Time estimates | Reasonable (5-20 min each) | Review time labels |

### Sub-Gate 5C: Prompts (Agent 09)

| Check | Requirement | How to Verify |
|-------|-------------|---------------|
| Prompt count | 5+ prompts per week | Count prompt sections |
| Formula adherence | ROLE+CONTEXT+TASK+FORMAT | Check each prompt structure |
| Examples | All have filled examples | Review Example sections |
| No duplicates | Unique from other weeks | Memory MCP search |
| Tool assignment | Correct tool per prompt | Verify tool labels |
| Diagram-grounded | Week 3-4 have 2+ architecture prompts | Count diagram references |

### Sub-Gate 5D: Render Fidelity (Gemini Outputs)

This gate ensures Gemini didn't "drift" from the canonical structure.

| Check | Requirement | How to Verify |
|-------|-------------|---------------|
| Labels only | No invented text in renders | Visual inspection / OCR |
| Connections match | Edges match diagram contract | Compare contract vs render |
| Readability | No paragraphs of text | Visual inspection |
| Label count | ≤10 labels per diagram | Count in render |
| Approved colors | Only colors from style guide | Visual inspection |
| No hallucination | Zero extra nodes/edges | Contract comparison |

### Render Fidelity Check Protocol

```
For each Gemini-rendered PNG:

1. Load diagram-contracts.json entry for this diagram
2. Visual inspection of rendered image:
   - Count visible nodes → must equal contract node count
   - Count visible edges → must equal contract edge count
   - Read all labels → must match contract labels exactly
3. Check for "drift indicators":
   - ❌ Extra explanatory text
   - ❌ Additional decorative nodes
   - ❌ Missing connections
   - ❌ Label paraphrasing (e.g., "User" → "End User")
4. If drift detected → re-run Agent 05 with stricter prompt
```

### Pass Criteria
All five sub-gates must pass:
- [ ] 5A-1: Slide plan covers all content with correct slide count and bullet limits
- [ ] 5A-2: All slides pass Playwright visual tests
- [ ] 5B: Exercises meet count, difficulty, and format requirements
- [ ] 5C: Prompts follow formula and are unique
- [ ] 5D: All Gemini renders match their diagram contracts

### Automated Checks
```
# Slide testing (serve over HTTP — Playwright blocks file:// URLs):
# python -m http.server 8787 --directory outputs/week-N/slides
browser_navigate({ "url": "http://localhost:8787/slide01.html" })
browser_snapshot({})

# Prompt deduplication:
search_nodes({ "query": "prompt library" })
```

### Fail Actions
If ANY sub-gate fails:
1. Identify which agent(s) produced failing content
2. Return to specific agent with corrections needed
3. Re-run only failing agent(s) - do not re-run passing agents
4. Re-validate sub-gate before proceeding

---

## Gate 6: Final Review

**Checkpoint:** After Agent 10 (Quality Reviewer), before release

### Validation Checklist

| Check | Requirement | How to Verify |
|-------|-------------|---------------|
| Critical issues | 0 critical issues | Review.md summary |
| Major issues | All resolved or documented | Review.md checklist |
| Automated tests | All passing | Review.md test results |
| Cross-week consistency | No conflicts | Memory MCP verification |
| Policy compliance | 100% compliant | WebSearch verification |

### Release Decision Matrix

| Critical | Major | Decision |
|----------|-------|----------|
| 0 | 0-3 | ✅ **RELEASE** - Ready for delivery |
| 0 | 4+ | 🔄 **CONDITIONAL** - Document issues, release with notes |
| 1+ | Any | ❌ **BLOCK** - Must fix before release |

### Pass Criteria
- [ ] Zero critical issues
- [ ] All major issues either resolved or documented with justification
- [ ] All automated tests (Playwright, fact-check, policy) passing
- [ ] Cross-week consistency verified via Memory MCP
- [ ] Final approval checkbox marked in review.md

### Fail Actions
If release is BLOCKED:
1. Identify critical issues from review.md
2. Determine which agent produced the error
3. Return to that agent with specific fix requirements
4. Re-run partial pipeline from that agent forward
5. Re-run Agent 10 for new review
6. Repeat until Gate 6 passes

---

## Gate Bypass Protocol

**When to bypass a gate:**
- NEVER bypass Gates 1, 2, 6 (critical for quality)
- Gate 3 may be bypassed ONLY if user explicitly requests partial content
- Gate 4 may be bypassed if user wants text-only content (no diagrams)
- Gate 5 may be bypassed for individual outputs if user only needs slides OR exercises OR prompts

**Bypass documentation:**
If a gate is bypassed, document in review.md:
```markdown
## Gate Bypass Notice

**Gate Bypassed:** [Gate number]
**Reason:** [User request / Justification]
**Risk:** [What quality checks were skipped]
**Approval:** [User confirmed Y/N]
```

---

## Error Recovery

### Common Failure Patterns

| Failure | Likely Cause | Recovery Action |
|---------|--------------|-----------------|
| Gate 1 fails on time | Overloaded agenda | Reduce topics per week |
| Gate 2 fails on sources | Claims from training data | Force perplexity_research |
| Gate 3 fails on citations | Content Writer ignoring research | Re-run with explicit citation requirement |
| Gate 4A fails on labels | Diagram Architect not checking Memory | Re-run with Memory MCP query first |
| Gate 4B fails on drift | Gemini inventing content | Stricter contract in prompt, explicit "DO NOT" |
| Gate 5A-1 fails on plan | Slide Planner overloading slides | Re-run Agent 06 with bullet/slide limits |
| Gate 5A-2 fails on slides | HTML rendering issue | Check HTML syntax, re-run Agent 07 |
| Gate 5B fails on exercises | Unrealistic scenarios | Re-run with DC-specific guidance |
| Gate 5C fails on prompts | Formula not followed | Re-run with formula template |
| Gate 5D fails on fidelity | Gemini drift (extra nodes/labels) | Re-run Agent 05 with explicit label lock |
| Gate 6 fails on policy | Outdated policy reference | WebSearch for current policy, update content |

### Maximum Retry Limits

| Gate | Max Retries | Escalation |
|------|-------------|------------|
| Gate 1 | 3 | Ask user for requirements clarification |
| Gate 2 | 3 | Ask user for acceptable source alternatives |
| Gate 3 | 2 | Ask user which sections to prioritize |
| Gate 4 | 2 per sub-gate | Ask user to manually verify labels or skip diagrams |
| Gate 5 | 2 per sub-gate (5A-1, 5A-2, 5B, 5C, 5D) | Ask user which outputs are critical |
| Gate 6 | 3 | Present issues to user for decision |

---

## Integration with CLAUDE.md

When running workflows, gates are automatically invoked:

```markdown
### `create week N` (with gates)

1. Check Gate 1 passed (syllabus exists and valid)
2. Run Agent 02 → Check Gate 2
3. Run Agent 03 → Check Gate 3
4. Run Agent 04 → Run Agent 05 → Check Gate 4
5. Run Agents 06, 07, 08, 09 in parallel → Check Gate 5
6. Run Agent 10 → Check Gate 6
7. If all gates pass → Week N complete
```
