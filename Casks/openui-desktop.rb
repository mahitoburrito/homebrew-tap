cask "openui-desktop" do
  arch arm: "arm64", intel: "x64"
  version "1.0.29"

  if Hardware::CPU.arm?
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-arm64.dmg"
    sha256 "a2545ceb888f29cd956de02fdc627c3cb18c34d5910f6ff2542fcd869deacb49"
  else
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-x64.dmg"
    sha256 "6d429e75efb6e4efd3cdba3b21fa8cd650cbf9023b437d0cdff8db4543ebaf9c"
  end

  name "OpenUI Desktop"
  desc "AI Agent Command Center — manage multiple coding agents on an infinite canvas"
  homepage "https://github.com/mahitoburrito/openui-desktop"

  app "OpenUI.app"

  zap trash: [
    "~/.openui-desktop",
  ]
end
