cask "lactic" do
  version "0.3.8"
  sha256 "7c88586d62a8d0102a49cce033b4459124bf9d92a72864b16c599b011937574d"

  url "https://github.com/blairj09/lactic/releases/download/v#{version}/Lactic_#{version}_universal.dmg",
      verified: "github.com/blairj09/lactic/"
  name "Lactic"
  desc "Open-source structured cycling training"
  homepage "https://lactic.fit/"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Lactic updates itself in the app; brew upgrade also works.
  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Lactic.app"

  zap trash: [
    "~/Library/Application Support/fit.lactic.app",
    "~/Library/Caches/fit.lactic.app",
    "~/Library/Preferences/fit.lactic.app.plist",
    "~/Library/Saved Application State/fit.lactic.app.savedState",
    "~/Library/WebKit/fit.lactic.app",
  ]
end
