# Gidrono Homebrew Tap

Homebrew casks for apps by [@Gidrono](https://github.com/Gidrono).

## Install

```bash
brew install --cask gidrono/tap/paletrail
```

Using the full `gidrono/tap/<name>` form taps the repo and trusts the cask automatically. After that, `brew upgrade --cask paletrail` and `brew uninstall --cask paletrail` work with the short name.

## Casks

| Cask | Description |
| --- | --- |
| [`paletrail`](https://github.com/Gidrono/paletrail) | Trail of pixel squares behind the cursor while holding ⌘, in 8 colour palettes (GitHub, Earthy, Sunset, Fire, Ocean, Forest, Neon, Pastel) |

## Updating a cask

After publishing a new release, bump `version` and `sha256` in `Casks/<name>.rb`:

```bash
curl -sL https://github.com/Gidrono/paletrail/releases/download/vX.Y.Z/PaleTrail.zip | shasum -a 256
```
