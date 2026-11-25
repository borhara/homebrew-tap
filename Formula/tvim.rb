class Tvim < Formula
  desc "Vim-like terminal text editor written in Rust"
  homepage "https://github.com/borhara/tvim"
  version "1.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/borhara/tvim/releases/download/v1.4.1/tvim-aarch64-apple-darwin.tar.gz"
      sha256 "3089e0aea26a6ab3e7d0b3d2ac382e413aa9fc4426c17f917d86d666f1c18e7c"
    end
    on_intel do
      url "https://github.com/borhara/tvim/releases/download/v1.4.1/tvim-x86_64-apple-darwin.tar.gz"
      sha256 "5b4baf6c9a38a428f7e4adec57423a74e4ae63733f468504f76cd5bddccf4a82"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/borhara/tvim/releases/download/v1.4.1/tvim-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d949d6faa74c2cc0dfba584217ab60584e5e615daab87f1570a3865ad6bab0ed"
    end
    on_intel do
      url "https://github.com/borhara/tvim/releases/download/v1.4.1/tvim-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9fc1c57ceaef50909380555c8c44afe1602ce3125f0a6a64dbd7c2dc0423d320"
    end
  end

  def install
    bin.install "tvim"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tvim --version")
  end
end
