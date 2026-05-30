cask "openui-desktop" do
  arch arm: "arm64", intel: "x64"
  version "1.0.33"

  if Hardware::CPU.arm?
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-arm64.dmg"
    sha256 "c3ad697caaaa603a54ab1755d230a5e75c138503ef4e880d49233ce23257b205"
  else
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-x64.dmg"
    sha256 "24bd890d543b7b21003d5a9ea844a6e3d3f808d75f3ab78a936521c8fe42b3b6"
  end

  name "OpenUI Desktop"
  desc "AI Agent Command Center — manage multiple coding agents on an infinite canvas"
  homepage "https://github.com/mahitoburrito/openui-desktop"

  app "OpenUI.app"

  zap trash: [
    "~/.openui-desktop",
  ]
end
