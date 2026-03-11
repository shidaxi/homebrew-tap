class EthWatch < Formula
  desc "Terminal dashboard for monitoring Ethereum RPC nodes"
  homepage "https://github.com/shidaxi/eth-watch"
  version "1.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shidaxi/eth-watch/releases/download/v1.4.0/eth-watch_1.4.0_darwin_arm64.tar.gz"
      sha256 "27966ed311e50679ae1858de425850e4ed9e4511f4230fc5b5cd047f826227d2"
    else
      url "https://github.com/shidaxi/eth-watch/releases/download/v1.4.0/eth-watch_1.4.0_darwin_amd64.tar.gz"
      sha256 "87d02318cda9b08d10cfb752562dde5ccf93a49f09a298e2d2d4fc7e3e11f705"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shidaxi/eth-watch/releases/download/v1.4.0/eth-watch_1.4.0_linux_arm64.tar.gz"
      sha256 "af9bd64020c5f421fb5d44ffd29cbdae91365031534996ec83eb47a7e74b51c7"
    else
      url "https://github.com/shidaxi/eth-watch/releases/download/v1.4.0/eth-watch_1.4.0_linux_amd64.tar.gz"
      sha256 "17d767834d4e82a6da43285290c2010c8503288cbf3a5b1a6a8a9e42af7e082b"
    end
  end

  def install
    bin.install "eth-watch"
  end
end
