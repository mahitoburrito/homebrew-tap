cask "openui-desktop" do
  arch arm: "arm64", intel: "x64"
  version "1.0.38"

  if Hardware::CPU.arm?
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-arm64.dmg"
    sha256 "515907252d9cca1cc4d3001fee277ea51ecfdb34269995da01051c1324252166"
  else
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-x64.dmg"
    sha256 "f8bd280e7e270db02a8da6989f95e7186ede7b0779336ff47702656008d2839f"
  end

  name "OpenUI Desktop"
  desc "AI Agent Command Center — manage multiple coding agents on an infinite canvas"
  homepage "https://github.com/mahitoburrito/openui-desktop"

  app "OpenUI.app"

  zap trash: [
    "~/.openui-desktop",
  ]
end
