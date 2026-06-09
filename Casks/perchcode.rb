cask "perchcode" do
  version "0.1.3"
  sha256 "1fc1e6ccd4ea79f41bd156a181be9f144efc1e4ad3533db44879b25624131576"

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
