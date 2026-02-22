# The [EveGuru](https://eveguru.online/) Homebrew Cask

## Install

```shell
# EveGuru is built for Intel macOS and so requires Rosetta 2 to be installed
softwareupdate --install-rosetta --agree-to-license
brew install rayzolo/tap/eveguru
```

## Update

```shell
brew upgrade rayzolo/tap/eveguru
```

## Troubleshoot

To see the launcher and Wine logs, run it from the Terminal.

```shell
/Applications/EveGuru.app/Contents/MacOS/launcher.sh
# 2026-02-22T19:20:07.019|DBG|WINEPREFIX=/Users/rayzolo/.wine-eveguru
# 2026-02-22T19:20:07.019|DBG|DATA_DIR=/Applications/EveGuru.app/Contents/Data
# 2026-02-22T19:20:07.019|INF|Checking if the app is installed
# 2026-02-22T19:20:07.019|INF|Installing the latest stable version
# 2026-02-22T19:20:07.415|DBG|Downloading https://app.eveguru.online/download/EveGuru.2.1.241.zip
# ⠚ [00:00:38] [##########>-------------------] [18.59 MiB/51.62 MiB] 303.39 KiB/s (111.5s)
```
