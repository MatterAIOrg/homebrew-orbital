cask "orbital" do
  version "0.7.3"
  sha256 "d1b2ccbb95ef92c7d1bdecae3b5bb70d90594c33d2204770262177ec20596266"

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
