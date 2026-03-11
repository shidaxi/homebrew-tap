class EthWatch < Formula
  desc "Terminal dashboard for monitoring Ethereum RPC nodes"
  homepage "https://github.com/shidaxi/eth-watch"
  version "1.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shidaxi/eth-watch/releases/download/v1.3.1/eth-watch_1.3.1_darwin_arm64.tar.gz"
      sha256 "76dff67fdff068a85b97b8e416f33164e75b8fe37da9feb3b81e010d1cd20b77"
    else
      url "https://github.com/shidaxi/eth-watch/releases/download/v1.3.1/eth-watch_1.3.1_darwin_amd64.tar.gz"
      sha256 "fe44a450fa43ca427dc5302cbc2c040b6efaea8442bd93d8c83eb1b629cbfbed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shidaxi/eth-watch/releases/download/v1.3.1/eth-watch_1.3.1_linux_arm64.tar.gz"
      sha256 "2635d7515dfca01b2b6546097d951d67b1f633bfb3339d091ee8e973b39dd59a"
    else
      url "https://github.com/shidaxi/eth-watch/releases/download/v1.3.1/eth-watch_1.3.1_linux_amd64.tar.gz"
      sha256 "9b6d82eed70c29196e22b5feb3484a94eaf99e9c77efe7c30dfd70f929fc9638"
    end
  end

  def install
    bin.install "eth-watch"
  end
end
