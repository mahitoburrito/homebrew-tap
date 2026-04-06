cask "openui-desktop" do
  arch arm: "arm64", intel: "x64"
  version "1.0.23"

  if Hardware::CPU.arm?
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-arm64.dmg"
    sha256 "2d2faa9b818084dd0a6ad8fac49061e1ce7b727ebd2256e517d58338e9c92313"
  else
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-x64.dmg"
    sha256 "da0a5b673cbf98babe4ea8d2374649f28175ab78ad465b3d1462a1118c8e4460"
  end

  name "OpenUI Desktop"
  desc "AI Agent Command Center — manage multiple coding agents on an infinite canvas"
  homepage "https://github.com/mahitoburrito/openui-desktop"

  app "OpenUI.app"

  zap trash: [
    "~/.openui-desktop",
  ]
end
