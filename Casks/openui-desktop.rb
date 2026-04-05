cask "openui-desktop" do
  arch arm: "arm64", intel: "x64"
  version "1.0.20"

  if Hardware::CPU.arm?
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-arm64.dmg"
    sha256 "d3138d5fad043137ab6e5dae03cfe9a8e30dca012c331cd20fdc880af86628e8"
  else
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-x64.dmg"
    sha256 "fdec3fd6d52cf3b12f49d65947866c82dea088517a04703f5a6183ec4152d212"
  end

  name "OpenUI Desktop"
  desc "AI Agent Command Center — manage multiple coding agents on an infinite canvas"
  homepage "https://github.com/mahitoburrito/openui-desktop"

  app "OpenUI.app"

  zap trash: [
    "~/.openui-desktop",
  ]
end
