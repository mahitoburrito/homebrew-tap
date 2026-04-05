cask "openui-desktop" do
  arch arm: "arm64", intel: "x64"
  version "1.0.22"

  if Hardware::CPU.arm?
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-arm64.dmg"
    sha256 "a35dd76860d8632c5851a570e7268ebe06366b16bf0cad66862875b2fe8b939e"
  else
    url "https://github.com/mahitoburrito/openui-desktop/releases/download/v#{version}/OpenUI-#{version}-x64.dmg"
    sha256 "6d2b28a3dba9f490e6d6b5266c6b12d03ec410873643e0a76632be667daf6dc8"
  end

  name "OpenUI Desktop"
  desc "AI Agent Command Center — manage multiple coding agents on an infinite canvas"
  homepage "https://github.com/mahitoburrito/openui-desktop"

  app "OpenUI.app"

  zap trash: [
    "~/.openui-desktop",
  ]
end
