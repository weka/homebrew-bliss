class Bliss < Formula
  desc "Command-line tool for managing K3s infrastructure"
  homepage "https://github.com/weka/bliss"
  version "2.38.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/bliss/releases/bliss_2.38.2_darwin_arm64.tar.gz"
      sha256 "804d4aaf1f12466ae1f778a4fca9712ab51d132320b11b82e447ad2e1a8e64f2"
    end
    on_intel do
      url "https://weka.github.io/bliss/releases/bliss_2.38.2_darwin_amd64.tar.gz"
      sha256 "a679ed2974ec418a7623739a3745d8f43c3173bb14d07b9175f64c792dc876d0"
    end
  end

  def install
    bin.install "bliss"
  end

  test do
    system "#{bin}/bliss", "--version"
  end
end
