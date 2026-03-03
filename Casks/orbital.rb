cask "orbital" do
  version "0.6.9"
  sha256 "46bff7433fbd9c56d1bc663db45254ffb9dd0b38b76b132618e00a0bab5b545b"

  url "https://releases.matterai.so/Orbital-darwin-arm64-latest.dmg"
  name "Orbital"
  desc "Native AI Coding IDE powered by Axon models with OSS Harness Engine, Background Agents, and Cloud Agents."
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
