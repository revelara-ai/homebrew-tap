# Revelara Homebrew Tap

Homebrew tap for [Revelara](https://revelara.ai) command-line tools.

## Install

```bash
brew install revelara-ai/tap/rvl
```

Or tap first, then install:

```bash
brew tap revelara-ai/tap
brew install rvl
```

Upgrade with `brew upgrade rvl`.

## Available tools

| Tool  | Cask          | Source                                                          |
|-------|---------------|----------------------------------------------------------------|
| `rvl` | `Casks/rvl.rb`| [revelara-ai/rvl-cli](https://github.com/revelara-ai/rvl-cli)  |

## Maintenance

Casks in this tap are generated and pushed automatically by
[GoReleaser](https://goreleaser.com) from each `rvl-cli` release
(`homebrew_casks` in its `.goreleaser.yml`). **Do not edit `Casks/*.rb` by
hand** — changes are overwritten on the next release.
