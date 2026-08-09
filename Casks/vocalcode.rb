cask "vocalcode" do
  version "1.0.0"
  sha256 "91b8e6ca22301bb6b7701fcd2894fe670881243939aef0f923dc21456fb9bb46"

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
