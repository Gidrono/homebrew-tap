# Gidrono Homebrew Tap

Homebrew casks for apps by [@Gidrono](https://github.com/Gidrono).

## Install

```bash
brew install --cask gidrono/tap/paletrail
```

Or tap once, then use short names:

```bash
brew tap gidrono/tap
brew install --cask paletrail
```

## Casks

| Cask | Description |
| --- | --- |
| [`paletrail`](https://github.com/Gidrono/paletrail) | GitHub-style trail of colourful pixel squares behind the cursor while holding ⌘ |

## Updating a cask

After publishing a new release, bump `version` and `sha256` in `Casks/<name>.rb`:

```bash
curl -sL https://github.com/Gidrono/paletrail/releases/download/vX.Y.Z/PaleTrail.zip | shasum -a 256
```
