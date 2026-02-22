cask "eveguru" do
  version "0.0.1"
  sha256 "aefa6632823af05f280c0a2afd24da5c1f4a952a362dbd42148b0ba13cd1ca5c"

  url "https://github.com/rayzolo/eveguru-osx-bundle/releases/download/v#{version}/EveGuru.zip"
  name "EveGuru"
  desc "The premier companion app for EVE Online"
  homepage "https://eveguru.online/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on cask: "wine-stable"
  depends_on formula: "nushell"
  depends_on formula: "unzip"

  app "EveGuru.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{HOMEBREW_PREFIX}/Caskroom/wine-stable"]
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", caskroom_path]
  end

  uninstall quit: "online.eveguru.app"

  zap trash: "~/.wine-eveguru"

  caveats do
    requires_rosetta
  end
end
