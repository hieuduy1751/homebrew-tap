cask "cursor-pulse" do
  version "0.1.2"

  on_arm do
    sha256 "8f608cbd464f994ad114766c819de4f825cfdeefbb815236144347eabc6a0416"
    url "https://github.com/hieuduy1751/cursor-pulse/releases/download/v#{version}/CursorPulse-v#{version}-mac-arm64.dmg"
  end

  on_intel do
    sha256 "0b6cc4d4d8efd41153f03989eef74f1909fd2c52d56532dbb439982ccad14be0"
    url "https://github.com/hieuduy1751/cursor-pulse/releases/download/v#{version}/CursorPulse-v#{version}-mac-x64.dmg"
  end

  name "CursorPulse"
  desc "Ambient AI Agent Cursor Companion & State Tracker for macOS"
  homepage "https://github.com/hieuduy1751/cursor-pulse"

  depends_on macos: :sonoma

  app "CursorPulse.app"

  zap trash: [
    "~/.cursorpulse",
    "~/Library/Preferences/dev.cursorpulse.app.plist",
  ]
end
