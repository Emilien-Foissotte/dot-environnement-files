# dot-environnement-files

## Terminal Emulator Setup

Install Guake and xclip

```sh
sudo apt install guake xclip fontconfig
```

Update fonts

```sh
fc-cache -fv
```

## Fish shell setup

```sh
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update
sudo apt-get install fish
```

Make fish your default shell at startup of terminals

```sh
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish
```

Update preferences to start on login, and remove annoying notification.

## Systray Setup

Install a custom systray, to get a glimpse of your hardware state in an instant glance.

```sh
sudo add-apt-repository ppa:fossfreedom/indicator-sysmonitor
sudo apt-get update
sudo apt-get install indicator-sysmonitor
```

Search in the dash for "indicator-sysmonitor" to run the application, a tick "Run on startup". Customize at you wish.

Mine customization is the following

```txt
{cputemp} | cpu: {cpu} | mem: {mem} ({swap}) | net: {netcomp}
```

## Tmux setup

Install tmux

```sh
sudo apt install tmux
```

```sh
cd ~ && git clone https://github.com/Emilien-Foissotte/dot-environnement-files.git
cd dot-environnement-files && cp .tmux.conf ~/  ## copy tmux conf to folder
tmux source ~/.tmux.conf # reload configuration
```

## Install some fonts to support icons

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh)"
```
Go to https://www.nerdfonts.com/font-downloads
Donwload the desired font (JetBrainsMono Nerd Font)
Unpack archive to font 

```sh
cd /usr/share/fonts && sudo mkdir JetBrainsMono
unzip downloadedfile.zip
fc-cache -f -v
```

Modify it in Guake

## Neovim setup

### (x64)

```sh
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage
sudo mv squashfs-root /
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
```

### arm [instructions](https://github.com/neovim/neovim/wiki/Building-Neovim)

```sh
sudo apt-get update && sudo apt-get install ninja-build gettext cmake unzip curl
git clone https://github.com/neovim/neovim && git checkout stable
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
```

Configure nvim with bindings and options :

```sh
mkdir -p ~/.config/nvim/
cd ~/dev-environment-files/ && cp -r ./.config/nvim/ ~/.config/nvim/
```

Open Neovim and install packages with Packer :

```sh
nvim ~/.config/init.lua
```

Install hadolint

```sh
sudo wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v2.12.0/hadolint-Linux-(uname -m)
sudo sudo chmod +x /bin/hadolint
```

Exit the file, it should has installed everything

Open Neovim again and open Mason with `:Mason`

Everything should be fine now !
