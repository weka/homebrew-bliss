class Bliss < Formula
  desc "Command-line tool for managing K3s infrastructure"
  homepage "https://github.com/weka/bliss"
  version "2.44.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/bliss/releases/bliss_2.44.1_darwin_arm64.tar.gz"
      sha256 "b6f1ec1eed5840285f2e46e9169d5e6a23af366b4b491a1aa89e8eae4d2611d9"
    end
    on_intel do
      url "https://weka.github.io/bliss/releases/bliss_2.44.1_darwin_amd64.tar.gz"
      sha256 "816eb4c98612f3c67c78395742d1c1dc89090e2e62f2fc2f8f8ff2ec4d64e2a1"
    end
  end

  def install
    bin.install "bliss"
  end

  test do
    system "#{bin}/bliss", "--version"
  end
end
