cask "azuenko-finicky" do
  version "3.4.1"
  sha256 "f526d7850b4dbd8247113332a5e9b68cce4ca8a008afb51a56b903a49d24f9b0"

  url "https://github.com/azuenko/finicky/releases/download/v#{version}/Finicky.zip"
  name "Finicky"
  desc "Utility for customizing which browser to start"
  homepage "https://github.com/johnste/finicky"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sierra"

  app "Finicky.app"

  zap trash: "~/Library/Preferences/net.kassett.finicky.plist"
end
