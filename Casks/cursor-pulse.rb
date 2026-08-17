cask "cursor-pulse" do
  version "0.1.3"

  on_arm do
    sha256 "c25f09de1de61156c7c0c4d3a03c0cd0287d2a6bf1888a8f77e9e075202744ce"
    url "https://github.com/hieuduy1751/cursor-pulse/releases/download/v#{version}/CursorPulse-v#{version}-mac-arm64.dmg"
  end

  on_intel do
    sha256 "e873f2e9267cf718fddb6c80b28dfe7884f256a027a925931464bfd5b97b2e47"
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
