cask "feed-manager" do
    version "0.2.0"
    sha256 "38862fdfe30c32e840331cd4e450e2a3069bb3b8e14e48b0f8954c092657512b"

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
