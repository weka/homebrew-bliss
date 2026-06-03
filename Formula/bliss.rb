class Bliss < Formula
  desc "Command-line tool for managing K3s infrastructure"
  homepage "https://github.com/weka/bliss"
  version "2.39.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/bliss/releases/bliss_2.39.0_darwin_arm64.tar.gz"
      sha256 "20dd2a1c78908f08a3713bc605882833d9395dcb8fc0b4d46967c87a73ad4f22"
    end
    on_intel do
      url "https://weka.github.io/bliss/releases/bliss_2.39.0_darwin_amd64.tar.gz"
      sha256 "ee02d8f83712033ae7b84037a92b37da425a4aedb6728c31a6660859f5bc2158"
    end
  end

  def install
    bin.install "bliss"
  end

  test do
    system "#{bin}/bliss", "--version"
  end
end
