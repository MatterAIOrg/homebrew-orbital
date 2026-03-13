cask "orbital" do
  version "0.7.9"
  sha256 "1470ca4cc67c9534d1bf289883399e286f031189f86d78ead6090da361b81414"

  url "https://releases.matterai.so/Orbital-darwin-arm64-latest.dmg"
  name "Orbital"
  desc "Orbital, by MatterAI. Build, debug, and review code with immense precision. Powered by Axon LLMs."
  homepage "https://matterai.so"

  app "Orbital.app"

  uninstall quit: "ai.matterai.orbital",
            delete: "/Applications/Orbital.app"

  zap trash: [
    "~/.orbital",
    "~/Library/Application Support/Orbital",
    "~/Library/Caches/Orbital",
    "~/Library/Preferences/ai.matterai.orbital.plist",
    "~/Library/Saved Application State/ai.matterai.orbital.savedState",
  ]
end
