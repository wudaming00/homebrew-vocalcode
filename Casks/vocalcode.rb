cask "vocalcode" do
  version "1.2.0"
  sha256 "fc54ef6d173d771dcd5a2d18b3fae59bf056a965c88018b2e1e18e3cc53fab5b"

  url "https://vocalcode.app/VocalCode-#{version}.dmg"
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
