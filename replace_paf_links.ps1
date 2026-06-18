$files = @(
    'contact-us.html',
    'exhibits.html',
    'history.html',
    'mandate-objectives.html',
    'news-events.html',
    'vision-mission.html'
)

foreach ($f in $files) {
    Write-Host "Processing $f..."
    $content = Get-Content $f -Raw
    $content = $content -replace 'href="paf-hero\.html"', 'href="index.html"'
    Set-Content -Path $f -Value $content -Encoding UTF8
}

Write-Host "Done!"
