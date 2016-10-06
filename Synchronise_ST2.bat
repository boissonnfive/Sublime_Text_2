@echo off
echo +-----------------------------------------------------------------------------+
echo ^| Fichier     : Synchronise_ST2.bat                                           ^|
echo ^| Version     : 1.0.0                                                         ^|
echo ^| Auteur      : Bruno Boissonnet                                              ^|
echo ^| Date        : 06/10/2016                                                    ^|
echo ^| Description : Copie les fichiers issus de GitHub dans le dossier de ST2.    ^|
echo ^| Remarques   : Le fichier doit �tre sauvegard� au format ANSI.               ^|
echo +-----------------------------------------------------------------------------+
echo(
echo Faire Ctrl+C pour quitter le programme ou appuyer sur une touche pour continuer. 
 
REM On fait une pause pour que la fen�tre reste affich�e
pause>nul

REM +--DEBUT-DU-PROGRAMME---------------------------------------------------------+

REM Le dossier de Sublime Text 2
set ST2_PACKAGE_FOLDER=%APPDATA%\Sublime Text 2\Packages

REM On se met dans le r�pertoire du script
pushd "%~dp0"
    

REM Copie des fichiers et dossiers du dossier qui contient le script

REM /L           Affiche les fichiers devant �tre copi�s.
REM /S           Copie les r�pertoires et sous-r�pertoires � l�exception des
REM              r�pertoires vides.
REM /Y           Supprime la demande de confirmation de remplacement de
REM              fichiers de destination existants.
REM /I           Si la destination n�existe pas et que plus d�un fichier est
REM              copi�, consid�rer la destination comme devant �tre
REM              un r�pertoire. => Pour ne pas avoir la question fichier ou r�pertoire ?

FOR /F "tokens=*" %%i IN ('dir /AD-H /b') do (
	xcopy "%%i" "%ST2_PACKAGE_FOLDER%%%i" /I /S /Y
)

REM On se remet dans le r�pertoire d'origine
popd

REM +--FIN-DU-PROGRAMME-----------------------------------------------------------+

echo(
REM On fait une pause pour que la fen�tre reste affich�e
echo Appuyer sur une touche pour quitter le programme.
pause>nul

REM +--TESTS----------------------------------------------------------------------+

REM Pour les tests
REM set ST2_PACKAGE_FOLDER=C:\Users\Bruno\Desktop\Tests\


REM echo "Affichage des caract�res diacritiques fran�ais au format ANSI :"
REM  "� � � � � � � �"
REM echo "� � � � � � � �"
