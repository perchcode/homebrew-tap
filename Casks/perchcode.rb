cask "perchcode" do
  version "0.1.2"
  sha256 "679f4b97ee2d2da790c7426fc0a3bcbb5f6223347e3d1e92a6f0ad4d2e31402a"

  # Versioned URL (unique per release) so the Cloudflare CDN never serves a stale
  # cached build the way a stable alias would.
  url "https://files.perchcode.dev/desktop/Perch_#{version}_universal.dmg"
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
