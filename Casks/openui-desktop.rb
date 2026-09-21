cask "openui-desktop" do
  arch arm: "arm64", intel: "x64"
  version "1.0.47"

  if Hardware::CPU.arm?
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-arm64.dmg"
    sha256 "3cc7e1cf25330357fc93f52b020a09b2bd60d3f7656a7b1119cfdf14b852514a"
  else
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-x64.dmg"
    sha256 "9888e0fe6e1dd7237aea7179c6a14abaeeec238ed0d0259b23f476624e55cba6"
  end

  name "OpenUI Desktop"
  desc "AI Agent Command Center — manage multiple coding agents on an infinite canvas"
  homepage "https://github.com/mahitoburrito/openui-desktop"

  app "OpenUI.app"

  zap trash: [
    "~/.openui-desktop",
  ]
end
