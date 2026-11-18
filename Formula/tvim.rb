class Tvim < Formula
  desc "Vim-like terminal text editor written in Rust"
  homepage "https://github.com/borhara/tvim"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/borhara/tvim/releases/download/v1.0.0/tvim-aarch64-apple-darwin.tar.gz"
      sha256 "5f18ae865ed9981896e754d33e3effd126b37af8bdada1e2942c6bd081f67dc3"
    end
    on_intel do
      url "https://github.com/borhara/tvim/releases/download/v1.0.0/tvim-x86_64-apple-darwin.tar.gz"
      sha256 "348f37a9394e3ebed9fdbde589db6a5c80921044aaca1ed1b484f52d7e79a539"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/borhara/tvim/releases/download/v1.0.0/tvim-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0e6127d7dfea63529dec8cd5e19de3abf92f47b7ca2256fe563f5992d72bdae1"
    end
    on_intel do
      url "https://github.com/borhara/tvim/releases/download/v1.0.0/tvim-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b55e53c40535bbc6859a89f361c8f00518659ec65339278bfe3742871330c9df"
    end
  end

  def install
    bin.install "tvim"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tvim --version")
  end
end
