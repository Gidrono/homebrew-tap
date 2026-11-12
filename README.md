# Gidrono Homebrew Tap

Homebrew casks for apps by [@Gidrono](https://github.com/Gidrono).

## Install

```bash
brew install --cask gidrono/tap/peiltrail
```

Using the full `gidrono/tap/<name>` form taps the repo and trusts the cask automatically. After that, `brew upgrade --cask peiltrail` and `brew uninstall --cask peiltrail` work with the short name.

## Casks

| Cask | Description |
| --- | --- |
| [`peiltrail`](https://github.com/Gidrono/PeilTrail) (formerly `paletrail`) | Trail of pixel squares behind the cursor while holding ⌘, in 8 colour palettes (GitHub, Earthy, Sunset, Fire, Ocean, Forest, Neon, Pastel) |

## Updating a cask

After publishing a new release, bump `version` and `sha256` in `Casks/<name>.rb`:

```bash
curl -sL https://github.com/Gidrono/PeilTrail/releases/download/vX.Y.Z/PeilTrail.zip | shasum -a 256
```
