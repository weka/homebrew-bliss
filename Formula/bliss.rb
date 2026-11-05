class Bliss < Formula
  desc "Command-line tool for managing K3s infrastructure"
  homepage "https://github.com/weka/bliss"
  version "2.45.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/bliss/releases/bliss_2.45.2_darwin_arm64.tar.gz"
      sha256 "e793d1e711fa4142f2f9bad953abcf807610592a8c365fd23219968dcb30116f"
    end
    on_intel do
      url "https://weka.github.io/bliss/releases/bliss_2.45.2_darwin_amd64.tar.gz"
      sha256 "d96e91de031dd37f62090fcbca780da8b100c8aacde6b1c55de84648b360a017"
    end
  end

  def install
    bin.install "bliss"
  end

  test do
    system "#{bin}/bliss", "--version"
  end
end
