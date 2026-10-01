# This file is generated on release by revelara-ai/rvl-cli
# (.github/workflows/publish-cask.yml -> ci/render-cask.sh). DO NOT EDIT.
#
# It is written from that release's cargo-dist dist-manifest.json. Editing it
# here is pointless: the next tag overwrites the file wholesale.
cask "rvl" do
  version "1.2.2"

  on_macos do
    on_intel do
      sha256 "fd819a25f25519cf66aecd2437e5229a9026ab16f365c0b5acf0453095412a52"
      url "https://github.com/revelara-ai/rvl-cli/releases/download/v#{version}/rvl-x86_64-apple-darwin.tar.xz"
      binary "rvl-x86_64-apple-darwin/rvl"
      binary "rvl-x86_64-apple-darwin/cindex"
      binary "rvl-x86_64-apple-darwin/goindex"
      binary "rvl-x86_64-apple-darwin/rustindex"
    end
    on_arm do
      sha256 "0b7362f1b10e4d7ae1408c18c98de5fc74d976915709e9ed90861cbff958a13e"
      url "https://github.com/revelara-ai/rvl-cli/releases/download/v#{version}/rvl-aarch64-apple-darwin.tar.xz"
      binary "rvl-aarch64-apple-darwin/rvl"
      binary "rvl-aarch64-apple-darwin/cindex"
      binary "rvl-aarch64-apple-darwin/goindex"
      binary "rvl-aarch64-apple-darwin/rustindex"
    end
  end

  on_linux do
    on_intel do
      sha256 "f2c182f710214229359c6d2b390c9edae1c6a011c1313aa67f2750398e9b84d9"
      url "https://github.com/revelara-ai/rvl-cli/releases/download/v#{version}/rvl-x86_64-unknown-linux-gnu.tar.xz"
      binary "rvl-x86_64-unknown-linux-gnu/rvl"
      binary "rvl-x86_64-unknown-linux-gnu/cindex"
      binary "rvl-x86_64-unknown-linux-gnu/goindex"
      binary "rvl-x86_64-unknown-linux-gnu/rustindex"
    end
    on_arm do
      sha256 "6632c548d3b4bd53e19497951e786fc0a546dddc0270e29d737a870f265d04e2"
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
