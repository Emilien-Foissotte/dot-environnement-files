#!/bin/bash
set -euo pipefail

# be sure to have install tmux
# sudo apt-get update && sudo apt-get install tmux neovim

# install neovim
# curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
# chmod u+x nvim.appimage
# ./nvim.appimage
#
## Optional: exposing nvim globally.
# sudo mv squashfs-root /
# sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
# nvim

# clone tpm plugin
rm -rf ~/.tmux/plugins/tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# detect local or remote setup, and copy confs
#source the right one, wether remote or local
set +e
if [[ $(test -n "$SSH_CLIENT") ]]; then
	echo "Local configuration loaded"
	cp ./.tmux.conf ~
	tmux source ~/.tmux.conf
else
	echo "Remote configuration loaded"
	cp ./.tmux.remote.conf ~
	tmux source ~/.tmux.remote.conf
fi
set -e

#setup config for neovim
mkdir -p ~/.config/nvim
cp -r .config/nvim ~/.config/

# install nodejs npm and default-jre for mason lsp tools
# sudo apt-get update & sudo apt-get install nodejs npm default-jre

# install hadolint for Docker linting
# sudo wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v2.12.0/hadolint-Linux-(uname -m)
# sudo sudo chmod +x /bin/hadolint

# start neovim, packer will tell you it has install plugins
# then start Mason, :Mason to install all lintings, lsp servers etc..
