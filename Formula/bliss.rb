class Bliss < Formula
  desc "Command-line tool for managing K3s infrastructure"
  homepage "https://github.com/weka/bliss"
  version "2.41.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/bliss/releases/bliss_2.41.0_darwin_arm64.tar.gz"
      sha256 "0d9e4bce9b9f5b90b487fd86a80f97a47f6150b5ec71b0222199d26dd41d80bb"
    end
    on_intel do
      url "https://weka.github.io/bliss/releases/bliss_2.41.0_darwin_amd64.tar.gz"
      sha256 "254f1d20d6b484e9fe8fbd56ad5e61d1042a83ec7628c5427b55d53ba97e015d"
    end
  end

  def install
    bin.install "bliss"
  end

  test do
    system "#{bin}/bliss", "--version"
  end
end
