@echo off
title = Repage by iamblocksberg;

set timeout=5
set url="http://www.google.com"
set chrome="C:\Program Files (x86)\Google\Chrome\Application\"
set count=1

:loop
echo. & echo. & echo.
echo Round: %count%
start /D %chrome% chrome.exe -incognito %url%
timeout %timeout%
taskkill /F /IM chrome.exe /T
set /A count=%count% + 1
goto :loop
