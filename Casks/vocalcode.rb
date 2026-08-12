cask "vocalcode" do
  version "1.0.9"
  sha256 "4c8516e7db170ace2ce6a121950ed9f715013ee75d7b4f7a07d04ca2c2e29877"

  url "https://github.com/wudaming00/vocalcode-docs/releases/download/v#{version}/VocalCode-#{version}.dmg"
  name "VocalCode"
  desc "Local push-to-talk voice input for AI coding"
  homepage "https://vocalcode.app/"

  livecheck do
    url "https://vocalcode.app/latest.json"
    strategy :json do |json|
      json.dig("macos", "version")
    end
  end

  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "VocalCode.app"

  caveats <<~EOS
    VocalCode requires Microphone, Accessibility and Input Monitoring permissions.
    Recognition runs on device after the selected model downloads.
  EOS

  zap trash: [
    "~/Library/Application Support/VocalCode",
    "~/Library/LaunchAgents/app.vocalcode.VocalCode.plist",
  ]
end
