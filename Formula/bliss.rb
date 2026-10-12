class Bliss < Formula
  desc "Command-line tool for managing K3s infrastructure"
  homepage "https://github.com/weka/bliss"
  version "2.42.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/bliss/releases/bliss_2.42.7_darwin_arm64.tar.gz"
      sha256 "d2efbf3eba7f809dcd1f8fe71e3f1a92b21c006bcc5585a0fef5e436c4fba0be"
    end
    on_intel do
      url "https://weka.github.io/bliss/releases/bliss_2.42.7_darwin_amd64.tar.gz"
      sha256 "bc1e57422605b9014b7a20eb05f05d655d00f997beba952f12370d1c0b9bff0e"
    end
  end

  def install
    bin.install "bliss"
  end

  test do
    system "#{bin}/bliss", "--version"
  end
end
