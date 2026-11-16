# This file is generated on release by revelara-ai/rvl-cli
# (.github/workflows/publish-cask.yml -> ci/render-cask.sh). DO NOT EDIT.
#
# It is written from that release's cargo-dist dist-manifest.json. Editing it
# here is pointless: the next tag overwrites the file wholesale.
cask "rvl" do
  version "1.12.0"

  on_macos do
    depends_on arch: :arm64

    sha256 "7adfcae7536da5bfe39590fa4f387046dd2690134782d235cb88adcef4857d74"
    url "https://github.com/revelara-ai/rvl-cli/releases/download/v#{version}/rvl-aarch64-apple-darwin.tar.xz"
    binary "rvl-aarch64-apple-darwin/rvl"
    binary "rvl-aarch64-apple-darwin/cindex"
    binary "rvl-aarch64-apple-darwin/goindex"
    binary "rvl-aarch64-apple-darwin/rustindex"
  end

  on_linux do
    on_intel do
      sha256 "51b28ef7cce157c846feece99f361212022139df9b96795a9052e711a7eaf1fd"
      url "https://github.com/revelara-ai/rvl-cli/releases/download/v#{version}/rvl-x86_64-unknown-linux-gnu.tar.xz"
      binary "rvl-x86_64-unknown-linux-gnu/rvl"
      binary "rvl-x86_64-unknown-linux-gnu/cindex"
      binary "rvl-x86_64-unknown-linux-gnu/goindex"
      binary "rvl-x86_64-unknown-linux-gnu/rustindex"
    end
    on_arm do
      sha256 "944c6d0161cbe7ab5699d31211df67b185129a162d4a20afd1026be8a9f936c6"
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
