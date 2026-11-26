class Tvim < Formula
  desc "Vim-like terminal text editor written in Rust"
  homepage "https://github.com/borhara/tvim"
  version "1.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/borhara/tvim/releases/download/v1.5.1/tvim-aarch64-apple-darwin.tar.gz"
      sha256 "caae3e6836072dc298a85d07a2c8f921a396ce53155b47c13eecdbe9c04fba67"
    end
    on_intel do
      url "https://github.com/borhara/tvim/releases/download/v1.5.1/tvim-x86_64-apple-darwin.tar.gz"
      sha256 "40b429db52eb0365203864f16344940e0972bd4fc0411fb5c050754a392a09d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/borhara/tvim/releases/download/v1.5.1/tvim-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dda262f47bc41f9734bd2678a43f9bffd363e88e82e8592c27bcdb18661324df"
    end
    on_intel do
      url "https://github.com/borhara/tvim/releases/download/v1.5.1/tvim-x86_64-unknown-linux-musl.tar.gz"
      sha256 "db3e661b71408b05dd3519ed100a76e302af026db2baa65890cc91d39653d1c3"
    end
  end

  def install
    bin.install "tvim"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tvim --version")
  end
end
