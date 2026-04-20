class Iaws < Formula
  desc "Interactive AWS CLI dashboard"
  homepage "https://github.com/shidaxi/iaws"
  version "1.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shidaxi/iaws/releases/download/v1.4.0/iaws_1.4.0_darwin_arm64"
      sha256 "f7086956d09022ad5beddd4f63ca872ad8cf975e9a3791b2bb8f406f6c770c52"
    else
      url "https://github.com/shidaxi/iaws/releases/download/v1.4.0/iaws_1.4.0_darwin_amd64"
      sha256 "fb43b0805d7580ff1e96c0473c51ff381bde1d77bb122222eb688b6902e4ccce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shidaxi/iaws/releases/download/v1.4.0/iaws_1.4.0_linux_arm64"
      sha256 "01558b22b86fee31a95c83e3f0606790d15ac8f251b375741e0eff2ee3c3f795"
    else
      url "https://github.com/shidaxi/iaws/releases/download/v1.4.0/iaws_1.4.0_linux_amd64"
      sha256 "7f5dfce5bd3d7c4d1d2a8eb6b113b757ce2f00feff22d1b4091fd2d9ba45fd95"
    end
  end

  def install
    bin.install Dir["*"].first => "iaws"
  end
end
