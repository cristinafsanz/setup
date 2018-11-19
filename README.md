# Configuraciones para desarrollo Front-End

Idea de repositorio a partir de la charla de [Bash](https://gist.github.com/jorgeatgu/6b1f9bdf8ae9b02ad69d2f7bd039aac9#automatización-con-gulp-y-bash) de [Jorge Aznar](https://twitter.com/jorgeATGU) que dio en el [TheAntiEvent17](http://theantievent.org/).

Estructura del README basada en el [setup](https://github.com/taniarascia/setup) de [Tania Rascia](https://twitter.com/taniarascia).

## Contenidos

- [Git](#git)

- [Navegador](#navegador)

- [Editor texto](#editor-texto)

- [Terminal](#terminal)

- [Sistema Operativo](#sistema-operativo)

- [Automatización](#automatización)

- [Virtual Box](#virtual-box)

- [Herramientas organización](#herramientas-organización)

- [Edición imágenes](#edición-imágenes)

- [Screenshots](#screenshots)

- [Gifs](#gifs)

- [Videoconferencia](#videoconferencia)

- [Firma](#firma)

- [Enlaces interesantes](#enlaces-interesantes)

## Git

Algunos comandos usados en proyectos:

```
Operaciones locales:
working directory -> staging area -> git repository
```

### Crear rama en local

```
# Situarte en la rama desde donde quieres crear la rama
git checkout develop

# Comprobar que se tienen los últimos cambios
git fetch
git pull

# Crear la rama
git checkout -b feat/new-feature
```

### Añadir al `staging area` todos los ficheros

```
# Ver el estado actual de los cambios (qué está en el índice para subir)
git status

# Comprobar en VS Code las diferencias de los ficheros para asegurar que lo que subes es lo que quieres subir

git add .
```

### Quitar un fichero del `staging area`

```
git reset HEAD -- <file>
```

### Deshacer cambios de los ficheros que están en el `working directory` (todavía no subidos al `staging area`)

```
git checkout .
```

### Commit para subir ficheros del `staging area` al `git directory`
```
git commit -m "Commit message"
```

### Subir a la misma rama en remoto

```
git push origin HEAD
```

### Rebase de master a tu rama

```
# Asegurarte que estás en tu rama 

git status

# Sincronizarte con el remoto

git fetch

git rebase origin/master

# resolver conflictos si los hubiera

git add .

git rebase —continue

# subir la rama rebasada a remoto con -f

git push origin "feature-branch" -f
```

### Squash

http://gitready.com/advanced/2009/02/10/squashing-commits-with-rebase.html

Ejemplo: Combinar los últimos 4 commits tuyos en el primer commit de la lista:
```
git rebase -i HEAD~4

# Ejemplo (:wq al final para guardar como en vi)
pick 01d1124 Adding license
squash 6340aaa Moving license into its own file
squash ebfd367 Jekyll has become self-aware.
squash 30e0ccb Changed the tagline in the binary, too.

git add <file1> <file2>  # si conflictos

git rebase —continue # si conflictos

git push origin <branchname> -f
```

### Git amend

Ejemplo: quieres añadir algo al último commit

```
# Haces los cambios

git add <file1> <file2>

git commit --amend

git push origin <branchname> -f

```

### Dejar tu rama como en remoto

```
git reset —hard origin/rama 
```

ó

```
git checkout -B master origin/master
```

### Borrar rama remota y local

```
git push -d origin feat/feature-branch
git branch -D feat/feature-branch
```

### Borrar todas las ramas locales excepto master

```
git branch | grep -v "master" | xargs git branch -D
```

### Cambiar rama local y remota

https://multiplestates.wordpress.com/2015/02/05/rename-a-local-and-remote-branch-in-git/

```
git branch -m feat/MHF-725-params
git push origin :feat/MHF-841-params feat/MHF-725-params
git push origin -u  feat/MHF-725-params
```

### Guardar cambios en stash y recuperarlos

```
# Guardar
git stash

# Recuperar borrando el stash
git stash pop

# Recuperar manteniendo el stash
git stash apply
```

### Buscar git commit por mensaje

```
git log --all --grep='Build 0051'
```

### Borrar tags

```
# Remote:
git push --delete origin tagname

# Local:
git tag --delete tagname
```

### Crear tags

```
git tag -a 3.26.0 -m "Version 3.26.0”
 
git push origin 3.26.0
```

## Navegador

### **Uso:** [Google Chrome](https://www.google.com/chrome/)

- Wrap your console.log arguments in an object literal to print the variable name along with its value: `console.log({ isLoggedIn })`.

- Tip: Run keys(object) and values(object) in the Console to see an object's keys and values.

- Tip: Run copy(obj) in the Console to copy an object to your clipboard

- Tip: Type $_ in the Console to return the value of the last evaluated expression.

- Option + Cmd + J: Open Console JS.

- Local storage: https://developers.google.com/web/tools/chrome-devtools/manage-data/local-storage.

### Extensiones

- [Octotree](https://chrome.google.com/webstore/detail/octotree/bkhaagjahfmjljalopjnoealnfndnagc).

- [Octolinker](https://chrome.google.com/webstore/detail/octolinker/jlmafbaeoofdegohdhinkhilhclaklkp).

- [Wappalyzer](https://chrome.google.com/webstore/detail/wappalyzer/gppongmhjkpfnbhagpmjfkannfbllamg?hl=es).

- [CORS extension Chrome](https://chrome.google.com/webstore/detail/moesif-origin-cors-change/digfbfaphojjndkpccljibejjbppifbc?hl=en).

- Chrome extensions for quick site redesigns: https://meowni.ca/posts/extensions/.

## Editor Texto

### **Uso:** [Visual Studio Code](http://code.visualstudio.com/)
**Previamente usé:** [Atom](https://atom.io/) y [Brackets](http://brackets.io/).

- [Abrir editor desde consola](https://code.visualstudio.com/docs/setup/mac).

- Mantener varios ficheros abiertos en pestañas: Preferencias -> Configuración: `"workbench.editor.showTabs": true`

- [Atajos de teclado Mac](https://code.visualstudio.com/shortcuts/keyboard-shortcuts-macos.pdf).

  - `Cmd + P`: Abrir fichero.
  
  - `Cmd + F`: Buscar.

  - `Alt (Opción) + Cmd + F`: Reemplazar.

  - `Mayúsculas + Cmd + F`: Buscar en todos los archivos.
  
  - `Mayúsculas + Cmd + H`: Reemplazar en todos los archivos.

- [Atajos de teclado Windows](https://code.visualstudio.com/shortcuts/keyboard-shortcuts-windows.pdf).

- [Atajos de teclado Linux](https://code.visualstudio.com/shortcuts/keyboard-shortcuts-linux.pdf).

- Ejecutar ESLint al guardar un fichero en VS Code: https://medium.com/@netczuk/even-faster-code-formatting-using-eslint-22b80d061461.

  - Instalar extensión ESLint
  
  - Habilitar autofix con [fix para Vue](https://www.paddingleft.com/2017/06/13/vscode-fix-eslint-autofix-in-vue/):
  
    {
      "eslint.autoFixOnSave": true,
      "eslint.validate": [
        { "language": "vue", "autoFix": true }
      ]
    }

### Extensiones

- [Auto-Open Markdown Preview](https://marketplace.visualstudio.com/items?itemName=hnw.vscode-auto-open-markdown-preview).

- [Bracket pair colorizer](https://marketplace.visualstudio.com/items?itemName=CoenraadS.bracket-pair-colorizer).

- [Indented block highlighting](https://marketplace.visualstudio.com/items?itemName=byi8220.indented-block-highlighting).

- [Markdown TOC](https://marketplace.visualstudio.com/items?itemName=AlanWalk.markdown-toc): Generate TOC (table of contents) of headlines from parsed markdown file.

- [Settings Sync](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync): Synchronize Settings, Snippets, Themes, File Icons, Launch, Keybindings, Workspaces and Extensions Across Multiple Machines Using GitHub Gist.

- [eCSStractor](https://marketplace.visualstudio.com/items?itemName=diz.ecsstractor-port), descubierto gracias a Diana Aceves.

- [Plugins VS Code Carlos Azaustre](https://youtu.be/CeAvbVpBWR4):

  - Editor Config for VS Code: regla de sintaxis en los proyectos. Útil también para un equipo y teniendo este plugin.

  - ESLint

  - File-icons para tener iconos para distintos tipos de ficheros.

  - Vetur si se trabaja con Vue. Con snippets de código y resaltados.

  - Prettier: para autoindentar.

  - BEM Expand: te completa el hijo al poner &.

  - Babel ES6/ES7.
  
- [Plugins VS Code Sarah Drasner](https://github.com/sdras/vue-vscode-extensionpack)

## Terminal

Inicialmente he usado el terminal de Mac con el tema Homebrew. A partir de ahora quiero usar iTerm2.

- Configuración de Joan León: https://github.com/nucliweb/my-terminal.

  - iTerm2

  - Bash-it
  
- [Working effectively with iTerm2](http://teohm.com/blog/working-effectively-with-iterm2/)

    - Profiles - Open Profiles - Edit Default Profile - Working Directory - "Reuse previous session’s directory".
  
- [zsh para Windows 10](https://www.howtogeek.com/258518/how-to-use-zsh-or-another-shell-in-windows-10/), [oh my zsh](https://www.maketecheasier.com/install-zsh-and-oh-my-zsh-windows10/): Personaliza el prompt del terminal, por ejemplo te dice en qué rama de git estás.

  - Instalar: apt-get install zsh

  - Instalar: apt-get install git

  - Ejecutar: sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

  - Lanzar: zsh

  - Para salir: exit
  
- [zsh para Mac](http://sourabhbajaj.com/mac-setup/iTerm/zsh.html)

  - Zsh:

    - brew install zsh zsh-completions
  
  - Oh My Zsh:
  
    - curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
    
    - chsh -s /usr/local/bin/zsh
    
  - Volver a entrar en iTerm2 y cuando estás en un repositorio git te dice en qué rama estás por ejemplo git:(fix/max-digits-number-76).

## Sistema Operativo

### **Uso (trabajo):** [macOS (Apple)](https://es.wikipedia.org/wiki/OS_X_El_Capitan). **Uso (personal):**  [Windows 10](https://es.wikipedia.org/wiki/Windows_10)

- Bloquear ordenador Mac: Ctrl + Command + Q

Cambios en Windows 10: 

- Eliminar todos los programas preinstalados de Windows 10 con [Remove-AppxPackage](http://www.askvg.com/guide-how-to-remove-all-built-in-apps-in-windows-10/).

- Deshabilitar que las aplicaciones nuevas instaladas [se ejecuten al inicio](https://www.howtogeek.com/108742/how-to-use-the-new-task-manager-in-windows-8/).

- Instalar [Linux Bash Shell](https://www.howtogeek.com/249966/how-to-install-and-use-the-linux-bash-shell-on-windows-10/) en Windows 10. Creados los proyectos en /mnt/c/Projects (C:/Projects).

  - Nota [@ethomson](https://twitter.com/ethomson/status/910167854321987586/photo/1): Pro-tip: you don't have to use bash in Windows Subsystem for Linux.  If you run `wsl`, it will use your login shell, so you can use zsh!
  
## Automatización

¿Qué cosas repetitivas puedo automatizar?

- Funciones útiles Jorge Aznar: https://github.com/jorgeatgu/setup/blob/master/dotfiles/func/functions.zsh.

- Arrancar front y back de un proyecto: [Script abrir varias ventanas Terminal mac](scripts/front_back.sh).

  - Abre distintas pestañas para ejecutar los scripts que arrancan el proyecto. 
  
  - Para probarlo te creas fichero en local, lo adaptas a tu proyecto, lo haces ejecutable con chmod +x y lo ejecutas con ./front_back.sh.
  
## Virtual box

Para probar IE en un mac (ejemplo generando versión producción y con http-server para probar en local)

- Bajar VirtualBox: https://www.virtualbox.org/wiki/Downloads: VirtualBox 5.1.30 platform packages: OS X hosts

- Seguir pasos https://github.com/magnetikonline/linuxmicrosoftievirtualmachines#ie11---windows-7

    mkdir -p ~/vm/ie11-windows7 && cd ~/vm/ie11-windows7
    
    wget -ci https://github.com/magnetikonline/linuxmicrosoftievirtualmachines/raw/master/vmarchiveset/ie11-windows7.txt
    
    cat IE11.Win7.For.Linux.VirtualBox.zip.00? >IE11.Win7.For.Linux.VirtualBox.zip
    
    rm ie11-windows7.txt IE11.Win7.For.Linux.VirtualBox.zip.00?
    
    unzip IE11.Win7.For.Linux.VirtualBox.zip
    
    rm IE11.Win7.For.Linux.VirtualBox.zip

- En Virtual Box: Importar servicio virtualizado (desde ~/vm/ie11-windows7)

- Instalar http-server: https://www.npmjs.com/package/http-server (la primera vez)
    npm install http-server -g

- Generar versión salida
    - npm run build

- Ejecutar http-server (en dist está la versión de distribución en este caso): 
    http-server dist

- Disponible en virtual box en http://ip-local:8080 (la ip local con ifconfig, te la especifica en la terminal el http-server)

- [Copiar y pegar url en Virtual Box, en Windows con Ctrl+V](https://www.liberiangeek.net/2013/09/copy-paste-virtualbox-host-guest-machines/)

## Herramientas organización

### **Uso:** [Evernote](https://evernote.com/intl/es/), [Taiga Kanban](https://taiga.io/)

- Evernote para crear notas con el setup de proyectos y organizar tareas de trabajo.

- Taiga para proyectos personales: [Organización del aprendizaje](https://tree.taiga.io/project/cristinafsanz-improving-in-front-end-development/kanban), [organización de proyectos por áreas](https://tree.taiga.io/project/cristinafsanz-ilusionismo-con-github-pages/kanban).

## Edición imágenes

### **Uso:** [Gimp](https://www.gimp.org/), [Inkscape](https://inkscape.org/en/)

- [Gimp for developers](http://cristinafsanz.github.io/projects/gimp-for-developers/).

- [Make a logo with Inkscape](http://cristinafsanz.github.io/projects/logo-inkscape/).

## Screenshots

- [Carbon](https://carbon.now.sh/).

## Gifs

- [GiphyCapture](https://giphy.com/apps/giphycapture).

## Videoconferencia

- [Meet Google](https://meet.google.com/).

## Firma

- Editar y firmar documentos PDF con Acrobe Acrobar Reader DC.

- Aplicación móvil firmar PDFs: docusign.

## Enlaces interesantes

* Setup de trabajo:

  * [Jorge Aznar](http://jorgeatgu.com/blog/mi-setup-de-trabajo/).
  
  * [Enlaces Bash y Gulp TheAntiEvent17](https://gist.github.com/jorgeatgu/6b1f9bdf8ae9b02ad69d2f7bd039aac9#automatización-con-gulp-y-bash).
  
* Dot files: 
  
  * [Getting started](https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789).
  
  * [Awesome dotfiles](https://github.com/webpro/awesome-dotfiles).
  
  * [Jorge Aznar](https://github.com/jorgeatgu/setup).
  
  * [Viroide](https://github.com/Viroide/dotfiles).

  * [Angel M Miguel](https://github.com/Angelmmiguel/dotfiles).

  * [Joan León](https://github.com/nucliweb/my-terminal).
  
* Gulp:

  * [Jon Torrado](https://medium.com/@jontorrado/working-with-gulp-2-19376bfdd077).
  
* Inicio proyectos: 

  * [Jorge Aznar (artículo)](http://jorgeatgu.com/blog/iniciando-proyectos-con-base/).
  
  * [Jorge Aznar (GitHub)](https://github.com/jorgeatgu/base).

  * [Generador Jorge Aznar creado por Viroide](https://github.com/Viroide/generator-jorge-atgu). [Artículo Medium](https://medium.com/@viroide/un-peque%C3%B1o-regalo-para-jorge-aznar-38c558e57e95).

* Configurar el terminal:

  * [Carlos Azaustre (HyperTerm)](https://youtu.be/2w-e_0W0Y78).

* Vim Sessions:

  * [Julia Evans](https://twitter.com/b0rk/status/906739364985806848).
  
  * [Handle vim sessions](https://github.com/dhruvasagar/vim-prosession).
