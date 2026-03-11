class Iaws < Formula
  desc "Interactive AWS CLI dashboard"
  homepage "https://github.com/shidaxi/iaws"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shidaxi/iaws/releases/download/v1.3.0/iaws_1.3.0_darwin_arm64"
      sha256 "a4f58893c8c6546fafb19fb8b30ea4293e12d0176322612ebb22fa1b001b0250"
    else
      url "https://github.com/shidaxi/iaws/releases/download/v1.3.0/iaws_1.3.0_darwin_amd64"
      sha256 "dd0995f63f012745570a57eefb20ea8c12e14361acc97495cb1c65e3020731cf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shidaxi/iaws/releases/download/v1.3.0/iaws_1.3.0_linux_arm64"
      sha256 "ea478c2a1cfa06681baf7d9a548b8049b399319249393c1508728eeb01309051"
    else
      url "https://github.com/shidaxi/iaws/releases/download/v1.3.0/iaws_1.3.0_linux_amd64"
      sha256 "297c2512b89ac0782d1341dd3b1654586449238a1dc9e5585a88a240638f77db"
    end
  end

  def install
    bin.install Dir["*"].first => "iaws"
  end
end
