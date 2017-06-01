:RELOAD
echo off
title Appli de banque.
mode con cols=50 lines=20

rem variable pour fichier txt
set savestat=stat.txt
set savenom=nom.txt
set saveprenom=prenom.txt
set savechryptocodepu=chryptocodepu.txt
set savechryptocodepr=chryptocodepr.txt
set saveepargne=epargne.txt
set savecourant=courant.txt
set savestat=stat.txt
rem money
set savepfbitcoin=pfbitcoin.txt
set savepfbitshares=pfbitshares.txt
set savepflitecoin=pflitecoin.txt
set savepflisk=pflisk.txt
set savepfdash=pfdash.txt
set stat=1
for /f "tokens=* delims=" %%a in ('type "%savenom%"') do set nom=%%a
for /f "tokens=* delims=" %%b in ('type "%saveprenom%"') do set prenom=%%b
for /f "tokens=* delims=" %%c in ('type "%savechryptocodepu%"') do set chryptocodepu=%%c
for /f "tokens=* delims=" %%d in ('type "%savechryptocodepr%"') do set chryptocodepr=%%d
for /f "tokens=* delims=" %%e in ('type "%saveepargne%"') do set epargne=%%e
for /f "tokens=* delims=" %%f in ('type "%savecourant%"') do set courant=%%f
for /f "tokens=* delims=" %%g in ('type "%savepfbitcoin%"') do set pfbitcoin=%%g
for /f "tokens=* delims=" %%h in ('type "%savepfbitshares%"') do set pfbitshares=%%h
for /f "tokens=* delims=" %%i in ('type "%savepflitecoin%"') do set pflitecoin=%%i
for /f "tokens=* delims=" %%j in ('type "%savepflisk%"') do set pflisk=%%j
for /f "tokens=* delims=" %%k in ('type "%savepfdash%"') do set pfdash=%%k

:START
cls
echo Nom        : %nom%
echo Prenom     : %prenom%
echo Epargne    : %epargne%
echo Courant    : %courant%
echo Compte Chryptomoney
echo -Chrytocode : %chryptocodepu%
echo -Chrytocode : %chryptocodepr%
echo Valeur acquise
echo -Bitcoin   : %pfbitcoin%
echo -Bitshares : %pfbitshares%
echo -Litecoin  : %pflitecoin%
echo -Lisk      : %pflisk%
echo -Dash      : %pfdash%

>nul PING localhost -n 2 -w 1000
for /f "tokens=* delims=" %%e in ('type "%savestat%"') do set stat=%%e
if exist %savestat% goto START
goto RELOAD
