cask "fluxtick" do
  version "0.4.0"
  sha256 "e6c84385c7178efb625602916a0048420d75dc83fd67c2ead1446b034ae94873"

  url "https://github.com/coldhighsun/FluxTick/releases/download/v#{version}/FluxTick-v#{version}-osx-arm64.dmg"
  name "FluxTick"
  desc "Floating widget for tracking multiple financial markets"
  homepage "https://github.com/coldhighsun/FluxTick"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :monterey"

  app "FluxTick.app"

  # The app is only signed ad hoc, so drop the quarantine flag that would make Gatekeeper block it.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/FluxTick.app"]
  end

  zap trash: "~/.config/FluxTick"
end
