cask "nice" do
  version "0.45.0"
  sha256 "ec928000ff70aefe6a560e1a36ffff359609cad947a9b18c79849923964c5625"

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
