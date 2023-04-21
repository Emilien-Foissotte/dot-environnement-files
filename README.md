# dot-environnement-files

## Terminal Setup

Install Guake

```sh
sudo apt install guake
```

Update preferences to start on login, and remove annoying notification.

## Systray Setup

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

