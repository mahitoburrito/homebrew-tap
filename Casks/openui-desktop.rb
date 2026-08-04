cask "openui-desktop" do
  arch arm: "arm64", intel: "x64"
  version "1.0.39"

  if Hardware::CPU.arm?
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-arm64.dmg"
    sha256 "179cc6de13af41f3ed28df91fc6a5637aebff50c426703fb73b45e7ec6d102d1"
  else
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-x64.dmg"
    sha256 "4b7dad23ae00c47bebfe4e7236179924259dcee6dff6b0dabd01c86676fbac58"
  end

  name "OpenUI Desktop"
  desc "AI Agent Command Center — manage multiple coding agents on an infinite canvas"
  homepage "https://github.com/mahitoburrito/openui-desktop"

  app "OpenUI.app"

  zap trash: [
    "~/.openui-desktop",
  ]
end
