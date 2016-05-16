REM Ein Skript von Cyber_sKO & lolboy58
@ echo off
@ color 0c
@ title Batch-Chat
@ mode con cols=35 lines=20

REM --- Menu ---
:Menu
cls
echo.
echo Bitte Waehlen:
echo.
echo 1=Anmelden
echo 2=Als Gast Anmelden
echo 3=beenden
choice /n /c 321
 if errorlevel 255 goto Menu
 if errorlevel 3 goto Anmelden
 if errorlevel 2 goto Gast
 if errorlevel 1 goto exit
REM --- Anmelden --- 
:Anmelden
cls
echo.
echo Bitte Benutzername eingeben
set /p NName=
 if not exist "Y:/Batch-Chat/data/users/%NName%/%NName%.bat" goto error001
call "Y:/Batch-Chat/data/users/%NName%/%NName%.bat"

:Gast
cls
set NName=Gast
call "Y:/Batch-Chat/data/users/Guest/Guest.bat"

REM --- Error
:error001
cls
echo.
echo Der angegebene Benutzer konnte 
echo nicht Gefunden werden,
pause>nul
goto Menu

REM --- Beenden ---
:exit
exit /b 