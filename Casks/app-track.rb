cask "app-track" do
  version "1.0.3"
  sha256 "8fc750cc14bdbd5e4c1ce7821793d6cf63cd644d07b960288994cc0d48529808"

  url "https://github.com/Caffeine-Driven-Development-LLC/AppTrack/releases/download/v1.0.3/App.Track-1.0.3-arm64.dmg",
      verified: "github.com/Caffeine-Driven-Development-LLC/AppTrack/"
  name "App Track"
  desc "Desktop app to help job seekers organize and track their job searches"
  homepage "https://getapptrack.com/"

  app "App Track.app"

  zap trash: [
  "~/Library/Application Support/App Track",
  "~/Library/Logs/App Track",
  "~/Library/Preferences/com.caffeinedrivendevelopment.apptrack.plist",
  "~/Library/Saved Application State/com.caffeinedrivendevelopment.apptrack.savedState"
]
end