# EXPERIMENTAL channel: the Rust+GPUI rewrite of Nice, shipped as
# "Nice RS Dev.app" (its own bundle id — coexists with the prod Nice cask).
# Version + sha256 are patched by the nice repo's release-rs workflow from
# rs-vX.Y.Z prerelease tags. The placeholder sha below is replaced by the
# first release's bump PR; the cask is not installable until then.
cask "nice-rs" do
  version "0.1.3"
  sha256 "5ce1274c3011429cd3915f7cc079f91f6b4777fb66d93e6652337668c35297f3"

  url "https://github.com/Nick-Anderssohn/nice/releases/download/rs-v#{version}/Nice-RS-#{version}.zip"
  name "Nice RS (experimental)"
  desc "Experimental Rust rewrite of Nice — native macOS GUI for Claude Code"
  homepage "https://github.com/Nick-Anderssohn/nice"

  depends_on macos: :sonoma

  app "Nice RS Dev.app"

  caveats <<~EOS
    This is the EXPERIMENTAL Rust rewrite channel. It installs
    "Nice RS Dev.app" alongside (not replacing) the stable Nice cask.
  EOS

  zap trash: [
    "~/Library/Preferences/dev.nickanderssohn.nice-rs-dev.plist",
    "~/Library/Saved Application State/dev.nickanderssohn.nice-rs-dev.savedState",
    "~/Library/Application Support/Nice RS Dev",
  ]
end
