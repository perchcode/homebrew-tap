# perchcode/homebrew-tap

Homebrew tap for [Perch](https://perchcode.dev) — the macOS desktop app (Tauri).

## Install

```bash
brew install --cask perchcode/tap/perchcode
```

This downloads the signed & notarized universal `.dmg` from `files.perchcode.dev`
and installs `Perch.app`.

## Upgrade

```bash
brew upgrade --cask perchcode/tap/perchcode
```

## Uninstall

```bash
brew uninstall --cask perchcode/tap/perchcode
# remove leftover data too:
brew uninstall --zap --cask perchcode/tap/perchcode
```

---

The Perch CLI installs separately via npm: `npm install -g perchcode`.
