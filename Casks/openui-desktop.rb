cask "openui-desktop" do
  arch arm: "arm64", intel: "x64"
  version "1.0.24"

  if Hardware::CPU.arm?
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-arm64.dmg"
    sha256 "207008d008f1976914613d252fd49d4077aa2e7d3b8224fd7e5a5101bb69324c"
  else
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-x64.dmg"
    sha256 "20d4fa0b02581931aad8b291eecc803d8272f15a9b7a8b13ab1eb37ed9ea5a37"
  end

  name "OpenUI Desktop"
  desc "AI Agent Command Center — manage multiple coding agents on an infinite canvas"
  homepage "https://github.com/mahitoburrito/openui-desktop"

  app "OpenUI.app"

  zap trash: [
    "~/.openui-desktop",
  ]
end
