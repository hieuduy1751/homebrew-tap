cask "cursor-pulse" do
  version "0.2.1"

  on_arm do
    sha256 "7fb036d2fe298a9160c02e2deb4cc89f625c9a6a10994d4b0ef0ca58d9563d3e"
    url "https://github.com/hieuduy1751/cursor-pulse/releases/download/v#{version}/CursorPulse-v#{version}-mac-arm64.dmg"
  end

  on_intel do
    sha256 "03a929b587a3faa904feb95731d0e5ddb922c490a3f17b619be01d2178a9c0e3"
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
