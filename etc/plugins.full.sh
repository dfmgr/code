#!/usr/bin/env sh
# shellcheck shell=sh
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
##@Version           :  202305021314-git
# @@Author           :  Jason Hempstead
# @@Contact          :  jason@casjaysdev.com
# @@License          :  LICENSE.md
# @@ReadME           :  plugins.sh --help
# @@Copyright        :  Copyright: (c) 2023 Jason Hempstead, Casjays Developments
# @@Created          :  Tuesday, May 02, 2023 13:14 EDT
# @@File             :  plugins.sh
# @@Description      :
# @@Changelog        :  New script
# @@TODO             :  Better documentation
# @@Other            :
# @@Resource         :  code --list-extensions | awk '{print $1}' | sed 's|"||g;s|,||g;s|^|code --install-extension "|g;s|$|" --force|g'
# @@Terminal App     :  no
# @@sudo/root        :  no
# @@Template         :  shell/sh
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# shellcheck disable=SC2317
# shellcheck disable=SC2120
# shellcheck disable=SC2155
# shellcheck disable=SC2199
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
APPNAME="$(basename "$0" 2>/dev/null)"
VERSION="202305021314-git"
RUN_USER="$USER"
SET_UID="$(id -u)"
SCRIPT_SRC_DIR="$(cd "$(dirname "$0")" && pwd)"
PLUGINS_SH_CWD="$(realpath "$PWD")"
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# colorization
if [ "$SHOW_RAW" = "true" ]; then
  __printf_color() { printf '%b' "$1\n" | tr -d '\t' | sed '/^%b$/d;s,\x1B\[ 0-9;]*[a-zA-Z],,g'; }
else
  __printf_color() { { [ -z "$2" ] || DEFAULT_COLOR=$2; } && printf "%b" "$(tput setaf "$DEFAULT_COLOR" 2>/dev/null)" "$1\n" "$(tput sgr0 2>/dev/null)"; }
fi
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# check for command
__cmd_exists() { which $1 >/dev/null 2>&1 || return 1; }
__function_exists() { builtin type $1 >/dev/null 2>&1 || return 1; }
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# custom functions
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Define variables
DEFAULT_COLOR="254"
PLUGINS_SH_EXIT_STATUS=0
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Main application
if __cmd_exists code; then
  code --install-extension "1dot75cm.RPMSpec" --force
  code --install-extension "aaron-bond.better-comments" --force
  code --install-extension "bengreenier.vscode-node-readme" --force
  code --install-extension "bierner.emojisense" --force
  code --install-extension "bierner.github-markdown-preview" --force
  code --install-extension "bierner.markdown-checkbox" --force
  code --install-extension "bierner.markdown-emoji" --force
  code --install-extension "bierner.markdown-footnotes" --force
  code --install-extension "bierner.markdown-mermaid" --force
  code --install-extension "bierner.markdown-preview-github-styles" --force
  code --install-extension "bierner.markdown-yaml-preamble" --force
  code --install-extension "bmalehorn.vscode-fish" --force
  code --install-extension "bungcip.better-toml" --force
  code --install-extension "Compilenix.vscode-zonefile" --force
  code --install-extension "compilouit.manpage" --force
  code --install-extension "coolbear.systemd-unit-file" --force
  code --install-extension "DavidAnson.vscode-markdownlint" --force
  code --install-extension "dbaeumer.vscode-eslint" --force
  code --install-extension "denoland.vscode-deno" --force
  code --install-extension "DEVSENSE.composer-php-vscode" --force
  code --install-extension "DEVSENSE.phptools-vscode" --force
  code --install-extension "DEVSENSE.profiler-php-vscode" --force
  code --install-extension "dotiful.dotfiles-syntax-highlighting" --force
  code --install-extension "DotJoshJohnson.xml" --force
  code --install-extension "dracula-theme.theme-dracula" --force
  code --install-extension "duniul.dircolors" --force
  code --install-extension "dunstontc.viml" --force
  code --install-extension "EditorConfig.EditorConfig" --force
  code --install-extension "eiminsasete.apacheconf-snippets" --force
  code --install-extension "esbenp.prettier-vscode" --force
  code --install-extension "file-icons.file-icons" --force
  code --install-extension "formulahendry.auto-rename-tag" --force
  code --install-extension "foxundermoon.shell-format" --force
  code --install-extension "ginfuru.ginfuru-vscode-jekyll-syntax" --force
  code --install-extension "hangxingliu.vscode-nginx-conf-hint" --force
  code --install-extension "HexcodeTechnologies.vscode-prettydiff" --force
  code --install-extension "hogashi.crontab-syntax-highlight" --force
  code --install-extension "justusadam.language-haskell" --force
  code --install-extension "malmaud.tmux" --force
  code --install-extension "MariusAlchimavicius.json-to-ts" --force
  code --install-extension "mechatroner.rainbow-csv" --force
  code --install-extension "mrmlnc.vscode-apache" --force
  code --install-extension "ms-azuretools.vscode-docker" --force
  code --install-extension "ms-python.python" --force
  code --install-extension "ms-python.vscode-pylance" --force
  code --install-extension "ms-toolsai.jupyter" --force
  code --install-extension "ms-toolsai.jupyter-keymap" --force
  code --install-extension "ms-toolsai.jupyter-renderers" --force
  code --install-extension "ms-toolsai.vscode-jupyter-cell-tags" --force
  code --install-extension "ms-toolsai.vscode-jupyter-slideshow" --force
  code --install-extension "ms-vscode-remote.remote-containers" --force
  code --install-extension "ms-vscode.live-server" --force
  code --install-extension "nhoizey.gremlins" --force
  code --install-extension "nico-castell.linux-desktop-file" --force
  code --install-extension "oderwat.indent-rainbow" --force
  code --install-extension "quicktype.quicktype" --force
  code --install-extension "redhat.vscode-yaml" --force
  code --install-extension "ritwickdey.LiveServer" --force
  code --install-extension "rpinski.shebang-snippets" --force
  code --install-extension "sissel.shopify-liquid" --force
  code --install-extension "timonwong.shellcheck" --force
  code --install-extension "tommasov.hosts" --force
  code --install-extension "TzachOvadia.todo-list" --force
  code --install-extension "VisualStudioExptTeam.intellicode-api-usage-examples" --force
  code --install-extension "VisualStudioExptTeam.vscodeintellicode" --force
  code --install-extension "Vue.volar" --force
  code --install-extension "Vue.vscode-typescript-vue-plugin" --force
  code --install-extension "WakaTime.vscode-wakatime" --force
  code --install-extension "wingrunr21.vscode-ruby" --force
  code --install-extension "Wscats.eno" --force
  code --install-extension "yinfei.luahelper" --force
  code --install-extension "yzhang.markdown-all-in-one" --force
  code --install-extension "ZainChen.json" --force
  PLUGINS_SH_EXIT_STATUS=0
else
  __printf_color "Code does not seem to be installed" >&2
  PLUGINS_SH_EXIT_STATUS=1
fi
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# End application
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# lets exit with code
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
exit $PLUGINS_SH_EXIT_STATUS
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# ex: ts=2 sw=2 et filetype=sh
