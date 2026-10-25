class Bliss < Formula
  desc "Command-line tool for managing K3s infrastructure"
  homepage "https://github.com/weka/bliss"
  version "2.44.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/bliss/releases/bliss_2.44.2_darwin_arm64.tar.gz"
      sha256 "3df84d8ce4ab2666d3d6cf667df9b9cb0e786930cc9eb4ddbc5e1425574c6392"
    end
    on_intel do
      url "https://weka.github.io/bliss/releases/bliss_2.44.2_darwin_amd64.tar.gz"
      sha256 "bacfd51099b9f408027c8115a40b0824c422f2b3ffd2faaa07927f76e347d3d4"
    end
  end

  def install
    bin.install "bliss"
  end

  test do
    system "#{bin}/bliss", "--version"
  end
end
