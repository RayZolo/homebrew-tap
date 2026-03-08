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
# 2026-03-08T17:00:04.271|INF|Checking if the app is installed
# 2026-03-08T17:00:04.271|INF|Installing the latest stable version
# 2026-03-08T17:00:04.673|INF|Downloading https://app.eveguru.online/download/EveGuru.2.1.245.zip
# ⠄ [00:00:04] [#####>------------------------] [8.80 MiB/51.62 MiB] 1.82 MiB/s (23.5s)
```
