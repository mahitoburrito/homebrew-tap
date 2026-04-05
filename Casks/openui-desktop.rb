cask "openui-desktop" do
  arch arm: "arm64", intel: "x64"
  version "1.0.19"

  if Hardware::CPU.arm?
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-arm64.dmg"
    sha256 "ec426ba25083b97093a1045196f189ba453582b468484ffaacecf18ba4a4a708"
  else
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-x64.dmg"
    sha256 "6d854dd1c8b6b3fcc6da3c9cb295be80340037a33b7406fe213fd3771f935250"
  end

  name "OpenUI Desktop"
  desc "AI Agent Command Center — manage multiple coding agents on an infinite canvas"
  homepage "https://github.com/mahitoburrito/openui-desktop"

  app "OpenUI.app"

  zap trash: [
    "~/.openui-desktop",
  ]
end
