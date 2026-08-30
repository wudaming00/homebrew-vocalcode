cask "vocalcode" do
  version "1.2.1"
  sha256 "fb6ab157243a3cb9618864eb339793d006e6843a2f336590ec0b9601f5f9f3c3"

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
