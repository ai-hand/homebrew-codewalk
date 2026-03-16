cask "codewalk" do
  version "0.1.0"
  sha256 :no_check

  url "https://github.com/ai-hand/codewalk-dist/releases/download/v#{version}/CodeWalk-#{version}-macos.tar.gz"
  name "CodeWalk"
  desc "Native code walkthrough app with CLI control"
  homepage "https://github.com/ai-hand/codewalk-dist"

  app "CodeWalk.app"
  binary "CodeWalk.app/Contents/MacOS/codewalk", target: "codewalk"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/CodeWalk.app"]
  end

  zap trash: [
    "~/.codewalk"
  ]
end
