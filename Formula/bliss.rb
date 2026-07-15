class Bliss < Formula
  desc "Command-line tool for managing K3s infrastructure"
  homepage "https://github.com/weka/bliss"
  version "2.42.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/bliss/releases/bliss_2.42.0_darwin_arm64.tar.gz"
      sha256 "9fa422a3151ff4110b54c5b3c0435b28cf0d1d44ae2845ac457332e655f99bdc"
    end
    on_intel do
      url "https://weka.github.io/bliss/releases/bliss_2.42.0_darwin_amd64.tar.gz"
      sha256 "4bcab57c0c57691518a4b0c432a379696e54c89b97762a42c54a5824bfb6f1c3"
    end
  end

  def install
    bin.install "bliss"
  end

  test do
    system "#{bin}/bliss", "--version"
  end
end
