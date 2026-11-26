cask "lactic" do
  version "0.3.9"
  sha256 "00f91c44f0316030e236d1ce7a94fcc14c2538d9cbd20259c85041c9dcf7c562"

  url "https://github.com/blairj09/lactic/releases/download/v#{version}/Lactic_#{version}_universal.dmg"
  name "Lactic"
  desc "Open-source structured cycling training"
  homepage "https://lactic.fit/"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Lactic updates itself in the app; brew upgrade also works.
  auto_updates true
  depends_on :macos

  app "Lactic.app"

  zap trash: [
    "~/Library/Application Support/fit.lactic.app",
    "~/Library/Caches/fit.lactic.app",
    "~/Library/Preferences/fit.lactic.app.plist",
    "~/Library/Saved Application State/fit.lactic.app.savedState",
    "~/Library/WebKit/fit.lactic.app",
  ]
end
