class Bliss < Formula
  desc "Command-line tool for managing K3s infrastructure"
  homepage "https://github.com/weka/bliss"
  version "2.44.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/bliss/releases/bliss_2.44.0_darwin_arm64.tar.gz"
      sha256 "eef7b2c0a9ee042f3cbd65f2f017d14dad2374644bd0d16fb04b2f69d66308d8"
    end
    on_intel do
      url "https://weka.github.io/bliss/releases/bliss_2.44.0_darwin_amd64.tar.gz"
      sha256 "793dd1e50c517087c15fd2b0ceadbc3d2cd0f562af35d9663ab8b52938878b16"
    end
  end

  def install
    bin.install "bliss"
  end

  test do
    system "#{bin}/bliss", "--version"
  end
end
