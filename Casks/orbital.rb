cask "orbital" do
  version "0.7.2"
  sha256 "e84cf277577fba998f115768636944ee39b2e535a30a87bd5ac60a3635c5e2a3"

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
