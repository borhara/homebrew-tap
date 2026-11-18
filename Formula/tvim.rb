class Tvim < Formula
  desc "Vim-like terminal text editor written in Rust"
  homepage "https://github.com/borhara/tvim"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/borhara/tvim/releases/download/v1.0.0/tvim-aarch64-apple-darwin.tar.gz"
      sha256 "923db00fefe1e476a2902c4705e654e378d1c4adc6b09bdafcd5bdf6b4cdd8e8"
    end
    on_intel do
      url "https://github.com/borhara/tvim/releases/download/v1.0.0/tvim-x86_64-apple-darwin.tar.gz"
      sha256 "9adf22268efc2d43d202e0e6cada99572960329352f8d23d0483af916338b9ba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/borhara/tvim/releases/download/v1.0.0/tvim-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0a5f1a776be48caf6f0a91782e5e45baac85eaa8c4f146519f66685dcc9b50d0"
    end
    on_intel do
      url "https://github.com/borhara/tvim/releases/download/v1.0.0/tvim-x86_64-unknown-linux-musl.tar.gz"
      sha256 "799d6d5c5dfc7df972155917d0ca8e7456887640bc184a6f4c9f65c33ce5b0ae"
    end
  end

  def install
    bin.install "tvim"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tvim --version")
  end
end
