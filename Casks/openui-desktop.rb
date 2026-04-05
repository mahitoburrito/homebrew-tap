cask "openui-desktop" do
  arch arm: "arm64", intel: "x64"
  version "1.0.21"

  if Hardware::CPU.arm?
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-arm64.dmg"
    sha256 "591f4175fd0552d2522fbe50f95c04b4ed1532725739e0d03aa4828d8f00cb3c"
  else
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-x64.dmg"
    sha256 "910ac4cfe441404b2b3eadaefde54afcdba459c1de4f040e35ab89f3e45e28a8"
  end

  name "OpenUI Desktop"
  desc "AI Agent Command Center — manage multiple coding agents on an infinite canvas"
  homepage "https://github.com/mahitoburrito/openui-desktop"

  app "OpenUI.app"

  zap trash: [
    "~/.openui-desktop",
  ]
end
