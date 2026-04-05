cask "openui-desktop" do
  arch arm: "arm64", intel: "x64"
  version "1.0.7"

  if Hardware::CPU.arm?
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-arm64.dmg"
    sha256 "e4c269897ed8eff3a4abae52c21a289fc833de4837dc3a820b648387678653e4"
  else
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}.dmg"
    sha256 "1dae19104909609fd1710bc43619cd7928db2a039b43a17898169d95815a10f1"
  end

  name "OpenUI Desktop"
  desc "AI Agent Command Center — manage multiple coding agents on an infinite canvas"
  homepage "https://github.com/mahitoburrito/openui-desktop"

  app "OpenUI.app"

  zap trash: [
    "~/.openui-desktop",
  ]
end
