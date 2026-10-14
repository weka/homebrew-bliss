class Bliss < Formula
  desc "Command-line tool for managing K3s infrastructure"
  homepage "https://github.com/weka/bliss"
  version "2.42.8"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/bliss/releases/bliss_2.42.8_darwin_arm64.tar.gz"
      sha256 "0724deccadfcefba904a6b711c99700822b626a134052d013b652f54953e0da4"
    end
    on_intel do
      url "https://weka.github.io/bliss/releases/bliss_2.42.8_darwin_amd64.tar.gz"
      sha256 "a48fd2ef8f872b06c508de03ed47e52272de1b3ca23f43079140a455f86a53d0"
    end
  end

  def install
    bin.install "bliss"
  end

  test do
    system "#{bin}/bliss", "--version"
  end
end
