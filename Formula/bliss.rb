class Bliss < Formula
  desc "Command-line tool for managing K3s infrastructure"
  homepage "https://github.com/weka/bliss"
  version "2.43.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/bliss/releases/bliss_2.43.2_darwin_arm64.tar.gz"
      sha256 "5e0ab4737de4646cbbbc5e23007553682f4ef397e81edc612ceec225fcb24f11"
    end
    on_intel do
      url "https://weka.github.io/bliss/releases/bliss_2.43.2_darwin_amd64.tar.gz"
      sha256 "fd2cd242e8724ed8b31717a53bf08f214c6976b252df412d84fd73f1ebeb3ecf"
    end
  end

  def install
    bin.install "bliss"
  end

  test do
    system "#{bin}/bliss", "--version"
  end
end
