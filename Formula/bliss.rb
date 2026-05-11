class Bliss < Formula
  desc "Command-line tool for managing K3s infrastructure"
  homepage "https://github.com/weka/bliss"
  version "2.37.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/bliss/releases/bliss_2.37.7_darwin_arm64.tar.gz"
      sha256 "2af57f937ac1810e8c8fdc06ea3e8a7c37c2f81f62254bb4a227fcea64406219"
    end
    on_intel do
      url "https://weka.github.io/bliss/releases/bliss_2.37.7_darwin_amd64.tar.gz"
      sha256 "22d3aed4e80ac3a9f2afd2b1f27b0752240db373e6a0271c5360fb726bf02f8e"
    end
  end

  def install
    bin.install "bliss"
  end

  test do
    system "#{bin}/bliss", "--version"
  end
end
