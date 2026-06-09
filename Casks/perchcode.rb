cask "perchcode" do
  version "0.1.2"
  sha256 "41bb19e0429bbebd9d2f533bcd72d89223de90be25faeabd4c15e0ec32d9adce"

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
