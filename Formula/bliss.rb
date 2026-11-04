class Bliss < Formula
  desc "Command-line tool for managing K3s infrastructure"
  homepage "https://github.com/weka/bliss"
  version "2.45.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/bliss/releases/bliss_2.45.1_darwin_arm64.tar.gz"
      sha256 "1833d76ee8eaa919d405c2df9dd8282f5af20c4eee365f5282be84b426d16b8f"
    end
    on_intel do
      url "https://weka.github.io/bliss/releases/bliss_2.45.1_darwin_amd64.tar.gz"
      sha256 "eb7330ba1e42320188bb204f45c4db853f45684408a2a234ab45dca838366f32"
    end
  end

  def install
    bin.install "bliss"
  end

  test do
    system "#{bin}/bliss", "--version"
  end
end
