cask "orbital" do
  version "0.8.6"
  sha256 "8fd40cfcf7f6ae6395f42308e31d1a7a16b7973e91ced35af032b22fb0b3220d"

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
