class Bliss < Formula
  desc "Command-line tool for managing K3s infrastructure"
  homepage "https://github.com/weka/bliss"
  version "2.42.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/bliss/releases/bliss_2.42.3_darwin_arm64.tar.gz"
      sha256 "14e71b13ebe8cf85768ae25a357df8d0957f12d13762999b40d55ff736665e46"
    end
    on_intel do
      url "https://weka.github.io/bliss/releases/bliss_2.42.3_darwin_amd64.tar.gz"
      sha256 "9cbde85ee8039a8fc3f0bd28abe930a92a757298b2536580f32842d188fee1c3"
    end
  end

  def install
    bin.install "bliss"
  end

  test do
    system "#{bin}/bliss", "--version"
  end
end
