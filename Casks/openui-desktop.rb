cask "openui-desktop" do
  arch arm: "arm64", intel: "x64"
  version "1.0.25"

  if Hardware::CPU.arm?
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-arm64.dmg"
    sha256 "41b15f54c8fab0f2a81043e6e37f45d4bca79cce8afa935c06038d4a4bc2ff9e"
  else
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-x64.dmg"
    sha256 "5d7f512bc344c6167ea3437df369f375f7b9a98368043dd0c9c3de006058c807"
  end

  name "OpenUI Desktop"
  desc "AI Agent Command Center — manage multiple coding agents on an infinite canvas"
  homepage "https://github.com/mahitoburrito/openui-desktop"

  app "OpenUI.app"

  zap trash: [
    "~/.openui-desktop",
  ]
end
