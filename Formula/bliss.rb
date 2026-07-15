class Bliss < Formula
  desc "Command-line tool for managing K3s infrastructure"
  homepage "https://github.com/weka/bliss"
  version "2.41.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/bliss/releases/bliss_2.41.6_darwin_arm64.tar.gz"
      sha256 "e5f459e8f25c750db84ef9a7e073ac8e918bda61689f4f336a56270fb53418b1"
    end
    on_intel do
      url "https://weka.github.io/bliss/releases/bliss_2.41.6_darwin_amd64.tar.gz"
      sha256 "dad13bedf53b158d0fec82964bcad13a36679cec2542269f0311708eaeeacc90"
    end
  end

  def install
    bin.install "bliss"
  end

  test do
    system "#{bin}/bliss", "--version"
  end
end
