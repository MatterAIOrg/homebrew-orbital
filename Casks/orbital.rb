cask "orbital" do
  version "0.7.1"
  sha256 "dc580f42660f4e80fe1556ff714243f4f1c056a815962299619f91b26b77e3d6"

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
