# This file is generated on release by revelara-ai/rvl-cli
# (.github/workflows/publish-cask.yml -> ci/render-cask.sh). DO NOT EDIT.
#
# It is written from that release's cargo-dist dist-manifest.json. Editing it
# here is pointless: the next tag overwrites the file wholesale.
cask "rvl" do
  version "1.5.0"

  on_macos do
    on_intel do
      sha256 "5c88b3676448e0b95303f27a3a1a8a45f5e1d6831c9c1aea16c869866d778c93"
      url "https://github.com/revelara-ai/rvl-cli/releases/download/v#{version}/rvl-x86_64-apple-darwin.tar.xz"
      binary "rvl-x86_64-apple-darwin/rvl"
      binary "rvl-x86_64-apple-darwin/cindex"
      binary "rvl-x86_64-apple-darwin/goindex"
      binary "rvl-x86_64-apple-darwin/rustindex"
    end
    on_arm do
      sha256 "fa36a1ecb2eb1fb99a90058d8ed7ee2aa73fe7e2f422370a5df620d9f9438fac"
      url "https://github.com/revelara-ai/rvl-cli/releases/download/v#{version}/rvl-aarch64-apple-darwin.tar.xz"
      binary "rvl-aarch64-apple-darwin/rvl"
      binary "rvl-aarch64-apple-darwin/cindex"
      binary "rvl-aarch64-apple-darwin/goindex"
      binary "rvl-aarch64-apple-darwin/rustindex"
    end
  end

  on_linux do
    on_intel do
      sha256 "b8ed57717128b7a4eee08f5a4725fc02bf0cb3c02ac5a6d59eea2a6d20a149e3"
      url "https://github.com/revelara-ai/rvl-cli/releases/download/v#{version}/rvl-x86_64-unknown-linux-gnu.tar.xz"
      binary "rvl-x86_64-unknown-linux-gnu/rvl"
      binary "rvl-x86_64-unknown-linux-gnu/cindex"
      binary "rvl-x86_64-unknown-linux-gnu/goindex"
      binary "rvl-x86_64-unknown-linux-gnu/rustindex"
    end
    on_arm do
      sha256 "bd1732e2640d04b84289d187cbd6065cb366f6cbe832b86a8b60fd4d1716d255"
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

  postflight_steps do
    on_macos do
      run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{staged_path}}"]
    end
  end

  # No zap stanza required

end
