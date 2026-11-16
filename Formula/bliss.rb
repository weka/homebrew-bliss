class Bliss < Formula
  desc "Command-line tool for managing K3s infrastructure"
  homepage "https://github.com/weka/bliss"
  version "2.45.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/bliss/releases/bliss_2.45.4_darwin_arm64.tar.gz"
      sha256 "fd5e2c3d83c927c18ff8edbd59fca576f61933c3e24fc3ed0c8e59f4e3e38a00"
    end
    on_intel do
      url "https://weka.github.io/bliss/releases/bliss_2.45.4_darwin_amd64.tar.gz"
      sha256 "10ebd13441397c2cc752f9d9eee93be2ec5e76f5823d14cf4516087b37413591"
    end
  end

  def install
    bin.install "bliss"
  end

  test do
    system "#{bin}/bliss", "--version"
  end
end
