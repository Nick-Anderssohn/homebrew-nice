cask "nice" do
  version "0.57.0"
  sha256 "46e1f09f0ac6b377600c8399e415c65375321e840a0d98490f6d8f3e43c3319d"

  url "https://github.com/Nick-Anderssohn/nice/releases/download/v#{version}/Nice-#{version}.zip"
  name "Nice"
  desc "Native macOS GUI for Claude Code"
  homepage "https://github.com/Nick-Anderssohn/nice"

  depends_on macos: :sonoma

  app "Nice.app"

  zap trash: [
    "~/Library/Application Support/Nice",
    "~/Library/Preferences/dev.nickanderssohn.nice.plist",
    "~/Library/Saved Application State/dev.nickanderssohn.nice.savedState",
  ]
end
