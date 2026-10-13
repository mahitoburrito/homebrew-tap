cask "openui-desktop" do
  arch arm: "arm64", intel: "x64"
  version "1.0.48"

  if Hardware::CPU.arm?
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-arm64.dmg"
    sha256 "cc0110c5e6313208821e1ab36bb770bb78990e1fb8d10aa45fddd95f0d49ed45"
  else
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-x64.dmg"
    sha256 "afda050c4e8e25bb4749c18e4c7254829f154a9c6f6bc92f21aea8adedc82f77"
  end

  name "OpenUI Desktop"
  desc "AI Agent Command Center — manage multiple coding agents on an infinite canvas"
  homepage "https://github.com/mahitoburrito/openui-desktop"

  app "OpenUI.app"

  zap trash: [
    "~/.openui-desktop",
  ]
end
