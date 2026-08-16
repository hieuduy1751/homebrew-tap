cask "cursor-pulse" do
  version "0.1.0"

  on_arm do
    sha256 "f24ffbf8114ffc151ab491a753536a42ea319c72446e1a3e4c7f5285bf2668c4"
    url "https://github.com/hieuduy1751/cursor-pulse/releases/download/v#{version}/CursorPulse-v#{version}-mac-arm64.dmg"
  end

  on_intel do
    sha256 "e744d45c1b5a964719a86131547afb214443d904e8a5cd02888a3cd78b469076"
    url "https://github.com/hieuduy1751/cursor-pulse/releases/download/v#{version}/CursorPulse-v#{version}-mac-x64.dmg"
  end

  name "CursorPulse"
  desc "Ambient AI Agent Cursor Companion & State Tracker for macOS"
  homepage "https://github.com/hieuduy1751/cursor-pulse"

  depends_on macos: ">= :sonoma"

  app "CursorPulse.app"

  zap trash: [
    "~/.cursorpulse",
    "~/Library/Preferences/dev.cursorpulse.app.plist",
  ]
end
