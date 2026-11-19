class Tvim < Formula
  desc "Vim-like terminal text editor written in Rust"
  homepage "https://github.com/borhara/tvim"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/borhara/tvim/releases/download/v1.2.0/tvim-aarch64-apple-darwin.tar.gz"
      sha256 "37148c93515031f688682a74a1ca0372a656efab81676e0681e097414ca5a7e4"
    end
    on_intel do
      url "https://github.com/borhara/tvim/releases/download/v1.2.0/tvim-x86_64-apple-darwin.tar.gz"
      sha256 "ac113ecc64fe3ea40b2af70d98086b01d43f8122c0fca9ddee48da9551fc771b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/borhara/tvim/releases/download/v1.2.0/tvim-aarch64-unknown-linux-musl.tar.gz"
      sha256 "25c99790f2702445655099d53dc5f38ebee6e84e00ffca4ed7313ed69ce2f6a7"
    end
    on_intel do
      url "https://github.com/borhara/tvim/releases/download/v1.2.0/tvim-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ba95f6a9b9b074f13c0c4b18cb6b073bcb484ab2782e43d9fc2f6bb748afe201"
    end
  end

  def install
    bin.install "tvim"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tvim --version")
  end
end
