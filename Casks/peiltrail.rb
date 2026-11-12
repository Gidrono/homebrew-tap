cask "peiltrail" do
  version "0.2.0"
  sha256 "07994b7e05bfe82672951faa06090a83032e359a37513d00dfb1137b52b11fd2"

  url "https://github.com/Gidrono/PeilTrail/releases/download/v#{version}/PeilTrail.zip"
  name "PeilTrail"
  desc "Pixel-square cursor trail with 8 colour palettes, shown while holding Cmd"
  homepage "https://github.com/Gidrono/PeilTrail"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "PeilTrail.app"

  uninstall quit: "com.gidrono.peiltrail"

  zap trash: [
    "~/Library/Preferences/com.gidrono.paletrail.plist",
    "~/Library/Preferences/com.gidrono.peiltrail.plist",
  ]
end
