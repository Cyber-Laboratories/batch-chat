REM Ein Skript von Cyber_sKO & lolboy58
@ echo off
@ color 0c
@ title Batch-Chat
@ mode con cols=45 lines=35

REM --- Leser-Starten ---
:Startreader
start "Leser" Y:\Batch-Chat\data\rooms\reader\%room%.bat
goto Start

REM --- Chat-Start ---
:Start 
echo %NName% hat den Raum Betreten >>Y:\Batch-Chat\data\rooms\logs\%room%.rlog
goto Schreiben
:Schreiben
cls
echo.
echo.
echo. Hallo, %NName%
echo.
echo exit zum beenden
set /p msg=Nachricht:
 if %msg%==exit goto beenden
echo %NName% sagt:%msg%>>Y:\Batch-Chat\data\rooms\logs\%room%.rlog
goto Schreiben

REM --- Beenden ---
:beenden
echo %NName% hat den Raum verlassen>>Y:\Batch-Chat\data\rooms\logs\%room%.rlog
taskkill /f /im cmd.exe
:Beenden
exit /b 