class Bliss < Formula
  desc "Command-line tool for managing K3s infrastructure"
  homepage "https://github.com/weka/bliss"
  version "2.45.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/bliss/releases/bliss_2.45.0_darwin_arm64.tar.gz"
      sha256 "975f420d4c1fd002d13f81666b432361f880950b65176c0fdaae30e1e075abc1"
    end
    on_intel do
      url "https://weka.github.io/bliss/releases/bliss_2.45.0_darwin_amd64.tar.gz"
      sha256 "df28fe2500a927539b212c4e8c9bb6b2da7315506192a2d89b86c3371893d536"
    end
  end

  def install
    bin.install "bliss"
  end

  test do
    system "#{bin}/bliss", "--version"
  end
end
