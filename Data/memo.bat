echo off
title Memento.
color E0
mode con cols=30 lines=15
set bitcoin=0
set bitshares=0
set litecoin=0
set lisk=0
set dash=0
set retour=0
:RELOAD
cls
echo Memento Min de revente
echo -Bitcoin   : %bitcoin%
echo -Bitshares : %bitshares%
echo -Litecoin  : %litecoin%
echo -Lisk      : %lisk%
echo -Dash      : %dash%
echo Valeur d'achat 
set /P bitcoin=Bitcoin :
set /P bitshares=Bitshares :
set /P litecoin=Litecoin :
set /P lisk=Lisk :
set /P dash=Dash :
set retour=
goto RELOAD
set /P retour=ENTREE :
if /I "%retour%"=="1" (goto :PARAMETRAGE)
if /I "%retour%"=="0" (goto :SUITE)