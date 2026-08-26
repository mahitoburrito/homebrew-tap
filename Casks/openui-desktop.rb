cask "openui-desktop" do
  arch arm: "arm64", intel: "x64"
  version "1.0.44"

  if Hardware::CPU.arm?
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-arm64.dmg"
    sha256 "5a6192c8ee9c9d9d25b3ee56374ee06e49cdd311fb44d8a699855daaef9de7fd"
  else
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-x64.dmg"
    sha256 "db371c5973749edfbef1dd3ff4f93a8b9f570e9bc17ee5d725a9e21233c7ad8a"
  end

  name "OpenUI Desktop"
  desc "AI Agent Command Center — manage multiple coding agents on an infinite canvas"
  homepage "https://github.com/mahitoburrito/openui-desktop"

  app "OpenUI.app"

  zap trash: [
    "~/.openui-desktop",
  ]
end
