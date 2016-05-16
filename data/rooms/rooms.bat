rem Ein Skript von FloJo_1
@ echo off
@ color 0c
@ title Batch-Chat by Florian
@ mode con cols=45 lines=35
REM --- Uebersicht ---
:Start
cls
echo.
echo.
echo.
echo Wilkommen, %NName%
echo.
echo.
echo.
echo Zur Zeit sind folgende Raume freigegeben:
echo.
dir Y:\Batch-Chat\data\rooms\rooms\*.bat /b
echo.
echo.
echo Bitte gib den Namen deiens Raumes ein 
echo (ohne .bat)
echo.
set /P room= Namen des Raumes (ohne .bat):
if not exist Y:\Batch-Chat\data\rooms\rooms\%room%.bat goto rnf
call "Y:\Batch-Chat\data\rooms\rooms\%room%.bat"
REM --- Error ---
:rnf
cls
echo.
echo Raum konnte nicht gefunden Werden.
pause>nul 
goto Start