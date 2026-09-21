cask "openui-desktop" do
  arch arm: "arm64", intel: "x64"
  version "1.0.45"

  if Hardware::CPU.arm?
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-arm64.dmg"
    sha256 "e12c17da710dd3ffc6f646a22d73a3216ec55b30be9d1cd679ab2b764d677dec"
  else
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-x64.dmg"
    sha256 "c839af83c755f313618d133680a99325360ba137967b1b106b21bff7a7368751"
  end

  name "OpenUI Desktop"
  desc "AI Agent Command Center — manage multiple coding agents on an infinite canvas"
  homepage "https://github.com/mahitoburrito/openui-desktop"

  app "OpenUI.app"

  zap trash: [
    "~/.openui-desktop",
  ]
end
