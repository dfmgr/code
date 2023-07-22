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
  code --install-extension "aaron-bond.better-comments" --force
  code --install-extension "dracula-theme.theme-dracula" --force
  code --install-extension "EditorConfig.EditorConfig" --force
  code --install-extension "esbenp.prettier-vscode" --force
  code --install-extension "file-icons.file-icons" --force
  code --install-extension "formulahendry.auto-rename-tag" --force
  code --install-extension "foxundermoon.shell-format" --force
  code --install-extension "nhoizey.gremlins" --force
  code --install-extension "oderwat.indent-rainbow" --force
  code --install-extension "timonwong.shellcheck" --force
  code --install-extension "TzachOvadia.todo-list" --force
  code --install-extension "WakaTime.vscode-wakatime" --force
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
