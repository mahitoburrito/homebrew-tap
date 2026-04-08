cask "openui-desktop" do
  arch arm: "arm64", intel: "x64"
  version "1.0.28"

  if Hardware::CPU.arm?
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-arm64.dmg"
    sha256 "6f9e19cb75e29f4634a8af8cd43054cc3dbab18ff4437063c1807583976a039a"
  else
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-x64.dmg"
    sha256 "4f8c0cc660d315c110f3adc1fe16c0777c1b54db55de00d5b88c76f92986f97c"
  end

  name "OpenUI Desktop"
  desc "AI Agent Command Center — manage multiple coding agents on an infinite canvas"
  homepage "https://github.com/mahitoburrito/openui-desktop"

  app "OpenUI.app"

  zap trash: [
    "~/.openui-desktop",
  ]
end
