cask "procwatch" do
  version "0.1.0"
  sha256 "6fd695d3dd0be8752d58fc8760d23516ab38dd07c4677fb29a1909463a37af2b"

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
