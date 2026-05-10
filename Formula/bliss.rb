class Bliss < Formula
  desc "Command-line tool for managing K3s infrastructure"
  homepage "https://github.com/weka/bliss"
  version "2.37.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/weka/bliss/releases/download/v2.37.5/bliss_2.37.5_darwin_arm64.tar.gz"
      sha256 "7a08acb50f32c784547235d49714ffd066b94457302e01b2b1c08272f0811ff6"
    end
    on_intel do
      url "https://github.com/weka/bliss/releases/download/v2.37.5/bliss_2.37.5_darwin_amd64.tar.gz"
      sha256 "60a2075c990079823ed9d285fb2c50512e90524701faab0eb2d6cccdc9488e0c"
    end
  end

  def install
    bin.install "bliss"
  end

  test do
    system "#{bin}/bliss", "--version"
  end
end
