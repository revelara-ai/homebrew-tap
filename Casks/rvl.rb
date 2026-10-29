# This file is generated on release by revelara-ai/rvl-cli
# (.github/workflows/publish-cask.yml -> ci/render-cask.sh). DO NOT EDIT.
#
# It is written from that release's cargo-dist dist-manifest.json. Editing it
# here is pointless: the next tag overwrites the file wholesale.
cask "rvl" do
  version "1.9.0"

  on_macos do
    depends_on arch: :arm64

    sha256 "5d391a4b5d24b99d3795b4f4c516a640d6f8000a47843254e25c20a14932331a"
    url "https://github.com/revelara-ai/rvl-cli/releases/download/v#{version}/rvl-aarch64-apple-darwin.tar.xz"
    binary "rvl-aarch64-apple-darwin/rvl"
    binary "rvl-aarch64-apple-darwin/cindex"
    binary "rvl-aarch64-apple-darwin/goindex"
    binary "rvl-aarch64-apple-darwin/rustindex"
  end

  on_linux do
    on_intel do
      sha256 "44a4d9150deb63ee171158792eda4f1603f76707c187642a4a4fb6bb7bcffc5f"
      url "https://github.com/revelara-ai/rvl-cli/releases/download/v#{version}/rvl-x86_64-unknown-linux-gnu.tar.xz"
      binary "rvl-x86_64-unknown-linux-gnu/rvl"
      binary "rvl-x86_64-unknown-linux-gnu/cindex"
      binary "rvl-x86_64-unknown-linux-gnu/goindex"
      binary "rvl-x86_64-unknown-linux-gnu/rustindex"
    end
    on_arm do
      sha256 "4631493766e1690c30404dc32209da845064cfa106f4b5f80a03d6cd12b1713c"
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
