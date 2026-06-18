class Bliss < Formula
  desc "Command-line tool for managing K3s infrastructure"
  homepage "https://github.com/weka/bliss"
  version "2.41.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/bliss/releases/bliss_2.41.2_darwin_arm64.tar.gz"
      sha256 "87ea3e689fd4172b88bd1fdb80a1608be9e95b4ad9c34e87ac827a7f9e889eb0"
    end
    on_intel do
      url "https://weka.github.io/bliss/releases/bliss_2.41.2_darwin_amd64.tar.gz"
      sha256 "2fd63f3b46f8ade5ec56d6bf626448df140d97b0aef5569c5864f8bf955bbb46"
    end
  end

  def install
    bin.install "bliss"
  end

  test do
    system "#{bin}/bliss", "--version"
  end
end
