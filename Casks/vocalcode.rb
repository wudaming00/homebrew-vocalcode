cask "vocalcode" do
  version "1.0.16"
  sha256 "5b5cc701fdf1d75744bd6f8090f05d9fa3b9f4df1efc99f7aa699231e2bf5e80"

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
