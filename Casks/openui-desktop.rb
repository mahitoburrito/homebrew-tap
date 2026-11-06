cask "openui-desktop" do
  arch arm: "arm64", intel: "x64"
  version "1.0.50"

  if Hardware::CPU.arm?
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-arm64.dmg"
    sha256 "6d7b08192d16cbe86258e01d93c9414af7869637da575ab595b4028b832bbdad"
  else
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-x64.dmg"
    sha256 "873dc182f9ed3287f2e862575e42823bf07715ade9dd8eef12fcaac4fdeda175"
  end

  name "OpenUI Desktop"
  desc "AI Agent Command Center — manage multiple coding agents on an infinite canvas"
  homepage "https://github.com/mahitoburrito/openui-desktop"

  app "OpenUI.app"

  zap trash: [
    "~/.openui-desktop",
  ]
end
