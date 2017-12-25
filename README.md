# Configuraciones para desarrollo Front-End

Idea de repositorio a partir de la charla de [Bash](https://gist.github.com/jorgeatgu/6b1f9bdf8ae9b02ad69d2f7bd039aac9#automatización-con-gulp-y-bash) de [Jorge Aznar](https://twitter.com/jorgeATGU) que dio en el [TheAntiEvent17](http://theantievent.org/).

Estructura del README basada en el [setup](https://github.com/taniarascia/setup) de [Tania Rascia](https://twitter.com/taniarascia).

## Contenidos

- [Sistema Operativo](#sistema-operativo)

- [Navegador](#navegador)

- [Editor texto](#editor-texto)

- [Terminal](#terminal)

- [Automatización](#automatización)

- [Virtual Box](#virtual-box)

- [Herramientas organización](#herramientas-organización)

- [Edición imágenes](#edición-imágenes)

- [Screenshots](#screenshots)

- [Videoconferencia](#videoconferencia)

- [Enlaces interesantes](#enlaces-interesantes)

## Sistema Operativo

### **Uso (trabajo):** [macOS (Apple)](https://es.wikipedia.org/wiki/OS_X_El_Capitan). **Uso (personal):**  [Windows 10](https://es.wikipedia.org/wiki/Windows_10)

- Bloquear ordenador Mac: Ctrl + Command + Q

Cambios en Windows 10: 

- Eliminar todos los programas preinstalados de Windows 10 con [Remove-AppxPackage](http://www.askvg.com/guide-how-to-remove-all-built-in-apps-in-windows-10/).

- Deshabilitar que las aplicaciones nuevas instaladas [se ejecuten al inicio](https://www.howtogeek.com/108742/how-to-use-the-new-task-manager-in-windows-8/).

- Instalar [Linux Bash Shell](https://www.howtogeek.com/249966/how-to-install-and-use-the-linux-bash-shell-on-windows-10/) en Windows 10. Creados los proyectos en /mnt/c/Projects (C:/Projects).

  - Nota [@ethomson](https://twitter.com/ethomson/status/910167854321987586/photo/1): Pro-tip: you don't have to use bash in Windows Subsystem for Linux.  If you run `wsl`, it will use your login shell, so you can use zsh!

## Navegador

### **Uso:** [Google Chrome](https://www.google.com/chrome/)

### Extensiones

- [Octotree](https://chrome.google.com/webstore/detail/octotree/bkhaagjahfmjljalopjnoealnfndnagc).

- [Octolinker](https://chrome.google.com/webstore/detail/octolinker/jlmafbaeoofdegohdhinkhilhclaklkp).

- [Wappalyzer](https://chrome.google.com/webstore/detail/wappalyzer/gppongmhjkpfnbhagpmjfkannfbllamg?hl=es).

- Chrome extensions for quick site redesigns: https://meowni.ca/posts/extensions/.

- [Un verso al día](https://versos.angelmm.rocks/).

## Editor Texto

### **Uso:** [Visual Studio Code](http://code.visualstudio.com/)
**Previamente usé:** [Atom](https://atom.io/) y [Brackets](http://brackets.io/).

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

## Videoconferencia

- [Meet Google](https://meet.google.com/).

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
