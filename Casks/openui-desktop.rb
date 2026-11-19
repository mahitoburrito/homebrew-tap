cask "openui-desktop" do
  arch arm: "arm64", intel: "x64"
  version "1.0.51"

  if Hardware::CPU.arm?
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-arm64.dmg"
    sha256 "dc2f7b36dff89177286a92796d1afe798e2654440dd0a7b8d020b17730dd040a"
  else
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-x64.dmg"
    sha256 "6492c9927851f9934af994a4ad8f6b89a1f31a8a3e9689c773f541ffc3a1b6e9"
  end

  name "OpenUI Desktop"
  desc "AI Agent Command Center — manage multiple coding agents on an infinite canvas"
  homepage "https://github.com/mahitoburrito/openui-desktop"

  app "OpenUI.app"

  zap trash: [
    "~/.openui-desktop",
  ]
end
