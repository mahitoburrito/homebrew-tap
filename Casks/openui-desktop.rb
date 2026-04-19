cask "openui-desktop" do
  arch arm: "arm64", intel: "x64"
  version "1.0.31"

  if Hardware::CPU.arm?
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-arm64.dmg"
    sha256 "8fa869715b7068b2e574441f7df2a7203fd7d0d4ac334936764f250c12b6a4e3"
  else
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-x64.dmg"
    sha256 "cb5721b3f58e74e24fb9886008486a0b0630fdf2612bfbbb3c71ffd56e835a0b"
  end

  name "OpenUI Desktop"
  desc "AI Agent Command Center — manage multiple coding agents on an infinite canvas"
  homepage "https://github.com/mahitoburrito/openui-desktop"

  app "OpenUI.app"

  zap trash: [
    "~/.openui-desktop",
  ]
end
