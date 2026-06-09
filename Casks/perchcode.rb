cask "perchcode" do
  version "0.1.0"
  sha256 "1a2a9454384614c510dae0281945866677209c57bb7c94d45c7f4de04d9a1594"

  url "https://files.perchcode.dev/desktop/Perch-universal.dmg"
  name "Perch"
  desc "Mobile and native client for Claude Code and Codex"
  homepage "https://perchcode.dev/"

  depends_on macos: :ventura

  app "Perch.app"

  zap trash: [
    "~/Library/Application Support/com.vibelabs.perch.desktop",
    "~/Library/Caches/com.vibelabs.perch.desktop",
    "~/Library/HTTPStorages/com.vibelabs.perch.desktop",
    "~/Library/Preferences/com.vibelabs.perch.desktop.plist",
    "~/Library/Saved Application State/com.vibelabs.perch.desktop.savedState",
    "~/Library/WebKit/com.vibelabs.perch.desktop",
  ]
end
