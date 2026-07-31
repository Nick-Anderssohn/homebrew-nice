cask "nice" do
  version "0.46.0"
  sha256 "44f7d2cd0b76f67e1ab59539d23d01e56036b368a4957ed87c83b82602942151"

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
