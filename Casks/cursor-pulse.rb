cask "cursor-pulse" do
  version "0.3.1"

  on_arm do
    sha256 "194001e6cbc5aaaf9dfe3a6aea4733d35f2efc480a41721c84a2290f02f27ea8"
    url "https://github.com/hieuduy1751/cursor-pulse/releases/download/v#{version}/CursorPulse-v#{version}-mac-arm64.dmg"
  end

  on_intel do
    sha256 "b26bb7b4c0b1b018d18bcbc10e43049f87263336dc45d1f57eafac4041cedbd5"
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
