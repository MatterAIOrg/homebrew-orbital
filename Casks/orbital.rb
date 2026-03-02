cask "orbital" do
  version "0.6.8"
  sha256 :no_check

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
