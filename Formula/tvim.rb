class Tvim < Formula
  desc "Vim-like terminal text editor written in Rust"
  homepage "https://github.com/borhara/tvim"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/borhara/tvim/releases/download/v1.3.0/tvim-aarch64-apple-darwin.tar.gz"
      sha256 "4117bf834ae0cac82d947890eda1c4c0fff98480d9261884cf938ed3dc88e666"
    end
    on_intel do
      url "https://github.com/borhara/tvim/releases/download/v1.3.0/tvim-x86_64-apple-darwin.tar.gz"
      sha256 "688db2df7b480c98f8cab8ea76d9188fe74fdb3ed69419c1b3b44a59bdcb3b8b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/borhara/tvim/releases/download/v1.3.0/tvim-aarch64-unknown-linux-musl.tar.gz"
      sha256 "249ee6a54eb1ef31dd4b5b59c60ce031930237c4a719f92515dab587729926f4"
    end
    on_intel do
      url "https://github.com/borhara/tvim/releases/download/v1.3.0/tvim-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f34b3175f5b32f5d79d1da67e54a07671ecc1ae310e0f6b75a7b5b987e7289d1"
    end
  end

  def install
    bin.install "tvim"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tvim --version")
  end
end
