class Bliss < Formula
  desc "Command-line tool for managing K3s infrastructure"
  homepage "https://github.com/weka/bliss"
  version "2.42.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/bliss/releases/bliss_2.42.5_darwin_arm64.tar.gz"
      sha256 "7b7707557569579b06cb6c8aeb754e1219dbda74f7da970981486322aae034a7"
    end
    on_intel do
      url "https://weka.github.io/bliss/releases/bliss_2.42.5_darwin_amd64.tar.gz"
      sha256 "b98ca1f9b742959118f2476aee5e13d0e5995e07f840b0a8b0d579cbb2caa08e"
    end
  end

  def install
    bin.install "bliss"
  end

  test do
    system "#{bin}/bliss", "--version"
  end
end
