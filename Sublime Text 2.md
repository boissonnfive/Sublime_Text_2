# Sublime Text 2 #


A faire:
1. SmartMarkdown:
    - shift+tab : tout plier/déplier
    - tab : plier un niveau
2. Org-mode
	- modif pour la check-list
	- écrire les raccourcis :
	    - "-c"+tab         : crée une liste non cochée
		- Entrer           : coche la case à cocher
		- ctrl+alt+shift+p : Affiche le scope


## Paquets installés ##

- package control (pour installer des paquets)
- MarkdownEditing (pour la coloration syntaxique du Markdown)
- Markdown Preview (pour afficher un aperçu dans un navigateur)
- SmartMarkdown (Pour le pliage du Markdown)
- VBScript (pour la coloration syntaxique du VBScript)
- orgmode (pour la coloration syntaxique des tâches)
- MarkdownTodo (pour les commandes sur les tâches)
- FindKeyConflicts (trouver les raccourcis des modules en conflit avec ceux par défaut)
- PowerShell


## Fichiers ##

- ctrl+o        / super+o       : ouvrir un fichier
- ctrl+w        / super+w       : fermer un fichier
- ctrl+s        / super+s       : enregistrer un fichier
- ctrl+shift+s  / super+shift+s : enregistrer un fichier sous un autre nom
- super+shift+t / ctrl+shift+t  : Réouvrir le dernier fichier fermé (cyclique)


## Edition ##

- Majuscule               : ctrl+k+u
- Minuscule               : ctrl+k+l
- Première lettre en maj. : ctrl+k+t  / super+k+t
- Aller à la ligne        : ctrl+entrée
- Indenter                : ctrl+)
- Désindenter             : ctrl+^
- Commenter               : ctrl+/    (pas de shift)
- Commenter une sélection : ctrl+shift+/
- Plier tout              : ctrl+k+1 ou ctrl+&    / super+k+1
- Déplier tout            : ctrl+k+0 ou ctrl+k+j  / super+k+0
- Console                 : ctrl+ù

*NOTES:*

- Si on met :{ "keys": ["ctrl+k", "ctrl+t"], "command": "title_case" } dans ses préférences utilisateur
- Pour le pliage du code, on peut utiliser les petits triangles dans la marge.


### Multiple Line Edition ###

For example, to make the same edit on multiple lines, split the selection into lines (Ctrl+Shift+L on Windows and Linux, Command+Shift+L on OS X), and start navigating the cursors and type. Your actions will occur simultaneously at each cursor.


## Sélection ##

- Sélection verticale         : shift+clic droit souris / alt+ clic gauche souris
- Sélection de la portée (*)  : ctrl+shift+espace      / super+shift+espace
- Parenthèse/crochet/accolade : ctrl+m                 / ctrl+m
- Sélection de l'indentation  : ctrl+shift+j           / super+shift+j

(*) : très utile pour les parenthèses, les crochets, les balises HTML, etc ...

### Modifier toutes les variables en même temps ###

1. Sélectionner la variable.
2. Taper «Alt + F3» ou «ctrl+super+g».
3. Modifier toutes les occurences de la variable en même temps.

ou

To rename a variable within a function, position the cursor next to it, and press Select More (Ctrl+D on Windows and Linux, Command+D on OS X) several times to select all occurrences, and then start typing to rename them all. 
Quick Skip Next (Ctrl+K, Ctrl+D), to skip over matches, so you can select just the ones you want.


## Rechercher/Remplacer ##

- Rechercher                   : ctrl+f       / super+f
- Remplacer                    : ctrl+h       / super+h
- Rechercher dans des fichiers : shift+ctrl+f / super+shift+f
- Suivant                      : F3           / super+g
- Précédent                    : shift+F3     / super+shift+g
- Recherche incrémentale (*)   : ctrl+i       / super+i

(*) : répeter le raccourci pour rechercher le suivant (ajouter shift pour le précédent).


## Manipulation des fenêtres/écrans/onglets ##

- Nouvelle fenêtre         : ctrl+shift+n
- Fermer une fenêtre       : ctrl+shift+w
- Diviser l'écran en 2     : shift+alt+2  / super+alt+2
- Revenir à un seul écran  : shift+alt+1  / super+alt+1
- Diviser l'écran en 4     : shift+alt+5  / super+alt+5
- Déplacer dans l'écran X  : ctrl+shift+X / ctrl+shift+X 
- Aller dans l'écran X     : ctrl+X       / ctrl+X
- changer d'onglet         : ctrl+tab     / ctrl+tab
- fermer un onglet         : ctrl+w       / super+w


## Créer un projet ##

1. Mettre tous les fichiers de son projet dans un dossier
1. Ajouter ce dossier à votre projet (qui va ainsi être créé): **Project > Add Folder to Project…** (Les fichiers du dossier doivent maintenant apparaître dans la barre latérale)
1. Enregistrer le projet: **Project > Save Project As…**. 2 fichiers sont créés:

    your_project.sublime-project
    your_project.sublime-workspace


## Command Palette ##

The Command Palette provides a quick way to access commands that don't warrant a key binding, and would usually be hidden away in a menu. For example, turning Word Wrap on or off, or changing the syntax highlighting mode of the current file. It uses the same fuzzy matching as Goto Anything does, meaning most commands are accessible with just a few key presses. 

The command palette can be triggered via Ctrl+Shift+P on Windows and Linux, or Command+Shift+P on OS X. 


## Indent Guides ##

Indent guides help visualize the indent levels, and mark out which ones apply to the caret position - they are helpful in long functions. If you prefer a cleaner look without them, they can be disabled by adding "draw_indent_guides": false to your user file settings, which are accessible from the "Preferences/File Settings - User" menu.


## Ouvrir un fichier en hexadécimal ##

1. Menu File > Reopen with Encoding
2. Hexadecimal


## The Data Directory ##

Nearly all of the interesting files for users live under the data directory. The data directory is a platform-dependent location:

- Windows: %APPDATA%\Sublime Text 3
- OS X: ~/Library/Application Support/Sublime Text 3
- Linux: ~/.config/sublime-text-3

## Taper des commandes python ##

Aller dans la console (Ctrl+`) ou View -> Show Console et taper :

    sublime.version()


***

## Modifications ##

### Première lettre en majuscule ###

- but          : Créer un raccourci windows pour mettre en majuscule la première lettre du mot sous le curseur
- fichier      : Default (Windows).sublime-keymap
- localisation : "C:\Users\Bruno\AppData\Roaming\Sublime Text 2\Packages\User"
- modification :

        // Pour mettre en majuscule la première lettre du mot sous le curseur
        { "keys": ["ctrl+k", "ctrl+t"], "command": "title_case" },


- but          : Créer un raccourci OSX pour mettre en majuscule la première lettre du mot sous le curseur
- fichier      : Default (OSX).sublime-keymap
- localisation : "/Users/bruno/Library/Application Support/Sublime Text 2/Packages/User"
- modification :

        // Pour mettre en majuscule la première lettre du mot sous le curseur
        { "keys": ["super+k", "super+t"], "command": "title_case" }


### Disposition des écrans ###

source : <http://tomschlick.com/2012/10/31/customizing-sublime-text-2s-multi-pane-workflow/>
(voir aussi "origami" ici : <https://github.com/SublimeText/Origami>)

Config pour modifier la disposition des écrans :

- ctrl+alt+left     : divise les 2 écrans en 1/3,2/3
- ctrl+alt+right    : divise les 2 écrans en 2/3,1/3
- ctrl+alt+up       : divise les 2 écrans en 50/50
- ctrl+alt+down     : ne garde qu'un écran
- ctrl+shift+left   : déplace le fichier actif dans l'écran de gauche
- ctrl+shift+right  : déplace le fichier actif dans l'écran de droite

- but          : Créer des raccourcis pour diviser l'écran en 2
- fichier      : Default (Windows).sublime-keymap
- localisation : "C:\Users\Bruno\AppData\Roaming\Sublime Text 2\Packages\User"
- modification :

        {
          "keys": ["ctrl+alt+left"],
          "command": "set_layout",
          "args":
          {
            "cols": [0.0, 0.33, 1.0],
            "rows": [0.0, 1.0],
            "cells": [[0, 0, 1, 1], [1, 0, 2, 1]]
          }
        },
        {
          "keys": ["ctrl+alt+right"],
          "command": "set_layout",
          "args":
          {
            "cols": [0.0, 0.66, 1.0],
            "rows": [0.0, 1.0],
            "cells": [[0, 0, 1, 1], [1, 0, 2, 1]]
          }
        },
        {
          "keys": ["ctrl+alt+up"],
          "command": "set_layout",
          "args":
          {
            "cols": [0.0, 0.5, 1.0],
            "rows": [0.0, 1.0],
            "cells": [[0, 0, 1, 1], [1, 0, 2, 1]]
          }
        },
        {
          "keys": ["ctrl+alt+down"],
          "command": "set_layout",
          "args":
          {
            "cols": [0.0, 1.0],
            "rows": [0.0, 1.0],
            "cells": [[0, 0, 1, 1], [1, 0, 2, 1]]
          }
        },
        { "keys": ["ctrl+shift+left"], "command": "move_to_group", "args": {      "group": 0 } },
        { "keys": ["ctrl+shift+right"], "command": "move_to_group", "args": { "group": 1 } }


### C/C++ ###

- but          : Lancer le programme dans l'invite de commande sous Windows
- fichier      : C++.sublime-build
- localisation : "C:\Users\Bruno\AppData\Roaming\Sublime Text 2\Packages\C++\"
- modification :

        "windows": {
                   "cmd": ["cmd.exe", "/c", "${file_path}\\\\${file_base_name}.exe"]
        }


### SmartMarkdown ###

- but          : Ne garder que les raccourcis utiles
- fichier      : Default.sublime-keymap
- localisation : "C:\Users\Bruno\AppData\Roaming\Sublime Text 2\Packages\SmartMarkdown"
- modification : tout commenter sauf "smart\_folding" et "global\_folding"


### Markdown Preview ###

- but          : Créer un raccourci pour l'aperçu dans le navigateur
- fichier      : Default.sublime-keymap
- localisation : "C:\Users\Bruno\AppData\Roaming\Sublime Text 2\Packages\Markdown Preview"
- modification :

        { "keys": ["alt+m"], "command": "markdown_preview", "args": {"target": "browser", "parser":"markdown"} }


- but          : recharcher la page de l'aperçu quand on enregistre le fichier
- fichier      : MarkdownPreview.sublime-settings
- localisation : "C:\Users\Bruno\AppData\Roaming\Sublime Text 2\Packages\Markdown Preview"
- modification : (ajout de l'extension ".txt")

        /*
            Sets the supported filetypes for auto-reload on save
        */
        "markdown_filetypes": [".md", ".markdown", ".mdown", ".txt"],

### Markdown Editing ###

- but          : ajouter les dièses à la fin des titres
- fichiers     : "Markdown (Standard).sublime-settings", "Markdown.sublime-settings", "MultiMarkdown.sublime-settings", 
- localisation : "C:\Users\Bruno\AppData\Roaming\Sublime Text 2\Packages\Markdown Editing"
- modification : (ajout de l'extension ".txt")

        // Automatically switches list bullet when indenting blank list item with <Tab>.
        "mde.list_indent_auto_switch_bullet": true,


### VBScript ###

- but          : Lancer le script en mode fenêtre (WScript)
- fichiers     : VBScript.sublime-build 
- localisation : "C:\Users\Bruno\AppData\Roaming\Sublime Text 2\Packages\VBScript"
- modification : (suppression de "with WScript" dans name)

        "variants":
        [
            {
                "name": "Run",
                "windows":
                {
                    "cmd": ["wscript.exe", "$file"]
                }
            }
        ]

- but          : Supprimer le problème d'encodage UTF-8 lors du build
- fichiers     : VBScript.sublime-build 
- localisation : "C:\Users\Bruno\AppData\Roaming\Sublime Text 2\Packages\VBScript"
- modification : (ajout de la ligne)

        "cmd": [ "cscript.exe", "$file" ],
        "encoding": "cp1252"

### Mes préférences ###

{
	"color_scheme": "Packages/Color Scheme - Default/Solarized (Dark).tmTheme",
	"font_face": "Monaco",
	"highlight_modified_tabs": true,
	"ignored_packages":
	[
		"Vintage"
	]
}

{
  "color_scheme": "Packages/Color Scheme - Default/Monokai Bright.tmTheme",
  "font_face": "Consolas",
  "font_size": 11,
  "highlight_modified_tabs": true,
  "ignored_packages":
  [
    "Vintage"//,
    // "Package Control",
    // "MarkdownEditing",
    // "Markdown Preview",
    // "SmartMarkdown",
    // "VBSript",
    // "orgmode",
    // "mdTodo/MarkdownT",
    // "FindKeyConflicts",
    // "PowerShell"
  ]
}

***

## HTML ##

### Sélection de la totalité du contenu de la balise ###

Expand Selection To Tag: Press once to select the contents of the current tag. Press more times to gradually select more. This is bound to Command+Shift+A on OS X, and Ctrl+Shift+A on Windows and Linux)


***

## Console ##

- Afficher : Utiliser "ctrl+ù" au lieu de "ctrl+`" (qui ne fonctionne pas, voir ci-dessous comment tracer les raccourcis clavier).
- Tracer les commandes :
        
        sublime.log_commands(True)

- Tracer les raccourcis clavier :

        sublime.log_input(True)


***

## Markdown ##

- "#" (sur sélection) : créer un titre (changer le niveau)   -MarkdownEditing-
- shift+tab           : plier/déplier tous les titres        -SmartMarkdown-
- tab (dans le titre) : plier/déplier un titre               -SmartMarkdown-
- alt+m               : aperçu dans le navigateur par défaut -Markdown Preview-
- ctrl+shift+b        : mise en gras                         -Markdown Preview-
- ctrl+shift+i        : mise en italique                     -Markdown Preview-


### Plugin MarkdownEditing ###

- Pour créer un titre ou augmenter le niveau d'un titre, sélectionner le titre et appuyer sur #
- Dans les paramètres de MarkdownEditing, modifier le fichier comme suit pour avoir les # à la fin du titre :

        // add trailing #'s to headlines
        "mde.match_header_hashes": true,

- Dans les paramètres de MarkdownEditing, j'ai désactivé la possibilité de créer un titre avec "ctrl+1" (2, 3, 4) car ça rentrait en conflit avec la commande de Sublime Text 2 pour changer d'écran.

### Plugin SmartMarkdown ###

- Pour plier/déplier tout le texte : shift+tab
- Pour plier/déplier un titre : shift+tab (se positionner dans le titre d'abord)
- Dans le code de SmartMarkdown, fichier smartfolding.py, j'ai modifié le code pour plier/déplier à partir du niveau 2 :

        fonction is_global_folded :
        region, level = headline.find_headline(self.view, 1, \
                                               headline.ANY_LEVEL, True)

        fonction fold_all
        region, level = headline.find_headline(self.view, \
                                               1, \
                                               headline.ANY_LEVEL, \
                                               True)

- J'ai mis en commentaire tous les autres raccourcis clavier


### Mon programme de check-list ###

1. Permet de créer une tâche avec "ctrl+alt+maj+n"
2. Permet de cocher/décocher la tâche avec "ctl+alt+maj+c"
3. Coloration syntaxique qui va bien


- paquet orgmode (pour la coloration syntaxique)
- paquet mdTodo/MarkdownTodo (pour les commandes)

--- mdTodo.py ---

    import sublime, sublime_plugin
    from datetime import datetime 
    
    class ItodoBase(sublime_plugin.TextCommand):
      def run(self, edit):
        filename = self.view.file_name()
        # list of allowed filetypes
        # allowed_filetypes = ('.md', '.markdown', '.mdown')
        allowed_filetypes = ('.md', '.markdown', '.mdown', '.txt')
        if filename is None or not filename.endswith(allowed_filetypes):
          return False  
        self.runCommand(edit)
    
    class NewCommand(ItodoBase):
      def runCommand(self, edit):
        for region in self.view.sel():
          lines = self.view.lines(region)
          lines.reverse()
          for line in lines:
            # don't add a newline when creating new item with cursor is at an     empty line
            if not line:
              line_contents = '- '
              self.view.insert(edit, line.begin(), line_contents)
            # add a newline when creating new item when cursor is at another line
            else:
              line_contents = self.view.substr(line) + '\n- '
              self.view.replace(edit, line, line_contents)
    
    class CompleteCommand(ItodoBase):
      def runCommand(self, edit):    
        for region in self.view.sel():
          lines = self.view.lines(region)
          lines.reverse()
          for line in lines:
            line_head = self.view.find("[-\+]", line.begin())
            line_done = self.view.find("\[X\]", line.begin())
            line_undone = self.view.find("\[ \]", line.begin())
            line_contents = self.view.substr(line).strip()
            # prepend @done if item is ongoing
            if line_contents.startswith('-'):
              #self.view.insert(edit, line.end(), " @done (%s)" % datetime.now().    strftime("%d-%m-%Y %H:%M"))
              self.view.replace(edit, line_head, "+")
              self.view.replace(edit, line_undone, "[X]")
            # undo @todo
            elif line_contents.startswith('+'):
              #subfix = self.view.find('(\s)*@done(.)+\)$', line.begin())
              #self.view.erase(edit, subfix)
              self.view.replace(edit, line_head, "-")
              self.view.replace(edit, line_done, "[ ]")
    
    class NouveauCommand(ItodoBase):
      def runCommand(self, edit):
        for region in self.view.sel():
          lines = self.view.lines(region)
          lines.reverse()
          for line in lines:
            nb_character_in_task = len(line)
            # don't add a newline when creating new item with cursor is at an     empty line
            if not line:
              line_contents = '-                                                                              [ ]'
              self.view.insert(edit, line.begin(), line_contents)
            # add a newline when creating new item when cursor is at another line
            else:
              #line_contents = self.view.substr(line) + '\n- '
              line_contents = '- ' + self.view.substr(line) + (73-nb_character_in_task)*' ' + '[ ]'
              #self.view.insert(edit, line.begin(), line_contents)
              self.view.replace(edit, line, line_contents)


--- Default (Windows).sublime-keymap ---

    [   // iTodo plugin
        { "keys": ["ctrl+alt+shift+t"], "command": "terminer" },
        { "keys": ["ctrl+alt+shift+n"], "command": "nouveau" }
    ]

***

## C/C++ ##

- ctrl+b       : compiler le fichier (créer un fichier .exe).
- ctrl+shift+b : lancer le fichier (la sortie est affichée dans Sublime Text)
- ctrl+)       : Indenter
- ctrl+^       : Désindenter
 

---

## MarkdownEditing ##

**Better Markdown Editing features for Sublime Text 2**

This package will make MarkdownEditor your default theme for Markdown/MultiMarkdown files. Adjust it to your liking or remove the line from the .sublime-settings files

- Asterisks and underscores are autopaired and will wrap selected text
- If you start an empty pair and hit backspace, both elements are deleted
- If you start an empty pair and hit space, the right element is deleted
- backticks are paired
- Left bracket pairing is modified to eliminate the selection and leave the cursor at a point where you can insert a **[]** or **()** pair for a link
- **⌘⌥V** will paste the contents of the clipboard as an inline link on selected text
-** ⌘⌥R** will paste the contents of the clipboard as a reference link
-** ⌘⌥K** inserts a standard inline link, ⌘⇧K inserts an inline image
- **⌘⌥B** and **⌘⌥I** are bound to bold and italics (Markdown).
- Typing "#" when there's a selection will surroung it with "#" to make it a headline. Multiple presses add additional hashes, increasing the level of the header. Once you hit 6 hashes, it will reset to 0 on the next press.
- Typing return at the end of a line that begins with hasmarks will insert closing hashmarks on the headline. They're not required for Markdown, it's just aesthetics, and you can comment out that command in the Default (OSX).sublime-keymap file if needed. I'll turn that into a plugin and add an option for it eventually.
-** ⌘⇧6** will insert a footnote and jump to its definition. If your cursor is in a definition, it will jump back to the marker.
-** ⌥⇧F** will locate footnote markers without definitions and insert the marker for the definition
- **⌥⇧G** will do the same for missing reference links


Footnote commands submitted by [J. Nicholas Geist](1) and originated at [geekabouttown](2)

There's a long way to go and I have a lot of Python to learn.

[1]: https://github.com/jngeist
[2]: http://geekabouttown.com/posts/sublime-text-2-markdown-footnote-goodness


## À faire sur Mardown Editing ##

### Problème

Les raccourcis "ctrl+X" (pour modifiier le niveau des titres) entrent en conflit avec les raccourcis par défaut de Sublime Text 2 pour changer d'écran

### A faire

- [ ] Trouver le fichier des raccourcis de Markdown Editing
- [ ] Lire la doc de Sublime Text 2 concernant les contextes
- [ ] Modifier le contexte d'application de ces raccourcis

Modifier le code pour le raccourci "#" afin qu'il modifie une sélection, et désactiver les raccourcis à base de "ctrl+X".


- [ ] Faire la liste des modules Sublime Text 2
- [ ]  Pour chaque module, faire la liste des modifications
    - [ ] MarkdownEditing
    - [ ] Markdown Preview
    - [ ] SmartMarkdown
    - [ ] VBScript
    - [ ] orgmode
    - [ ] MarkdownTodo
    - [ ] FindKeyConflicts
    - [ ] PowerShell
     

- [ ] Faire la liste des catégories de Sublime Text
- [ ] Pour chaque catégorie, faire la liste des raccourcis
- [ ] Apprendre les raccourcis de la catégorie « X »


