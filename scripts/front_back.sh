#!/bin/bash
# File: ~/front_back.sh

function new_tab() {
  TAB_NAME=$1
  COMMAND=$2
  osascript \
    -e "tell application \"Terminal\"" \
    -e "tell application \"System Events\" to keystroke \"t\" using {command down}" \
    -e "do script \"printf '\\\e]1;$TAB_NAME\\\a'; $COMMAND\" in front window" \
    -e "end tell" > /dev/null
}

new_tab "Frontend" "cd ~/Projects/project-ui; grunt serve --force"
new_tab "Compile dir" "cd ~/Projects/project-complete/;"
new_tab "script-start" "cd ~/Projects/configuration; ./init.sh start"
new_tab "grunt build" "cd ~/Projects/project-ui"
