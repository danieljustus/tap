cask "symmeet-agent" do
  version "0.4.0-beta.1"
  sha256 "94532915fdfe1b9491f892bcb45e229870c57f6c48769d7fefa36c9b86816940"

  url "https://github.com/danieljustus/symaira-meet/releases/download/v0.4.0-beta.1/SymMeetAgent_v0.4.0-beta.1.dmg"
  name "SymMeetAgent"
  desc "Consent-first local meeting recording agent"
  homepage "https://github.com/danieljustus/symaira-meet"

  depends_on macos: :sequoia

  app "SymMeetAgent.app"

  zap trash: [
    "~/Library/Caches/dev.symaira.symmeet.agent",
    "~/Library/Preferences/dev.symaira.symmeet.agent.plist",
  ]
end
