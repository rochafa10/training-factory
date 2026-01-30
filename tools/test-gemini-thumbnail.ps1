$headers = @{
    'Content-Type' = 'application/json'
    'x-goog-api-key' = 'AIzaSyDSKlpmlq6foDfgA_LGTDyPSMoYp-bv5b0'
}

$prompt = @"
You are a technical diagram renderer. Generate a complete HTML document with inline SVG.

## LOCKED STRUCTURE (DO NOT MODIFY)

Nodes (left to right):
1. "User" (yellow ellipse)
2. "Bottle Rocket" (blue rectangle)
3. "AI Model" (green rounded rectangle)
4. "Response" (light blue parallelogram)

Edges:
1. User -> Bottle Rocket (NO label - too small)
2. Bottle Rocket -> AI Model (NO label)
3. AI Model -> Bottle Rocket (curved return arrow, NO label)
4. Bottle Rocket -> Response (NO label)

Node Labels ONLY (use EXACTLY):
- User
- Bottle Rocket
- AI Model
- Response

## STYLE: Thumbnail (high contrast, readable at small size)

Background: #0a0a0a (Tesla dark)
Strokes: 3px, white or bright colors
Fill: Bright saturated - #ffd43b (user), #4dabf7 (bottle rocket), #69db7c (ai model), #74c0fc (response)
Font: Arial Bold, 14px, WHITE text for contrast
Arrows: White, thick (3px), simple triangular heads
Layout: Tight horizontal, minimal spacing
Dimensions: 400x200px
NO edge labels (too small to read)

## CRITICAL CONSTRAINTS

- DO NOT add any nodes not in the list
- NO edge labels (thumbnails are too small)
- Use EXACTLY the node labels provided
- White text on colored nodes for contrast
- Keep it simple and bold

Output ONLY the complete HTML code with embedded SVG, no explanation or markdown.
"@

$body = @{
    contents = @(@{
        parts = @(@{
            text = $prompt
        })
    })
    generationConfig = @{
        temperature = 0.1
        maxOutputTokens = 8192
    }
} | ConvertTo-Json -Depth 10

Write-Host "Calling Gemini API for THUMBNAIL style..." -ForegroundColor Cyan

try {
    $response = Invoke-RestMethod -Uri 'https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent' -Method Post -Headers $headers -Body $body
    $html = $response.candidates[0].content.parts[0].text
    $html = $html -replace '```html\s*', '' -replace '```\s*$', '' -replace '^\s*```\s*', ''

    $outputPath = "C:\Users\fs_ro\Documents\training-factory\outputs\week-1\images\temp\sample-flow--thumbnail.html"
    $html | Out-File -FilePath $outputPath -Encoding utf8

    Write-Host "Success! HTML saved to: $outputPath" -ForegroundColor Green

} catch {
    Write-Host "Error: $($_.Exception.Message)" -ForegroundColor Red
}
