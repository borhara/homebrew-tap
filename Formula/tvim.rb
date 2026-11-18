class Tvim < Formula
  desc "Vim-like terminal text editor written in Rust"
  homepage "https://github.com/borhara/tvim"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/borhara/tvim/releases/download/v1.1.0/tvim-aarch64-apple-darwin.tar.gz"
      sha256 "91f6074c00cc3052c1e391c95159126dc296d6d1ac2acb42048b7887ae2e539d"
    end
    on_intel do
      url "https://github.com/borhara/tvim/releases/download/v1.1.0/tvim-x86_64-apple-darwin.tar.gz"
      sha256 "71551ed0c618c90dfcd7aa849340042bd601904476fe03104e60aaa163db9c55"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/borhara/tvim/releases/download/v1.1.0/tvim-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cd75659b3bdd7d13fea8d5821c4d314e5660cc33be0edb8f9ccbb926b3dc2d7c"
    end
    on_intel do
      url "https://github.com/borhara/tvim/releases/download/v1.1.0/tvim-x86_64-unknown-linux-musl.tar.gz"
      sha256 "af478b441eae73c82fb8da04631c106b4c259396b4fb9a520e8b59da226c0d34"
    end
  end

  def install
    bin.install "tvim"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tvim --version")
  end
end
