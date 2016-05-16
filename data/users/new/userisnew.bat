rem Ein Skript von FloJo_1
@ echo off
@ color 0c
@ title Batch-Chat by Florian
@ mode con cols=35 lines=20

:Wilkommen
cls
echo.
echo.
echo Wilkommen im Batch Chat,
echo.
echo Bitte gebe dein neues Passwort ein
set /p pw1=Passwort:
cls
echo.
echo Bitte das eingegebene Passwort 
echo wiederholen
set /p pw2=Passwort:
goto Ueberprufen

:NR
cls
echo.
echo.
echo Das eingegebene Passwort 
echo Stimmen nicht ueberein,
echo Versuche es erneut
pause>nul
goto Wilkommen

:Ueberprufen
 if %pw1%==%pw2% goto SetPW
goto NR

:SetPW
echo fals>"Y:/Batch-Chat/data/users/%NName%/blocked.entry"
echo %pw1%>"Y:/Batch-Chat/data/users/%NName%/PW.pws"
goto Ok

:Ok
cls
echo.
echo.
echo Dein Passwort wurde Festgelegt
echo.
echo Viel Spass im Batch-Chat
pause>nul
call "Y:/Batch-Chat/Start Chat.bat"