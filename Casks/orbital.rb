cask "orbital" do
  version "0.8.2"
  sha256 "93214c313863f1c3e82f8c245494ad483293c1adcb263712f379029efbb556ce"

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
