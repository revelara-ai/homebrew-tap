# This file is generated on release by revelara-ai/rvl-cli
# (.github/workflows/publish-cask.yml -> ci/render-cask.sh). DO NOT EDIT.
#
# It is written from that release's cargo-dist dist-manifest.json. Editing it
# here is pointless: the next tag overwrites the file wholesale.
cask "rvl" do
  version "1.0.1"

  on_macos do
    on_intel do
      sha256 "c92c68a1477261dc0b439e9e8c57bd7ed4b22c347f373df580e2c534c6423724"
      url "https://github.com/revelara-ai/rvl-cli/releases/download/v#{version}/rvl-x86_64-apple-darwin.tar.xz"
      binary "rvl-x86_64-apple-darwin/rvl"
      binary "rvl-x86_64-apple-darwin/cindex"
      binary "rvl-x86_64-apple-darwin/goindex"
      binary "rvl-x86_64-apple-darwin/rustindex"
    end
    on_arm do
      sha256 "1982436ea2f56c2b18a46eea3bd1853c11f3e26a50479bee7e3468319b418293"
      url "https://github.com/revelara-ai/rvl-cli/releases/download/v#{version}/rvl-aarch64-apple-darwin.tar.xz"
      binary "rvl-aarch64-apple-darwin/rvl"
      binary "rvl-aarch64-apple-darwin/cindex"
      binary "rvl-aarch64-apple-darwin/goindex"
      binary "rvl-aarch64-apple-darwin/rustindex"
    end
  end

  on_linux do
    on_intel do
      sha256 "f4b5f320c89f69d31dbe05f00c05192abfef392603d95d2558734cc7360a208a"
      url "https://github.com/revelara-ai/rvl-cli/releases/download/v#{version}/rvl-x86_64-unknown-linux-gnu.tar.xz"
      binary "rvl-x86_64-unknown-linux-gnu/rvl"
      binary "rvl-x86_64-unknown-linux-gnu/cindex"
      binary "rvl-x86_64-unknown-linux-gnu/goindex"
      binary "rvl-x86_64-unknown-linux-gnu/rustindex"
    end
    on_arm do
      sha256 "939821abdd8e0dafcd4617b4131c224f00a6929f0dc8932653e8beed41d8f1c1"
      url "https://github.com/revelara-ai/rvl-cli/releases/download/v#{version}/rvl-aarch64-unknown-linux-gnu.tar.xz"
      binary "rvl-aarch64-unknown-linux-gnu/rvl"
      binary "rvl-aarch64-unknown-linux-gnu/cindex"
      binary "rvl-aarch64-unknown-linux-gnu/goindex"
      binary "rvl-aarch64-unknown-linux-gnu/rustindex"
    end
  end

  name "rvl"
  desc "Revelara CLI — scan your codebase for reliability risks"
  homepage "https://revelara.ai"

  livecheck do
    skip "Auto-generated on release."
  end

  postflight do
    if OS.mac?
      system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}"]
    end
  end

  # No zap stanza required

end
