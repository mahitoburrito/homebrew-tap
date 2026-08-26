cask "openui-desktop" do
  arch arm: "arm64", intel: "x64"
  version "1.0.43"

  if Hardware::CPU.arm?
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-arm64.dmg"
    sha256 "8001072c24a8d5a9c65c7e37b37b497e4ddf50c8d68b9a587a90fc5f3474b3d0"
  else
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-x64.dmg"
    sha256 "e88863f7e599922eaf39ed0433ad463ff2dc4f023481fcd245510e8a393cec2b"
  end

  name "OpenUI Desktop"
  desc "AI Agent Command Center — manage multiple coding agents on an infinite canvas"
  homepage "https://github.com/mahitoburrito/openui-desktop"

  app "OpenUI.app"

  zap trash: [
    "~/.openui-desktop",
  ]
end
