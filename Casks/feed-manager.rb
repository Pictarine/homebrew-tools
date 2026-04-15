cask "feed-manager" do
    version "0.1.0"
    sha256 "1c3547041f069252299168f6446870e4b773a045f7e342cf45f9c7f1fed139d9"

    url "https://github.com/Pictarine/feed-manager-releases/releases/download/v#{version}/FeedManager-#{version}.zip"
    name "Feed Manager"
    desc "macOS app for managing Firebase Remote Config"
    homepage "https://github.com/Pictarine/feed-manager-releases"

    depends_on macos: ">= :sonoma"

    app "FeedManager.app"

    zap trash: [
      "~/Library/Preferences/com.mlg.feed-manager.plist",
      "~/Library/Application Support/FeedManager",
      "~/Library/Caches/com.mlg.feed-manager",
    ]
end
