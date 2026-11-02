# This file is generated on release by revelara-ai/rvl-cli
# (.github/workflows/publish-cask.yml -> ci/render-cask.sh). DO NOT EDIT.
#
# It is written from that release's cargo-dist dist-manifest.json. Editing it
# here is pointless: the next tag overwrites the file wholesale.
cask "rvl" do
  version "1.10.1"

  on_macos do
    depends_on arch: :arm64

    sha256 "1b8096451ca3532835d5ce700fe6765f6c097cfd58843fb4d60e9afabbd084f3"
    url "https://github.com/revelara-ai/rvl-cli/releases/download/v#{version}/rvl-aarch64-apple-darwin.tar.xz"
    binary "rvl-aarch64-apple-darwin/rvl"
    binary "rvl-aarch64-apple-darwin/cindex"
    binary "rvl-aarch64-apple-darwin/goindex"
    binary "rvl-aarch64-apple-darwin/rustindex"
  end

  on_linux do
    on_intel do
      sha256 "0c014f4a2f916bd03a83fb8954656e69ee247a58f8723fa968d60948372d0a08"
      url "https://github.com/revelara-ai/rvl-cli/releases/download/v#{version}/rvl-x86_64-unknown-linux-gnu.tar.xz"
      binary "rvl-x86_64-unknown-linux-gnu/rvl"
      binary "rvl-x86_64-unknown-linux-gnu/cindex"
      binary "rvl-x86_64-unknown-linux-gnu/goindex"
      binary "rvl-x86_64-unknown-linux-gnu/rustindex"
    end
    on_arm do
      sha256 "c5f831619eae1a3c621eba9004e77cf93c2f91c8c4691b4f5d911d9794e8b358"
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
