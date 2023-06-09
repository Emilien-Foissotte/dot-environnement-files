#!/bin/bash
set -euo pipefail

# be sure to have install neovim first and tmux
# sudo apt-get update && sudo apt-get install tmux neovim

cp ./.tmux.conf ~
mkdir -p ~/.config/nvim
cp -r .config/nvim ~/.config/nvim
