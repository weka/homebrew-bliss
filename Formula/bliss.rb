class Bliss < Formula
  desc "Command-line tool for managing K3s infrastructure"
  homepage "https://github.com/weka/bliss"
  version "2.40.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/bliss/releases/bliss_2.40.0_darwin_arm64.tar.gz"
      sha256 "719870581eb7d11f9d4cb7c7f0835829a638f0e93c7714ff7dd80854e1395469"
    end
    on_intel do
      url "https://weka.github.io/bliss/releases/bliss_2.40.0_darwin_amd64.tar.gz"
      sha256 "9163bf672ba091e172c5df94d9dda5f271cc5fef49eb678e8edb11818488db3a"
    end
  end

  def install
    bin.install "bliss"
  end

  test do
    system "#{bin}/bliss", "--version"
  end
end
