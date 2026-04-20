cask "nice" do
  version "0.1.0"
  sha256 "843075437b15a5d37caf03c0fd4e5c8262f1363f94b51e2008066a4b2ccd1cb6"

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
