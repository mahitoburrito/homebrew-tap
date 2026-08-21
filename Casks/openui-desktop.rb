cask "openui-desktop" do
  arch arm: "arm64", intel: "x64"
  version "1.0.42"

  if Hardware::CPU.arm?
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-arm64.dmg"
    sha256 "cd78014134edfdf9451def9f53192c83084e111accd58d3f6eb2d4c6cad51109"
  else
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-x64.dmg"
    sha256 "0815382110a1c112a3500ac8c1ab9f98021e083b5755a9cfba9c7ff59ca92e3f"
  end

  name "OpenUI Desktop"
  desc "AI Agent Command Center — manage multiple coding agents on an infinite canvas"
  homepage "https://github.com/mahitoburrito/openui-desktop"

  app "OpenUI.app"

  zap trash: [
    "~/.openui-desktop",
  ]
end
