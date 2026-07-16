cask "nice" do
  version "0.43.0"
  sha256 "53a923276ece42d92253cac47668c1e0423c0f50c5810ab08ddcacce01bf2f48"

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
