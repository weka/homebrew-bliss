class Bliss < Formula
  desc "Command-line tool for managing K3s infrastructure"
  homepage "https://github.com/weka/bliss"
  version "2.42.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/bliss/releases/bliss_2.42.2_darwin_arm64.tar.gz"
      sha256 "a99b831021043cee7812a403c993d880de4dee4582c76f9da9992575b469517d"
    end
    on_intel do
      url "https://weka.github.io/bliss/releases/bliss_2.42.2_darwin_amd64.tar.gz"
      sha256 "dc7c05253e83eeb40133269b56364d4bcb88ddb3d8bc461474be501206afbb0e"
    end
  end

  def install
    bin.install "bliss"
  end

  test do
    system "#{bin}/bliss", "--version"
  end
end
