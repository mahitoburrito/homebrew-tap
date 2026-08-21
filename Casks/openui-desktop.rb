cask "openui-desktop" do
  arch arm: "arm64", intel: "x64"
  version "1.0.40"

  if Hardware::CPU.arm?
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-arm64.dmg"
    sha256 "ad267482db51623b8010e3150d9a1201ba85b627547dc9123fef92fa985aaa62"
  else
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-x64.dmg"
    sha256 "007c02a72bc08436800f9bb0bfd30bda7c5488edef33bac0a2c4a5fd8a44a888"
  end

  name "OpenUI Desktop"
  desc "AI Agent Command Center — manage multiple coding agents on an infinite canvas"
  homepage "https://github.com/mahitoburrito/openui-desktop"

  app "OpenUI.app"

  zap trash: [
    "~/.openui-desktop",
  ]
end
