:START
mode con cols=120 lines=20
title Bitcoins ou comment devenir riche.
rem désactive l'affichage des commandes
echo off
rem remise à blanc de l'écran
cls
rem définition de la valeur de la variable
set admin=0
set nom=0
set prenom=0
set epargne=0
set courant=0
set chryptocodepu=0
set chryptocodepr=0
set chrono=0
set day=0

rem variable de programme
set load=0
set retour=0
set adminvalidation=Jimmy

rem variable pour fichier txt
set savenom=nom.txt
set saveprenom=prenom.txt
set savechryptocodepu=chryptocodepu.txt
set savechryptocodepr=chryptocodepr.txt
set saveerpargne=epargne.txt
set savecourant=courant.txt

:SAVE
rem verification de la présence du fichier si il existe alors aller vers la routine search
if exist %savenom% goto E
set /P nom= Quel est votre nom :
echo %nom% > "%savenom%"
goto A
:A
if exist %saveprenom% goto F
set /P prenom= Quel est votre prenom :
echo %prenom% > "%saveprenom%"
goto B
:B
if exist %savechryptocodepu% goto G
set /A chryptocodepu=%random%*%random%
echo %chryptocodepu% > "%savechryptocodepu%"
goto C
:C
if exist %savechryptocodepr% goto H
set /A Chryptocodepr=%random%*%random%
echo %chryptocodepr% > "%savechryptocodepr%"
:D
if exist %saveerpargne% goto I
echo %epargne% > "%saveerpargne%"
:E
if exist %savecourant% goto J
echo %courant% > "%savecourant%"

REM EXTRATION DE L INFO DANS LE FICHIER TXT ET MISE EN VARIABLE
:LOADING
cls
title Chargement en cours... Veuillez patienter.
set NB_BAR=0
set BAR=Û
set FULL=-1
:UP_LOAD
cls
set /a FULL = FULL + 1
set BAR=%BAR%Û
set /a NB_BAR = NB_BAR + 2
echo Recuperation des donnees .... %NB_BAR%%%
echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo  %BAR%
echo  %BAR%
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
if %FULL%==49 goto :END_LOAD
@ping localhost -n 1 >nul
goto :UP_LOAD
:END_LOAD
pause
cls
for /f "tokens=* delims=" %%a in ('type "%savenom%"') do set nom=%%a
Goto A

:F
for /f "tokens=* delims=" %%b in ('type "%saveprenom%"') do set prenom=%%b
Goto B

:G
for /f "tokens=* delims=" %%c in ('type "%savechryptocodepu%"') do set chryptocodepu=%%c
Goto C

:H
for /f "tokens=* delims=" %%d in ('type "%savechryptocodepr%"') do set chryptocodepr=%%d
Goto D

:I
for /f "tokens=* delims=" %%e in ('type "%saveepargne%"') do set epargne=%%e
Goto E
:J
for /f "tokens=* delims=" %%f in ('type "%savecourant%"') do set courant=%%f
set test=1
if /I "%test%"== (goto :PARAMETRAGE)
goto LOAD

:NP
cls
rem debut du programme
rem le /p permet de demander le retour de la variable
set /P nom= Quel est votre nom :
set /P prenom= Quel est votre prenom :

:LOAD
title Bitcoins ou comment devenir riche.
start Bourse.bat
rem affiche du texte en rappelant la variable grâce aux %
echo Votre Nom est %nom%
echo Votre Prenom est %prenom%
Goto JEU

:ADMIN
cls
set /P Admin= Quel est votre le nom de L'administrateur :
if /I "%admin%"=="%adminvalidation%" (goto :PARAMETRAGE)
goto :ADMIN

:PARAMETRAGE
echo admin : %admin%
echo adminvalidation : %adminvalidation%
echo nom : %nom%
echo prenom : %prenom%
echo epargne : %epargne%
echo courant : %courant%
echo chrytocode : %chryptocodepu%
echo chrytocode : %chryptocodepr%
echo retour : %retour%

set /P admin=
set /P adminvalidation=
set /P nom=
set /P prenom=
set /P epargne=
set /P courant=
set /P chrytocode=
set /P retour=
echo admin : %admin%
echo adminvalidation : %adminvalidation%
echo nom : %nom%
echo prenom : %prenom%
echo epargne : %epargne%
echo courant : %courant%
echo chrytocode : %chryptocodepu%
echo chrytocode : %chryptocodepr%
echo retour : %retour%

:OK
set retour=0
set /P retour=erreur tape 1 sinon ENTREE :
if /I "%retour%"=="1" (goto :PARAMETRAGE)
if /I "%retour%"=="0" (goto :ROUTINE)

:APPLI
echo demarrage de l'appli banque
pause
start appli.bat
echo demarrage de l'appli Memo
pause
start memo.bat

:JEU
cls
title Chargement en cours... Veuillez patienter.
set NB_BAR=0
set BAR=Û
set FULL=-1
:UP_BAR
cls
set /a FULL = FULL + 1
set BAR=%BAR%Û
set /a NB_BAR = NB_BAR + 2
echo Demarrage du PC en cours .... %NB_BAR%%%
echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo  %BAR%
echo  %BAR%
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
if %FULL%==49 goto :END_BAR
@ping localhost -n 1 >nul
goto :UP_BAR
:END_BAR
pause
cls
goto CHOIX

:ROUTINE
set /P retour=erreur tape 1 sinon ENTREE :
if /I "%retour%"=="1" (goto :PARAMETRAGE)
if /I "%retour%"=="0" (goto :CHOIX)
if /I "%retour%"=="admin" (goto :ADMIN)

:CHOIX
goto SAVE
set /P retour=Achat tape 1 Vente 2 :
if /I "%retour%"=="0" (goto :ACHAT)
if /I "%retour%"=="1" (goto :VENTE)
if /I "%retour%"=="2" (goto :CHOIX)
if /I "%retour%"=="admin" (goto :ADMIN)

:FIN
echo %chrono% jour(s) choisi
echo %day% jour(s) passes
pause
cls
rem Micro save
echo %nom% > "%savenom%"
echo %prenom% > "%saveprenom%"
echo %chryptocodepu% > "%savechryptocodepu%"
echo %chryptocodepr% > "%savechryptocodepr%"
echo %epargne% > "%saveepargne%"
echo %courant% > "%savecourant%"
TASKKILL /f /im cmd.exe
echo fin
goto NULL





rem ressources

:RESSOURCES
cls
title Chargement en cours... Veuillez patienter.
set NB_BAR=0
set BAR=Û
set FULL=-1
:UP_BANQUE
cls
set /a FULL = FULL + 1
set BAR=%BAR%Û
set /a NB_BAR = NB_BAR + 2
echo Connexion à la banque .... %NB_BAR%%%
echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo  %BAR%
echo  %BAR%
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
if %FULL%==49 goto :END_LOAD
@ping localhost -n 1 >nul
goto :UP_LOAD
:END_BANQUE

@echo off
rem variable pour fichier txt
set config=config.txt
 
rem verification de la présence du fichier si il existe alors aller vers la routine search
if exist %config% goto search
 
set /P folder=saisir l emplacement:
echo %folder% >> "%config%"
 
REM EXTRATION DE L INFO DANS LE FICHIER TXT ET MISE EN VARIABLE
:search
for /f "tokens=* delims=" %%a in ('type "%config%"') do set var=%%a
 
REM AFFICHAGE
echo %var%
pause

rem pause chrono
timeout /t 100 /NOBREAK

rem barre de loading
setlocal enableDelayedExpansion
for /l %%I in (1,1,50) do (
     cls
     set progres=
     set /a barre=%%I*2
     echo !barre!
     for /l %%A in (1,1,%%I) do (
          set progres=!progres!Û
     )
     echo !progres!
     ping localhost -n 1>nul
)
rem mode couleur
mode con cols=65 lines=9 &color 1A

pause
rem remise à blanc de l'écran
cls
rem remise à blanc
cls
rem affiche le texte avec la variable rentrée
echo Ca va %prenom%, tu a un joli prenom :-)
rem liste des variables
echo Salut %USERNAME%,nous sommes le %DATE%
echo il est %Time% déjà!,
echo %RANDOM% est un chiffre al‚atoire.
echo Ton PC se nomme %COMPUTERNAME%,
echo il possŠde %NUMBER_OF_PROCESSORS% processeur,
echo c'est une architecture %PROCESSOR_IDENTIFIER%
pause

:NULL
