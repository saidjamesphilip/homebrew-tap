cask "niwa" do
  version "1.3.12"
  sha256 "a940be69ec8f428fca521e327388cb85da8ccd658e7d149697e657b68ed274e4"

  url "https://github.com/saidjamesphilip/Niwa/releases/download/v#{version}/Niwa-#{version}-mac.zip"
  name "Niwa"
  desc "macOS menu bar productivity app with focus timer, tasks, notes, and gamification"
  homepage "https://niwa-app.pages.dev/"

  depends_on macos: ">= :sequoia"

  app "Niwa.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Niwa.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.niwa.app",
    "~/Library/Caches/com.niwa.app",
    "~/Library/Preferences/com.niwa.app.plist",
  ]
end
