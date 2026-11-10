cask "paletrail" do
  version "0.1.0"
  sha256 "ec96e4785304f4eb508d7607edbca794dade5227bb7de3ad7d86db7206ca27ad"

  url "https://github.com/Gidrono/paletrail/releases/download/v#{version}/PaleTrail.zip"
  name "PaleTrail"
  desc "GitHub-style trail of colourful pixel squares behind the cursor when holding Cmd"
  homepage "https://github.com/Gidrono/paletrail"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "PaleTrail.app"

  # The app is ad-hoc signed, not notarized.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/PaleTrail.app"]
  end

  uninstall quit: "com.gidrono.paletrail"

  zap trash: "~/Library/Preferences/com.gidrono.paletrail.plist"
end
