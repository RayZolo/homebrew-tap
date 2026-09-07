# The [EveGuru](https://eveguru.online/) Homebrew Tap

Official Homebrew tap for [EveGuru](https://eveguru.online/), the premier companion app for EVE Online on macOS.


## Included Casks

| Cask                        | Description                                                                                       |
| :-------------------------- | :------------------------------------------------------------------------------------------------ |
| `eveguru`                   | The main EveGuru launcher and application bundle                                                  |
| `eveguru-wine-stable`       | Mirror of official WineHQ stable binaries, bypassing macOS Gatekeeper checks                      |
| `eveguru-gstreamer-runtime` | Mirror of official GStreamer runtime binaries required by Wine, bypassing macOS Gatekeeper checks |

---

## Install

```shell
# EveGuru is built for Intel macOS and requires Rosetta 2 on Apple Silicon
softwareupdate --install-rosetta --agree-to-license

brew trust rayzolo/tap
brew install rayzolo/tap/eveguru
```

---

## Update

```shell
brew upgrade rayzolo/tap/eveguru
```

> **Note for existing users:** If you previously had the upstream casks installed, run `brew uninstall --ignore-dependencies gstreamer-runtime wine-stable` before upgrading to resolve cask conflicts.

---

## Uninstall

```shell
# Standard uninstall
brew uninstall rayzolo/tap/eveguru

# Complete uninstall (including the ~/.wine-eveguru wine prefix)
brew uninstall --zap rayzolo/tap/eveguru
```

---

## Troubleshoot

### View Logs

To see launcher and Wine logs in real time, run the launcher from the Terminal:

```shell
/Applications/EveGuru.app/Contents/MacOS/launcher.sh
# 2026-03-08T17:00:04.271|INF|Checking if the app is installed
# 2026-03-08T17:00:04.271|INF|Installing the latest stable version
# 2026-03-08T17:00:04.673|INF|Downloading https://app.eveguru.online/download/EveGuru.2.1.245.zip
# ⠄ [00:00:04] [#####>------------------------] [8.80 MiB/51.62 MiB] 1.82 MiB/s (23.5s)
```

### macOS Gatekeeper / Quarantine

Quarantine attributes are stripped automatically during installation. If macOS prevents the app or Wine from launching, you can manually remove quarantine flags:

```shell
xattr -dr com.apple.quarantine "/Applications/EveGuru.app"
xattr -dr com.apple.quarantine "/Applications/Wine Stable.app"
```
