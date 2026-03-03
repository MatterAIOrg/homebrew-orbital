cask "orbital" do
  version "0.6.9"
  sha256 "46bff7433fbd9c56d1bc663db45254ffb9dd0b38b76b132618e00a0bab5b545b"

  url "https://releases.matterai.so/Orbital-darwin-arm64-latest.dmg"
  name "Orbital"
  desc "AI-powered code editor built on VS Code"
  homepage "https://matterai.so"

  app "Orbital.app"

  zap trash: [
    "~/.orbital",
    "~/Library/Application Support/Orbital",
    "~/Library/Caches/Orbital",
    "~/Library/Preferences/ai.matterai.orbital.plist",
    "~/Library/Saved Application State/ai.matterai.orbital.savedState",
  ]
end
