cask "eveguru" do
  version "0.0.2"
  sha256 "703a8089573c7af34eb471172c70a4f9886dc642b1963b70b1cc416caea9e949"

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
