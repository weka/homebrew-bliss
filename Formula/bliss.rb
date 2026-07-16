class Bliss < Formula
  desc "Command-line tool for managing K3s infrastructure"
  homepage "https://github.com/weka/bliss"
  version "2.42.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/bliss/releases/bliss_2.42.1_darwin_arm64.tar.gz"
      sha256 "c6ad9df55b91da5d7d22efc283bffb5611c99fca3762f5090706672a26569214"
    end
    on_intel do
      url "https://weka.github.io/bliss/releases/bliss_2.42.1_darwin_amd64.tar.gz"
      sha256 "0756adac3a8cfac7b43967c67a168ee194f69f07c571444f354835feb2668345"
    end
  end

  def install
    bin.install "bliss"
  end

  test do
    system "#{bin}/bliss", "--version"
  end
end
