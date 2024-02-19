#!/usr/bin/env zsh
# istage.plugin.zsh

if $(type bat >/dev/null 2>&1) && $(type awk >/dev/null 2>&1) && $(type fzf >/dev/null 2>&1); then

  istage() {
    git status --short |
      awk '{print substr($0, 4)}' |
      fzf --layout reverse \
        --info inline \
        --border \
        --preview "bat --style=numbers --color=always {} | head -500" \
        --preview-window "down:24:noborder" \
        --prompt 'Stage file(s): ' \
        --multi \
        --header 'Navigate: ↓↑ / CTRL-J/K | Select: TAB | Stage: ENTER | Exit: ESC | Cancel: CTRL-C' |
      xargs -r git add
  }

else
  echo "Missing required tools: bat, awk, fzf"
fi
