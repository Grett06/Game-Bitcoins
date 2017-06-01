:RELOAD
title Cote bourse des Chryptomoney.
mode con cols=50 lines=20
echo off
cls
set savestat=stat.txt
set savebitcoin=bitcoin.txt
set savebitshares=bitshares.txt
set savelitecoin=litecoin.txt
set savelisk=lisk.txt
set savedash=dash.txt
set stat=1
echo %stat% > "%savestat%"
set /A bitcoin=%random%
echo %bitcoin% > "%savebitcoin%"
set /A bitshares=%random%
echo %bitshares% > "%savebitshares%"
set /A litecoin=%random%
echo %litecoin% > "%savelitecoin%"
set /A lisk=%random%
echo %lisk% > "%savelisk%"
set /A dash=%random%
echo %dash% > "%savedash%"

:START

echo Bitcoin  : %bitcoin%
echo Bitshare : %bitshares%
echo Litecoin : %litecoin%
echo Lisk     : %lisk%
echo Dash     : %dash%
>nul PING localhost -n 2 -w 1000
cls
for /f "tokens=* delims=" %%e in ('type "%savestat%"') do set stat=%%e
if exist %savestat% goto START
goto RELOAD