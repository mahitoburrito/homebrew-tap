cask "openui-desktop" do
  arch arm: "arm64", intel: "x64"
  version "1.0.30"

  if Hardware::CPU.arm?
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-arm64.dmg"
    sha256 "f9bd7ce8016bbee144bb903bdac8c8d3de0190ed5da03fddd3d02b8515686f5b"
  else
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-x64.dmg"
    sha256 "c4f386733b7eb206fa1cef1bad41db67b678ade288a2bff1e14a7d9b9b20d944"
  end

  name "OpenUI Desktop"
  desc "AI Agent Command Center — manage multiple coding agents on an infinite canvas"
  homepage "https://github.com/mahitoburrito/openui-desktop"

  app "OpenUI.app"

  zap trash: [
    "~/.openui-desktop",
  ]
end
