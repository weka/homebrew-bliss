class Bliss < Formula
  desc "Command-line tool for managing K3s infrastructure"
  homepage "https://github.com/weka/bliss"
  version "2.37.8"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/bliss/releases/bliss_2.37.8_darwin_arm64.tar.gz"
      sha256 "c2ee22ac65d95b69a6e1a18ab05eec91cce3e1ff4e18aad6be80865a79ba458c"
    end
    on_intel do
      url "https://weka.github.io/bliss/releases/bliss_2.37.8_darwin_amd64.tar.gz"
      sha256 "152e817e59fd995ab1c3b98605cb36116a7f14e3676bd09e1cd1d67a1f57c3b2"
    end
  end

  def install
    bin.install "bliss"
  end

  test do
    system "#{bin}/bliss", "--version"
  end
end
