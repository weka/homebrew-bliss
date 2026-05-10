class Bliss < Formula
  desc "Command-line tool for managing K3s infrastructure"
  homepage "https://github.com/weka/bliss"
  version "2.37.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/weka/bliss/releases/download/v2.37.4/bliss_2.37.4_darwin_arm64.tar.gz"
      sha256 "8aff98f1dd9e0cfcaf8fe64347ae6f425949f8d845a7d74e261e128646e37055"
    end
    on_intel do
      url "https://github.com/weka/bliss/releases/download/v2.37.4/bliss_2.37.4_darwin_amd64.tar.gz"
      sha256 "29824a373b337b46e469eb0cefbe2d5c69c3ca87b50630e6fae06f5f1e1db379"
    end
  end

  def install
    bin.install "bliss"
  end

  test do
    system "#{bin}/bliss", "--version"
  end
end
