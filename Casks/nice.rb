cask "nice" do
  version "0.28.0"
  sha256 "22c0b51aedef8680f54c62514c03675f2f7f2f7317a66ffc0965fc27a9f7c27b"

  url "https://github.com/Nick-Anderssohn/nice/releases/download/v#{version}/Nice-#{version}.zip"
  name "Nice"
  desc "Native macOS GUI for Claude Code"
  homepage "https://github.com/Nick-Anderssohn/nice"

  depends_on macos: :sonoma

  app "Nice.app"

  zap trash: [
    "~/Library/Preferences/dev.nickanderssohn.nice.plist",
    "~/Library/Saved Application State/dev.nickanderssohn.nice.savedState",
  ]
end
