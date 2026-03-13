class EthWatch < Formula
  desc "Terminal dashboard for monitoring Ethereum RPC nodes"
  homepage "https://github.com/shidaxi/eth-watch"
  version "1.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shidaxi/eth-watch/releases/download/v1.5.0/eth-watch_1.5.0_darwin_arm64.tar.gz"
      sha256 "78c4b4e1668177d32877b395f411ca8bddf186898cf99a6f13402427d8893c39"
    else
      url "https://github.com/shidaxi/eth-watch/releases/download/v1.5.0/eth-watch_1.5.0_darwin_amd64.tar.gz"
      sha256 "5ea834f079dc3e29c68ce2391c2af53b437ec400d317ef485e3f25238fd2d629"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shidaxi/eth-watch/releases/download/v1.5.0/eth-watch_1.5.0_linux_arm64.tar.gz"
      sha256 "839affd7580ff12d79cf2d436cce1948cf6f2014e2c971b798b2737534e697a6"
    else
      url "https://github.com/shidaxi/eth-watch/releases/download/v1.5.0/eth-watch_1.5.0_linux_amd64.tar.gz"
      sha256 "3d1f6834110e312a17345d3929d6fda23f06ad5245916310041198529579fd00"
    end
  end

  def install
    bin.install "eth-watch"
  end
end
