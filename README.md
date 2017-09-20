# Configuraciones para desarrollo Front-End

Idea de repositorio a partir de la charla de [Bash](https://gist.github.com/jorgeatgu/6b1f9bdf8ae9b02ad69d2f7bd039aac9#automatización-con-gulp-y-bash) de [Jorge Aznar](https://twitter.com/jorgeATGU) que dio en el [TheAntiEvent17](http://theantievent.org/).

Estructura del README basada en el [setup](https://github.com/taniarascia/setup) de [Tania Rascia](https://twitter.com/taniarascia).

## Contenidos

- [Sistema Operativo](#sistema-operativo)

- [Navegador](#navegador)

- [Editor texto](#editor-texto)

- [Terminal](#terminal)

- [Automatización](#automatización)

- [Herramientas organización](#herramientas-organización)

- [Edición imágenes](#edición-imágenes)

- [Enlaces interesantes](#enlaces-interesantes)

## Sistema Operativo

### **Uso (trabajo):** [macOS (Apple)](https://es.wikipedia.org/wiki/OS_X_El_Capitan). **Uso (personal):**  [Windows 10](https://es.wikipedia.org/wiki/Windows_10)

Cambios en Windows 10: 

- Eliminar todos los programas preinstalados de Windows 10 con [Remove-AppxPackage](http://www.askvg.com/guide-how-to-remove-all-built-in-apps-in-windows-10/).

- Deshabilitar que las aplicaciones nuevas instaladas [se ejecuten al inicio](https://www.howtogeek.com/108742/how-to-use-the-new-task-manager-in-windows-8/).

- Instalar [Linux Bash Shell](https://www.howtogeek.com/249966/how-to-install-and-use-the-linux-bash-shell-on-windows-10/) en Windows 10. Creados los proyectos en /mnt/c/Projects (C:/Projects).

  - Nota [@ethomson](https://twitter.com/ethomson/status/910167854321987586/photo/1): Pro-tip: you don't have to use bash in Windows Subsystem for Linux.  If you run `wsl`, it will use your login shell, so you can use zsh!

## Navegador

### **Uso:** [Google Chrome](https://www.google.com/chrome/)

### Extensiones

- [Un verso al día](https://versos.angelmm.rocks/).

- [Octotree](https://chrome.google.com/webstore/detail/octotree/bkhaagjahfmjljalopjnoealnfndnagc).

- Chrome extensions for quick site redesigns: https://meowni.ca/posts/extensions/.

## Editor Texto

### **Uso:** [Visual Studio Code](http://code.visualstudio.com/)
**Previamente usé:** [Atom](https://atom.io/) y [Brackets](http://brackets.io/).

- Tiene terminal integrada.

### Extensiones

- [Auto-Open Markdown Preview](https://marketplace.visualstudio.com/items?itemName=hnw.vscode-auto-open-markdown-preview).

- [Plugins VS Code Carlos Azaustre](https://youtu.be/CeAvbVpBWR4):

  - Panda Theme

  - Babel ES6/ES7

  - Editor Config for VS Code: regla de sintaxis en los proyectos. Útil también para un equipo y teniendo este plugin.

  - ESLint

  - File-icons para tener iconos para distintos tipos de ficheros.

  - Mithril Emmet

  - npm: instalar desde línea de comandos de VS Code.

  - npm Intellisense

  - Vetur si se trabaja con Vue. Con snippets de código y resaltados.

  - TODO Highlight

  - Prettier: para autoindentar

  - BEM Expand: te completa el hijo al poner &.

## Terminal

Inicialmente he usado el terminal de Mac con el tema Homebrew. A partir de ahora quiero usar iTerm2 (actualizaré el repositorio con los avances).

## Automatización

¿Qué cosas repetitivas puedo automatizar?

- Arrancar front y back de un proyecto: [Script abrir varias ventanas Terminal mac](scripts/front_back.sh).

## Herramientas organización

### **Uso:** [Evernote](https://evernote.com/intl/es/), [Taiga Kanban](https://taiga.io/)

- Evernote para crear notas con el setup de proyectos y organizar tareas de trabajo.

- Taiga para proyectos personales: [Organización del aprendizaje](https://tree.taiga.io/project/cristinafsanz-improving-in-front-end-development/kanban), [organización de proyectos por áreas](https://tree.taiga.io/project/cristinafsanz-ilusionismo-con-github-pages/kanban).

## Edición imágenes

### **Uso:** [Gimp](https://www.gimp.org/), [Inkscape](https://inkscape.org/en/)

- [Gimp for developers](http://cristinafsanz.github.io/projects/gimp-for-developers/).

- [Make a logo with Inkscape](http://cristinafsanz.github.io/projects/logo-inkscape/).

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