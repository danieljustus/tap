cask "symmeet-agent" do
  version "0.4.0-beta.1"
  sha256 "2470ce7ee7a00f0cf358914586231cf242080590a6f1136a3f83d424535a862b"

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
