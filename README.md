# VocalCode Homebrew Cask (Official)

This is the official Homebrew tap for
[VocalCode](https://vocalcode.app/) — on-device, push-to-talk voice input for
AI coding on Apple silicon macOS. VocalCode is developed and maintained by
[Daming Wu](https://github.com/wudaming00).

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

## Official links

- Website: <https://vocalcode.app/>
- Releases: <https://github.com/wudaming00/vocalcode-docs/releases>
- Documentation and support: <https://github.com/wudaming00/vocalcode-docs>
- Developer: <https://github.com/wudaming00>
