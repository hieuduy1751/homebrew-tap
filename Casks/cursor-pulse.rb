cask "cursor-pulse" do
  version "0.2.0"

  on_arm do
    sha256 "242d5cd14fd5185d872eeebbe017d272c60360ab2882c684f140f09f541d8a50"
    url "https://github.com/hieuduy1751/cursor-pulse/releases/download/v#{version}/CursorPulse-v#{version}-mac-arm64.dmg"
  end

  on_intel do
    sha256 "aa7e7ba172f345e5ee1f3b637ea469f886a3a24f051850d31c936331ac8c72e2"
    url "https://github.com/hieuduy1751/cursor-pulse/releases/download/v#{version}/CursorPulse-v#{version}-mac-x64.dmg"
  end

  name "CursorPulse"
  desc "Ambient AI Agent Cursor Companion & State Tracker for macOS"
  homepage "https://github.com/hieuduy1751/cursor-pulse"

  depends_on macos: :sonoma

  app "CursorPulse.app"

  caveats <<~EOS
    If macOS blocks CursorPulse on first open (unnotarized app), run:
      xattr -dr com.apple.quarantine /Applications/CursorPulse.app
    Or allow it in System Settings > Privacy & Security.
  EOS

  zap trash: [
    "~/.cursorpulse",
    "~/Library/Preferences/dev.cursorpulse.app.plist",
  ]
end
