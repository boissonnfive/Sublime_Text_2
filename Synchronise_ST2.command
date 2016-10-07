#!/bin/bash

# +---------------------------------------------------------------------------+
# |  Fichier     : Synchronise_ST2.command                                    |
# |  Version     : 1.0.0                                                      |
# |  Auteur      : Bruno Boissonnet                                           |
# |  Date        : 07/10/2016                                                 |
# |  Description : Copie les fichiers issus de GitHub dans le dossier de ST2. |
# +---------------------------------------------------------------------------+


# Le dossier de Sublime Text 2
# ST2_PACKAGE_FOLDER="/Users/bruno/Library/Application Support/Sublime Text 2/Packages"
ST2_PACKAGE_FOLDER="/Users/bruno/Desktop/test"


# On se met dans le répertoire du script
dir=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
cd $dir


# Copie des dossiers du dossier qui contient le script

for i in */; do
	echo $i
	cp -R "$i" "$ST2_PACKAGE_FOLDER/$i"
done

