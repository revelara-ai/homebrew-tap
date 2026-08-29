# This file is generated on release by revelara-ai/rvl-cli
# (.github/workflows/publish-cask.yml -> ci/render-cask.sh). DO NOT EDIT.
#
# It is written from that release's cargo-dist dist-manifest.json. Editing it
# here is pointless: the next tag overwrites the file wholesale.
cask "rvl" do
  version "1.2.0"

  on_macos do
    on_intel do
      sha256 "0f8ffe89242b16fb66ca554e0c9cc3efb01240a65f904a2aa3529147d72236de"
      url "https://github.com/revelara-ai/rvl-cli/releases/download/v#{version}/rvl-x86_64-apple-darwin.tar.xz"
      binary "rvl-x86_64-apple-darwin/rvl"
      binary "rvl-x86_64-apple-darwin/cindex"
      binary "rvl-x86_64-apple-darwin/goindex"
      binary "rvl-x86_64-apple-darwin/rustindex"
    end
    on_arm do
      sha256 "4266a5d701c6f3c10321a40f951d95143fdfe2315ed82efc80396dba6c1f3292"
      url "https://github.com/revelara-ai/rvl-cli/releases/download/v#{version}/rvl-aarch64-apple-darwin.tar.xz"
      binary "rvl-aarch64-apple-darwin/rvl"
      binary "rvl-aarch64-apple-darwin/cindex"
      binary "rvl-aarch64-apple-darwin/goindex"
      binary "rvl-aarch64-apple-darwin/rustindex"
    end
  end

  on_linux do
    on_intel do
      sha256 "d93b47d44ea413eed66f8f1bfec0049e0a45475d1c9f9c57ff76141c83970cf1"
      url "https://github.com/revelara-ai/rvl-cli/releases/download/v#{version}/rvl-x86_64-unknown-linux-gnu.tar.xz"
      binary "rvl-x86_64-unknown-linux-gnu/rvl"
      binary "rvl-x86_64-unknown-linux-gnu/cindex"
      binary "rvl-x86_64-unknown-linux-gnu/goindex"
      binary "rvl-x86_64-unknown-linux-gnu/rustindex"
    end
    on_arm do
      sha256 "b8ca0d33b71c12585794af1ce8ee715e004dcaf4a0e1ca891a1cd7649e099e76"
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
