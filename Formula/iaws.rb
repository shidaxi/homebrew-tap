class Iaws < Formula
  desc "Interactive AWS CLI dashboard"
  homepage "https://github.com/shidaxi/iaws"
  version "1.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shidaxi/iaws/releases/download/v1.4.1/iaws_1.4.1_darwin_arm64"
      sha256 "4100707d55835f455bb274b7778a8628c44fd4a4b0c90098036a6bcbd15fb94f"
    else
      url "https://github.com/shidaxi/iaws/releases/download/v1.4.1/iaws_1.4.1_darwin_amd64"
      sha256 "d5b86d6e876f311565ab14b7f8e32506f5a9c7a4fd4a73c0b043b933c54851fd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shidaxi/iaws/releases/download/v1.4.1/iaws_1.4.1_linux_arm64"
      sha256 "76fa4ec1d2a0f39803f9bdd020a0bf390863481b632d51b3ee2a9cd5d958b5d1"
    else
      url "https://github.com/shidaxi/iaws/releases/download/v1.4.1/iaws_1.4.1_linux_amd64"
      sha256 "cf481c0576ebff15714dc64623b62f97cee1a7f8f56e6e76701a7c2fae2ba865"
    end
  end

  def install
    bin.install Dir["*"].first => "iaws"
  end
end
