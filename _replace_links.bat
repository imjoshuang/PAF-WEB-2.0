@echo off
setlocal enabledelayedexpansion

for %%f in (contact-us.html exhibits.html history.html mandate-objectives.html news-events.html vision-mission.html) do (
    powershell -Command "$c=Get-Content '%%f' -Raw; $c=$c -replace 'href=\"paf-hero\.html\"','href=\"index.html\"'; Set-Content '%%f' -Value $c -Encoding UTF8"
    echo Done: %%f
)
echo All done!
