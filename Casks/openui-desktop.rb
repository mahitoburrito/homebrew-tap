cask "openui-desktop" do
  arch arm: "arm64", intel: "x64"
  version "1.0.26"

  if Hardware::CPU.arm?
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-arm64.dmg"
    sha256 "95acd02ec90b74c1634f0759565e4353bd56fa0e63214904c4c2b9b5c1a0be81"
  else
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-x64.dmg"
    sha256 "5780e51a6420c53c7f7d23b541a944fd95d4e87a0e94462b3def914faf30646c"
  end

  name "OpenUI Desktop"
  desc "AI Agent Command Center — manage multiple coding agents on an infinite canvas"
  homepage "https://github.com/mahitoburrito/openui-desktop"

  app "OpenUI.app"

  zap trash: [
    "~/.openui-desktop",
  ]
end
