@Echo Off
start valeur.bat
title Logiciel de suivi de la cote bourse.
set savecpu=cpu.txt
if exist %cpu% goto START
set /P cpu= valeur pc puissance cpu 1000 et 50000 :
echo %cpu% > "%savecpu%"
:START
mode con: cols=120 lines=7
color 1a
setlocal EnableDelayedExpansion
if not exist genere.bat  (echo @Echo Off
                          echo :::GENERATION D'un fichier de 50 000 Octest
                          echo if exist #nul#.val del #nul#.val
                          echo for /l %%%%a in ^(1=1=%cpu%^) do echo 0 ^>^>#nul#.val)>>genere.bat

if exist fin.val del fin.val
start /min genere.bat ^& echo.^>fin.val ^& exit

cls
set graph=²°

echo traitement En cours veuillez patienter...
echo.
echo    %graph%

:affiche
>nul PING localhost -n 2 -w 1000
cls
if exist fin.val goto:termine 
set graph=²!graph!
echo traitement En cours veuillez patienter...
echo.
echo    %graph%

goto :affiche

:termine
endlocal

del stat.txt
del genere.bat
del #nul#.val
del fin.val
echo Traitement termin‚
goto START
exit