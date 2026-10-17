cask "openui-desktop" do
  arch arm: "arm64", intel: "x64"
  version "1.0.49"

  if Hardware::CPU.arm?
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-arm64.dmg"
    sha256 "fc9ca3cfca4b141f95b054b6113bba527c8dac4ae909da5fd02ebde9f06bfd69"
  else
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-x64.dmg"
    sha256 "61a6163ef278c469572de3a90bb3cb59a2ddc63f3d6ed1497dff8cce29deba64"
  end

  name "OpenUI Desktop"
  desc "AI Agent Command Center — manage multiple coding agents on an infinite canvas"
  homepage "https://github.com/mahitoburrito/openui-desktop"

  app "OpenUI.app"

  zap trash: [
    "~/.openui-desktop",
  ]
end
