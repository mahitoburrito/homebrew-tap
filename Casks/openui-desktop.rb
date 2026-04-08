cask "openui-desktop" do
  arch arm: "arm64", intel: "x64"
  version "1.0.27"

  if Hardware::CPU.arm?
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-arm64.dmg"
    sha256 "0b7ba5ce9a0a0d257360d1e9318d3cda5f217af678f008516c9298cb90694862"
  else
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-x64.dmg"
    sha256 "08d4826c40f14bfc4719081aed4b16125016644ec047a1178d4ffa0357d645c1"
  end

  name "OpenUI Desktop"
  desc "AI Agent Command Center — manage multiple coding agents on an infinite canvas"
  homepage "https://github.com/mahitoburrito/openui-desktop"

  app "OpenUI.app"

  zap trash: [
    "~/.openui-desktop",
  ]
end
