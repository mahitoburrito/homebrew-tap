cask "openui-desktop" do
  arch arm: "arm64", intel: "x64"
  version "1.0.32"

  if Hardware::CPU.arm?
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-arm64.dmg"
    sha256 "1ba10c876d0f75907cbb4f365e5c295a802e9d6b0c3cd767740799005b4ab1ce"
  else
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-x64.dmg"
    sha256 "d27c494bea5cb0850b1e3b18543d3d3be4a404c64762a0c508504b8e4f8dbcab"
  end

  name "OpenUI Desktop"
  desc "AI Agent Command Center — manage multiple coding agents on an infinite canvas"
  homepage "https://github.com/mahitoburrito/openui-desktop"

  app "OpenUI.app"

  zap trash: [
    "~/.openui-desktop",
  ]
end
