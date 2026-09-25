class Bliss < Formula
  desc "Command-line tool for managing K3s infrastructure"
  homepage "https://github.com/weka/bliss"
  version "2.42.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/bliss/releases/bliss_2.42.6_darwin_arm64.tar.gz"
      sha256 "f7243b6c3d118de17e87ff872b09e4930ca62be79117d081d2afe4068f96a057"
    end
    on_intel do
      url "https://weka.github.io/bliss/releases/bliss_2.42.6_darwin_amd64.tar.gz"
      sha256 "6c9dba3650d6dbaef7299d359bc125c638dd16afb9c09890ab489ea529c2b11a"
    end
  end

  def install
    bin.install "bliss"
  end

  test do
    system "#{bin}/bliss", "--version"
  end
end
