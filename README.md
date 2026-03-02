# homebrew-orbital

Homebrew tap for [Orbital IDE](https://matterai.so) - AI-powered code editor built on VS Code.

## Installation

```bash
brew tap MatterAIOrg/orbital
brew install --cask orbital
```

## Usage

After installation, launch Orbital:

```bash
open /Applications/Orbital.app
```

## Update

To update to the latest version:

```bash
brew upgrade --cask orbital
```

## Uninstall

To uninstall Orbital:

```bash
brew uninstall --cask orbital
```

To completely remove all data:

```bash
brew uninstall --cask --zap orbital
```

## Troubleshooting

### Installation Fails

If installation fails with a checksum error:

```bash
brew reinstall --cask orbital --force
```

### App Won't Launch

If the app won't launch due to Gatekeeper:

```bash
xattr -cr /Applications/Orbital.app
```

## More Information

- [Orbital IDE Website](https://matterai.so)
- [Orbital IDE Repository](https://github.com/MatterAIOrg/orbital-ide)
