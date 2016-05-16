rem Ein Skript von FloJo_1
@ echo off
@ color 0c
@ title Batch-Chat by Florian
@ mode con cols=35 lines=20


:Hello
cls
echo.
echo.
echo Hallo,
echo.
echo Bitte gib für deinen Benutzer 
echo einen Namen ein.
set /p newNName=Name:

:makeordner
mkdir "Y:/Batch-Chat/data/users/%newNName%"
:copiere
cd "Y:/Batch-Chat/sources/user"
copy /v /n Y:/Batch-Chat/sources/user/new.bat Y:/Batch-Chat/users/%newNName%/%newNName%.bat
copy /v /n Y:/Batch-Chat/sources/user/Asu.su Y:/Batch-Chat/users/%newNName%/Asu.asu
copy /v /n Y:/Batch-Chat/sources/user/blocked.entry Y:/Batch-Chat/users/%newNName%/blocked.entry
copy /v /n Y:/Batch-Chat/sources/user/PW.pws Y:/Batch-Chat/users/%newNName%/PW.pws
pause
:finish
cls
echo.
echo.
echo Der Benutzer wurde angelegt
echo Dein Passwort ist "12345"
pause>nul
call "Y:/Batch-Chat/Start Chat.bat"