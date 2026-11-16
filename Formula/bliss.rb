class Bliss < Formula
  desc "Command-line tool for managing K3s infrastructure"
  homepage "https://github.com/weka/bliss"
  version "2.45.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/bliss/releases/bliss_2.45.3_darwin_arm64.tar.gz"
      sha256 "5492465c5e54cbefadd41dac57e5613cd459c63d3df76246e73334ae42d7d248"
    end
    on_intel do
      url "https://weka.github.io/bliss/releases/bliss_2.45.3_darwin_amd64.tar.gz"
      sha256 "73b3bff4a8655eb72d308b9cf9eead8fd6639078c11e59b2c65b4800b14b5ef2"
    end
  end

  def install
    bin.install "bliss"
  end

  test do
    system "#{bin}/bliss", "--version"
  end
end
