class Bliss < Formula
  desc "Command-line tool for managing K3s infrastructure"
  homepage "https://github.com/weka/bliss"
  version "2.41.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/bliss/releases/bliss_2.41.5_darwin_arm64.tar.gz"
      sha256 "aa2d9947294546c307c49c06a974f078c7b433b1099c9cfafd00e23a59d9745d"
    end
    on_intel do
      url "https://weka.github.io/bliss/releases/bliss_2.41.5_darwin_amd64.tar.gz"
      sha256 "d325d7fab18fd53b7a1d735d33027f5912da28a5726ae66018f31e30711b33f2"
    end
  end

  def install
    bin.install "bliss"
  end

  test do
    system "#{bin}/bliss", "--version"
  end
end
