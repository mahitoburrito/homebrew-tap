cask "openui-desktop" do
  arch arm: "arm64", intel: "x64"
  version "1.0.41"

  if Hardware::CPU.arm?
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-arm64.dmg"
    sha256 "60475b1996d29e441327829d271001d0227e771f5480caabfc3855ee1eb56da8"
  else
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-x64.dmg"
    sha256 "6f9dea9f0b14c566d69a227f4d2368091220586c95be63b026e7c14d2f17492f"
  end

  name "OpenUI Desktop"
  desc "AI Agent Command Center — manage multiple coding agents on an infinite canvas"
  homepage "https://github.com/mahitoburrito/openui-desktop"

  app "OpenUI.app"

  zap trash: [
    "~/.openui-desktop",
  ]
end
