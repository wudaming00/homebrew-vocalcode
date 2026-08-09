# Homebrew tap for VocalCode

Official upstream Homebrew cask for
[VocalCode](https://vocalcode.app/) — local push-to-talk dictation for AI
coding on Apple silicon macOS.

## Install

```sh
brew install --cask wudaming00/vocalcode/vocalcode
```

VocalCode supports macOS 11 or later on Apple silicon. The app requests
Microphone, Accessibility and Input Monitoring permissions for audio capture,
configured shortcut detection and text insertion.

The 30-day trial enables all features. Initial trial provisioning, model and
update downloads, checkout, activation and periodic paid-licence validation use
the internet. Speech recognition runs on device after model download and does not
upload recognition audio or transcripts. See the
[privacy notice](https://vocalcode.app/privacy/) for details.

## Update

```sh
brew update
brew upgrade --cask vocalcode
```

## Uninstall

```sh
brew uninstall --cask vocalcode
```

To remove saved settings, models, licence state and the optional login agent too:

```sh
brew uninstall --zap --cask vocalcode
```

Support and documentation: <https://github.com/wudaming00/vocalcode-docs>
