cask "openui-desktop" do
  arch arm: "arm64", intel: "x64"
  version "1.0.46"

  if Hardware::CPU.arm?
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-arm64.dmg"
    sha256 "5af9d8346971b7916b9e6718b1ab2928f52a39cee4680dec228dd4c6f9a832b1"
  else
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-x64.dmg"
    sha256 "415e00abcb8ae2b80f334452d96ecbc0b8d6db1a42402545a4ac686913507149"
  end

  name "OpenUI Desktop"
  desc "AI Agent Command Center — manage multiple coding agents on an infinite canvas"
  homepage "https://github.com/mahitoburrito/openui-desktop"

  app "OpenUI.app"

  zap trash: [
    "~/.openui-desktop",
  ]
end
