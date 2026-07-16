class Bliss < Formula
  desc "Command-line tool for managing K3s infrastructure"
  homepage "https://github.com/weka/bliss"
  version "3.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/bliss/releases/bliss_3.0.0_darwin_arm64.tar.gz"
      sha256 "4f36d69fa1e07357fac1c48d3d7e7c2a07cce0be16989c993dc586429581c28a"
    end
    on_intel do
      url "https://weka.github.io/bliss/releases/bliss_3.0.0_darwin_amd64.tar.gz"
      sha256 "c802e37be88a265ae2049fadad95491e79b163bf4ba4604baef5a5eaf8ad58d2"
    end
  end

  def install
    bin.install "bliss"
  end

  test do
    system "#{bin}/bliss", "--version"
  end
end
