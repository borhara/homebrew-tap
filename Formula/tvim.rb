class Tvim < Formula
  desc "Vim-like terminal text editor written in Rust"
  homepage "https://github.com/borhara/tvim"
  version "1.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/borhara/tvim/releases/download/v1.4.0/tvim-aarch64-apple-darwin.tar.gz"
      sha256 "1c6a580a5cb16e0facfa07a7d64927da404109114e5d22efb9b14b247aaaf84a"
    end
    on_intel do
      url "https://github.com/borhara/tvim/releases/download/v1.4.0/tvim-x86_64-apple-darwin.tar.gz"
      sha256 "a4be089d171de4bb828b5632459a525db8f935f60e55fff5bef43e79f2690125"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/borhara/tvim/releases/download/v1.4.0/tvim-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6dee584f8d2cb4cc50cdeeb6760a500b50403531ba2bacf619fa9233ebcf2ee4"
    end
    on_intel do
      url "https://github.com/borhara/tvim/releases/download/v1.4.0/tvim-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cae9be70831fd6df9f908b00ebe23ee8c15fa56f56459a04eb7f9b74cea27387"
    end
  end

  def install
    bin.install "tvim"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tvim --version")
  end
end
