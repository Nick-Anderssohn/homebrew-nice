cask "nice" do
  version "0.16.0"
  sha256 "246039ac66b95a60a16200ba5b9a9479a034c37fd78edc3b1e98af55419faeab"

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
