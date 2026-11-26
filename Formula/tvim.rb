class Tvim < Formula
  desc "Vim-like terminal text editor written in Rust"
  homepage "https://github.com/borhara/tvim"
  version "1.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/borhara/tvim/releases/download/v1.5.0/tvim-aarch64-apple-darwin.tar.gz"
      sha256 "d816fe6953a680348ce95ab703e978b0454f82efd7cfdb55fbd34310ac92935a"
    end
    on_intel do
      url "https://github.com/borhara/tvim/releases/download/v1.5.0/tvim-x86_64-apple-darwin.tar.gz"
      sha256 "575c86224e70d2db9a4bc477a681a460a787b55a1a1e7da0519bd823de5ee63b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/borhara/tvim/releases/download/v1.5.0/tvim-aarch64-unknown-linux-musl.tar.gz"
      sha256 "eb85c18718036f0c8144dc5fca352718c163cbe25d553dd42a4b8cf8aa52157c"
    end
    on_intel do
      url "https://github.com/borhara/tvim/releases/download/v1.5.0/tvim-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ccd1c31c8e44ca213b69665f4b4e5ffee7e73cc7b5648824d1ca063ae053866a"
    end
  end

  def install
    bin.install "tvim"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tvim --version")
  end
end
