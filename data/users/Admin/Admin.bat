rem Ein Skript von FloJo_1
@ echo off
@ color 0c
@ title Batch-Chat by Florian
@ mode con cols=35 lines=20

REM --- Setzten ---
:int
set /p blocked=<"Y:/Batch-Chat/data/users/%NName%/blocked.entry"
set /p pwr=<"Y:/Batch-Chat/data/users/%NName%/PW.pws"
set /p asu=<"Y:/Batch-Chat/data/users/%NName%/Asu.su"
goto Passworteingabe

REM --- Passwort ---
:Passworteingabe
cls
echo.
echo Bitte Passwort eingeben
set /p pwe=Passwort: 
 if %pwe%==%pwr% goto Ueberprufen
goto WPW

REM --- Gesperrt ---
:Ueberprufen
 if %blocked%==true goto Gesperrt
 if %blocked%==fals goto logentry
 if %blocked%==new goto newuser
goto Gesperrt
:Gesperrt
cls
echo.
echo.
echo Ihr Benutzerkonto wurde Gesperrt
echo Bitte wenden sie sich an ihren 
echo Administrator
pause>nul
goto Beenden

REM --- Loggen ---
:logentry
cls
echo %date%, %time% >>Y:/Batch-Chat/data/users/%NName%/entry.acc
ipconfig /all|findstr "Hostname IP-Adr" >>Y:/Batch-Chat/data/users/%NName%/entry.acc
ipconfig /all|findstr "IP-Adr" >>Y:/Batch-Chat/data/users/%NName%/entry.acc
goto weiteroe
:weiteroe
 if %asu%==true goto Admin
 if %asu%==strue goto AdminS
goto weiter

REM --- AdminFunktionen ---
:Admin
cls
echo.
echo Bitte Waehlen
echo.
echo 1=Chat Beitreten
echo 2=Chat Erstellen
echo 3=Nutzer Erstellen
echo 4=Nuter Blockieren/Freigeben
echo 5=Einstellungen
echo 6=Beenden
choice /n /c 654321
 if errorlevel 255 goto Admin
 if errorlevel 6 goto runchat
 if errorlevel 5 goto chatNew
 if errorlevel 4 goto UserNewCraft
 if errorlevel 3 goto UserBlock
 if errorlevel 2 goto settings
 if errorlevel 1 goto Beenden
:AdminS
cls
echo.
echo Bitte Waehlen
echo.
echo 1=Chat Beitreten
echo 2=Chat Erstellen
echo 3=Nutzer Erstellen
echo 4=Nuter Blockieren/Freigeben
echo -=Rechte von Nutzer verwalten
echo 5=Einstellungen
echo 6=Beenden
choice /n /c 654321
 if errorlevel 255 goto Admin
 if errorlevel 6 goto runchat
 if errorlevel 5 goto chatNew
 if errorlevel 4 goto UserNewCraft
 if errorlevel 3 goto UserBlock
 if errorlevel 2 goto settings
 if errorlevel 1 goto Beenden
 
REM --- Menu ---
:weiter
cls
echo.
echo Bitte Waehlen
echo.
echo 1=Chat Beitreten
echo 2=Beenden
choice /n /c:21
 if errorlevel 255 goto weiter
 if errorlevel 2 goto runchat
 if errorlevel 1 goto Beenden
 
REM --- Auswahlen/calls --- 
:UserNewCraft
call "Y:/Batch-Chat/data/users/new/new.bat"
:chatNew
call "Y:/Batch-Chat/data/rooms/new.bat"
:runchat
call "Y:/Batch-Chat/data/rooms/rooms.bat"
:newuser
call "Y:/Batch-Chat/data/users/new/userisnew.bat"

REM --- Einstellungen ---
:settings
cls
echo.
echo Bitte Waehlen
echo.
echo.
echo 1=Passwort Aendern
echo 2=Zurueck
choice /n /c 21
 if errorlevel 255 goto settings
 if errorlevel 2 goto newuser
 if errorlevel 1 goto weiteroe
 
REM --- Beenden ---
:Beenden
exit /b

REM --- Fehler ---
:WPW
cls
echo.
echo Falsches Passwort eingegeben!
pause>nul
goto int