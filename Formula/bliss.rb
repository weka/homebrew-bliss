class Bliss < Formula
  desc "Command-line tool for managing K3s infrastructure"
  homepage "https://github.com/weka/bliss"
  version "2.41.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/bliss/releases/bliss_2.41.4_darwin_arm64.tar.gz"
      sha256 "1220ccad0d5c35b28bcb03621b79017582bbba52d38270434d4f883631245a50"
    end
    on_intel do
      url "https://weka.github.io/bliss/releases/bliss_2.41.4_darwin_amd64.tar.gz"
      sha256 "89255c8696ac895efa8102ffbcd985a84b430e9cec2ec60ec4d9293cff49ae9d"
    end
  end

  def install
    bin.install "bliss"
  end

  test do
    system "#{bin}/bliss", "--version"
  end
end
