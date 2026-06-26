class Bliss < Formula
  desc "Command-line tool for managing K3s infrastructure"
  homepage "https://github.com/weka/bliss"
  version "2.41.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/bliss/releases/bliss_2.41.3_darwin_arm64.tar.gz"
      sha256 "ab31c1d009d9e7d0adcbf64930610cacbace7ccaa5df4dca9bbd327a75807097"
    end
    on_intel do
      url "https://weka.github.io/bliss/releases/bliss_2.41.3_darwin_amd64.tar.gz"
      sha256 "d5ff37d90d9662931b6e37729000cb55281198b68836d7f7c7b7c03812f8272a"
    end
  end

  def install
    bin.install "bliss"
  end

  test do
    system "#{bin}/bliss", "--version"
  end
end
