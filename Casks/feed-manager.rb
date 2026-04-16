cask "feed-manager" do
  version "0.3.0"
  sha256 "6b39b1c18a41ec9986d484b5fd59e64b439c93b3b9ece6659f88be58c75433ce"

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
