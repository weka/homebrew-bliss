class Bliss < Formula
  desc "Command-line tool for managing K3s infrastructure"
  homepage "https://github.com/weka/bliss"
  version "2.38.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/bliss/releases/bliss_2.38.0_darwin_arm64.tar.gz"
      sha256 "6a60344007e0c273473454179903765f17207c698604beefd877e9696b2f192b"
    end
    on_intel do
      url "https://weka.github.io/bliss/releases/bliss_2.38.0_darwin_amd64.tar.gz"
      sha256 "563fc42e5249b4aa0518f62bdcec7becab940bfe22f34621d82b71eca5c5ca45"
    end
  end

  def install
    bin.install "bliss"
  end

  test do
    system "#{bin}/bliss", "--version"
  end
end
