cask "symmeet-agent" do
  version "0.4.0-beta.1"
  sha256 "14662f5f35c58f9fc428dcfbad1b0ed6da870c2869141da00fd7a2f7a5a5cc26"

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
