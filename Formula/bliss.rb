class Bliss < Formula
  desc "Command-line tool for managing K3s infrastructure"
  homepage "https://github.com/weka/bliss"
  version "2.38.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/bliss/releases/bliss_2.38.1_darwin_arm64.tar.gz"
      sha256 "d40228b3dfa211ac69707ba2a7e964e1f5b570c2882928a84656c04124556708"
    end
    on_intel do
      url "https://weka.github.io/bliss/releases/bliss_2.38.1_darwin_amd64.tar.gz"
      sha256 "d9c5923bae1d639bdd31f43cc43a3c573dc5cceb81886452321eb6a14c5b5b8b"
    end
  end

  def install
    bin.install "bliss"
  end

  test do
    system "#{bin}/bliss", "--version"
  end
end
