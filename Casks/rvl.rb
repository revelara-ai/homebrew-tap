# This file is generated on release by revelara-ai/rvl-cli
# (.github/workflows/publish-cask.yml -> ci/render-cask.sh). DO NOT EDIT.
#
# It is written from that release's cargo-dist dist-manifest.json. Editing it
# here is pointless: the next tag overwrites the file wholesale.
cask "rvl" do
  version "1.1.0"

  on_macos do
    on_intel do
      sha256 "3074c378797f916655ad1798533f84307d1adb532131d70f8a89de91c8307645"
      url "https://github.com/revelara-ai/rvl-cli/releases/download/v#{version}/rvl-x86_64-apple-darwin.tar.xz"
      binary "rvl-x86_64-apple-darwin/rvl"
      binary "rvl-x86_64-apple-darwin/cindex"
      binary "rvl-x86_64-apple-darwin/goindex"
      binary "rvl-x86_64-apple-darwin/rustindex"
    end
    on_arm do
      sha256 "ce3778bad1a82ddbb180f3b3b4e82f7507377434e7bf1164a7bdfcd80493a3c4"
      url "https://github.com/revelara-ai/rvl-cli/releases/download/v#{version}/rvl-aarch64-apple-darwin.tar.xz"
      binary "rvl-aarch64-apple-darwin/rvl"
      binary "rvl-aarch64-apple-darwin/cindex"
      binary "rvl-aarch64-apple-darwin/goindex"
      binary "rvl-aarch64-apple-darwin/rustindex"
    end
  end

  on_linux do
    on_intel do
      sha256 "e9ba2aee4d4e71800963da8bcd78fb83fe5f18fd5b97f5b5fbc025b9b0b2c108"
      url "https://github.com/revelara-ai/rvl-cli/releases/download/v#{version}/rvl-x86_64-unknown-linux-gnu.tar.xz"
      binary "rvl-x86_64-unknown-linux-gnu/rvl"
      binary "rvl-x86_64-unknown-linux-gnu/cindex"
      binary "rvl-x86_64-unknown-linux-gnu/goindex"
      binary "rvl-x86_64-unknown-linux-gnu/rustindex"
    end
    on_arm do
      sha256 "2f551feb98720c0de0cffca2d24aa21ffe0be0f8ecc73304b5970396d0805c3d"
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
