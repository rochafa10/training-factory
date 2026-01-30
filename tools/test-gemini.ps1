$headers = @{
    'Content-Type' = 'application/json'
    'x-goog-api-key' = $env:GEMINI_API_KEY
}

if (-not $env:GEMINI_API_KEY) {
    # Load from .env file
    $envFile = Join-Path $PSScriptRoot "..\.env"
    if (Test-Path $envFile) {
        Get-Content $envFile | ForEach-Object {
            if ($_ -match '^([^#][^=]+)=(.*)$') {
                [Environment]::SetEnvironmentVariable($matches[1].Trim(), $matches[2].Trim(), 'Process')
            }
        }
        $headers['x-goog-api-key'] = $env:GEMINI_API_KEY
    }
}

$prompt = @"
You are a technical diagram renderer. Generate a complete HTML document with inline SVG.

## LOCKED STRUCTURE (DO NOT MODIFY)

Nodes:
1. "User" (yellow ellipse #ffd43b)
2. "Bottle Rocket" (blue rectangle #4dabf7)
3. "AI Model" (green rounded rectangle #69db7c)
4. "Response" (light blue parallelogram #a5d8ff)

Edges:
1. User -> Bottle Rocket (label: "prompt")
2. Bottle Rocket -> AI Model (label: "request")
3. AI Model -> Bottle Rocket (label: "generation")
4. Bottle Rocket -> Response (label: "output")

Labels (use EXACTLY as written):
- User
- Bottle Rocket
- AI Model
- Response
- prompt
- request
- generation
- output

## STYLE: Minimal

Background: #ffffff (pure white)
Strokes: 2px, clean vectors
Fill: Solid flat colors as specified
Font: Arial, clean sans-serif
Layout: Left to right horizontal flow
Dimensions: 800x400px
Arrow style: Simple triangular arrowheads

## CRITICAL CONSTRAINTS

- DO NOT add any nodes not in the list
- DO NOT add any edges not in the list
- Use EXACTLY the labels provided
- Center the diagram in the viewport

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

Write-Host "Calling Gemini API..." -ForegroundColor Cyan

try {
    $response = Invoke-RestMethod -Uri 'https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent' -Method Post -Headers $headers -Body $body
    $html = $response.candidates[0].content.parts[0].text

    # Clean up markdown code blocks if present
    $html = $html -replace '```html\s*', '' -replace '```\s*$', '' -replace '^\s*```\s*', ''

    # Save to file
    $outputPath = Join-Path $PSScriptRoot "..\outputs\week-1\images\temp\sample-flow--minimal.html"
    $html | Out-File -FilePath $outputPath -Encoding utf8

    Write-Host "Success! HTML saved to: $outputPath" -ForegroundColor Green
    Write-Host ""
    Write-Host "HTML Preview (first 500 chars):" -ForegroundColor Yellow
    Write-Host ($html.Substring(0, [Math]::Min(500, $html.Length)))

} catch {
    Write-Host "Error: $($_.Exception.Message)" -ForegroundColor Red
    if ($_.Exception.Response) {
        $reader = New-Object System.IO.StreamReader($_.Exception.Response.GetResponseStream())
        Write-Host $reader.ReadToEnd() -ForegroundColor Red
    }
}
