cask "procwatch" do
  version "0.2.0"
  sha256 "d8162348f47d8bda1f873560ecd535624251e5b1d713ff39db90749a7ffd6f55"

  url "https://github.com/Nharu/procwatch/releases/download/v#{version}/procwatch-#{version}.zip"
  name "procwatch"
  desc "Menu bar monitor that flags runaway processes spawned by Claude Code"
  homepage "https://github.com/Nharu/procwatch"

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "procwatch.app"

  uninstall signal: [["TERM", "io.github.nharu.procwatch"]]

  zap trash: "~/Library/Preferences/io.github.nharu.procwatch.plist"
end
