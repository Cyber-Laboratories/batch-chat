rem Ein Skript von FloJo_1
@ echo off
@ color 0c
@ title Batch-Chat by Florian
@ mode con cols=45 lines=35

:read
cls
more <Y:\Batch-Chat\data\rooms\logs\%room%.rlog
ping /n 3 localhost>nul
goto read