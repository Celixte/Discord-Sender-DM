@echo off
chcp 65001 > nul
title Shipping confirmation

:: --- SETTINGS ---
set "TOKEN=TOKEN"
set "CHANNEL_ID=CHANNEL_ID"
set "FILE_PATH=FILE_PATH"
set "MESSAGE_TEXT=Your message text"
:: -----------------

set "HOST=discord.com"
set "ENDPOINT=/api/v10/channels/%CHANNEL_ID%/messages"

:ask
cls
echo ====================================================
echo ATTENTION! The system is ready to send the data:
echo Text: %MESSAGE_TEXT%
echo File: %FILE_PATH%
echo ====================================================
echo.
set "INPUT="
set /p "INPUT=Type confirm and press Enter to send: "
if /i "%INPUT%"=="confirm" goto send

echo.
echo [Cancel] You entered "%INPUT%". Submission failed.
timeout /t 2 > nul
exit

:send
echo.
echo [Send] Sending the message...
curl.exe -X POST "https://%HOST%%ENDPOINT%" ^
  -H "Authorization: %TOKEN%" ^
  -F "content=%MESSAGE_TEXT%" ^
  -F "files=@%FILE_PATH%"

echo.
echo ====================================================
pause
exit

