cask "paletrail" do
  version "0.1.1"
  sha256 "f623db59e350c8a6f1a532618e873ac995ee6b9dbc42b50c0ad78844351d2c8b"

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

  uninstall quit: "com.gidrono.paletrail"

  zap trash: "~/Library/Preferences/com.gidrono.paletrail.plist"
end
