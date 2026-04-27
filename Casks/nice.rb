cask "nice" do
  version "0.13.0"
  sha256 "65800adec1a3910d38d595423aad0d8ec87f9620c0500290817fbfb4c5c95037"

  url "https://github.com/Nick-Anderssohn/nice/releases/download/v#{version}/Nice-#{version}.zip"
  name "Nice"
  desc "Native macOS GUI for Claude Code"
  homepage "https://github.com/Nick-Anderssohn/nice"

  depends_on macos: ">= :sonoma"

  app "Nice.app"

  zap trash: [
    "~/Library/Preferences/dev.nickanderssohn.nice.plist",
    "~/Library/Saved Application State/dev.nickanderssohn.nice.savedState",
  ]
end
