class Bliss < Formula
  desc "Command-line tool for managing K3s infrastructure"
  homepage "https://github.com/weka/bliss"
  version "2.41.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/bliss/releases/bliss_2.41.1_darwin_arm64.tar.gz"
      sha256 "9950d9eb83a9f9dc025b01b95685d7b47a02b0bb7a9aa4645a0985acc90c30ae"
    end
    on_intel do
      url "https://weka.github.io/bliss/releases/bliss_2.41.1_darwin_amd64.tar.gz"
      sha256 "4e950707ae35973b8e23fa7fa30389cc1188600a8e598d471f3053695ae01097"
    end
  end

  def install
    bin.install "bliss"
  end

  test do
    system "#{bin}/bliss", "--version"
  end
end
