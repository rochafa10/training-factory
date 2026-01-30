$headers = @{
    'Content-Type' = 'application/json'
    'x-goog-api-key' = 'AIzaSyDSKlpmlq6foDfgA_LGTDyPSMoYp-bv5b0'
}

$prompt = @"
You are a technical diagram renderer. Generate a complete HTML document with inline SVG.

## LOCKED STRUCTURE (DO NOT MODIFY)

Nodes:
1. "User" (yellow ellipse)
2. "Bottle Rocket" (blue rectangle)
3. "AI Model" (green rounded rectangle)
4. "Response" (light blue parallelogram)

Edges (left to right flow, NO overlapping lines):
1. User -> Bottle Rocket (label: "prompt", below the line)
2. Bottle Rocket -> AI Model (label: "request", below the line)
3. AI Model -> Bottle Rocket (label: "generation", CURVED arrow going ABOVE, returning back)
4. Bottle Rocket -> Response (label: "output", below the line)

Labels (use EXACTLY as written):
- User
- Bottle Rocket
- AI Model
- Response
- prompt
- request
- generation
- output

## STYLE: Whiteboard (hand-drawn sketch feel)

Background: #faf9f7 (warm off-white)
Strokes: 2-3px, use SVG filter for slight roughness
Fill: Pastel versions - #fff3bf (user), #a5d8ff (bottle rocket), #b2f2bb (ai model), #d0ebff (response)
Font: Comic Sans MS or cursive
Node shadows: 3px offset, rgba(0,0,0,0.1)
Layout: Left to right horizontal flow with spacing
Dimensions: 900x350px
The "generation" edge should be a curved path going UP and back to avoid overlapping

## CRITICAL CONSTRAINTS

- DO NOT add any nodes not in the list
- DO NOT add any edges not in the list
- Use EXACTLY the labels provided
- Make "generation" arrow curve ABOVE to return to Bottle Rocket
- Ensure NO label overlapping

Output ONLY the complete HTML code with embedded SVG, no explanation or markdown.
"@

$body = @{
    contents = @(@{
        parts = @(@{
            text = $prompt
        })
    })
    generationConfig = @{
        temperature = 0.2
        maxOutputTokens = 8192
    }
} | ConvertTo-Json -Depth 10

Write-Host "Calling Gemini API for WHITEBOARD style..." -ForegroundColor Cyan

try {
    $response = Invoke-RestMethod -Uri 'https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent' -Method Post -Headers $headers -Body $body
    $html = $response.candidates[0].content.parts[0].text

    # Clean up markdown code blocks if present
    $html = $html -replace '```html\s*', '' -replace '```\s*$', '' -replace '^\s*```\s*', ''

    # Save to file
    $outputPath = "C:\Users\fs_ro\Documents\training-factory\outputs\week-1\images\temp\sample-flow--whiteboard.html"
    $html | Out-File -FilePath $outputPath -Encoding utf8

    Write-Host "Success! HTML saved to: $outputPath" -ForegroundColor Green

} catch {
    Write-Host "Error: $($_.Exception.Message)" -ForegroundColor Red
}
