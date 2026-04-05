cask "openui-desktop" do
  arch arm: "arm64", intel: "x64"
  version "1.0.18"

  if Hardware::CPU.arm?
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-arm64.dmg"
    sha256 "8c2ec1217fe1dd410c5dc5b0573457b5537e4c8b599303f2da35c42e67b4b283"
  else
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-x64.dmg"
    sha256 "f49259995dfbe0193e89fdfc52c9ab17d756cce634659658d3336510599913e5"
  end

  name "OpenUI Desktop"
  desc "AI Agent Command Center — manage multiple coding agents on an infinite canvas"
  homepage "https://github.com/mahitoburrito/openui-desktop"

  app "OpenUI.app"

  zap trash: [
    "~/.openui-desktop",
  ]
end
