cask "orbital" do
  version "1.0.0"
  sha256 "6cb874ac1ff23b6020080faf61a79bac5dcae30068bc26dab0d148b76394a817"

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
