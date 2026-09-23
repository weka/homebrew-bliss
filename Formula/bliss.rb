class Bliss < Formula
  desc "Command-line tool for managing K3s infrastructure"
  homepage "https://github.com/weka/bliss"
  version "2.42.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/bliss/releases/bliss_2.42.4_darwin_arm64.tar.gz"
      sha256 "0248aa68d5f4c07175c0bc7001adc7cb4bd9d5e1b5efef8c1b0c54e3104ae6dd"
    end
    on_intel do
      url "https://weka.github.io/bliss/releases/bliss_2.42.4_darwin_amd64.tar.gz"
      sha256 "b1138221bf2d30aa69b9b311c8b2419308583aa88a0e6a0cfa58ac79c409aee3"
    end
  end

  def install
    bin.install "bliss"
  end

  test do
    system "#{bin}/bliss", "--version"
  end
end
