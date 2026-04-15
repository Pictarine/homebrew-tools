cask "feed-manager" do
    version "0.1.0"
    sha256 :no_check

    url "https://github.com/Pictarine/feed-manager-releases/releases/download/v#{version}/FeedManager-#{version}.zip"
    name "Feed Manager"
    desc "macOS app for managing Firebase Remote Config"
    homepage "https://github.com/Pictarine/feed-manager"

    depends_on macos: ">= :sonoma"

    app "FeedManager.app"

    zap trash: [
        "~/Library/Preferences/com.pictarine.feed-manager.plist",
        "~/Library/Application Support/FeedManager",
        "~/Library/Caches/com.pictarine.feed-manager",
    ]
end