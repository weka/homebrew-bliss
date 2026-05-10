class Bliss < Formula
  desc "Command-line tool for managing K3s infrastructure"
  homepage "https://github.com/weka/bliss"
  version "2.37.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/weka/bliss/releases/download/v2.37.3/bliss_2.37.3_darwin_arm64.tar.gz"
      sha256 "bd2af0c2dd297b0bcb6521dfa96a95446bbcd30888dfed2993a7646605d572c9"
    end
    on_intel do
      url "https://github.com/weka/bliss/releases/download/v2.37.3/bliss_2.37.3_darwin_amd64.tar.gz"
      sha256 "bf822f06da0f910d9582ab4dea7b612a53563832998d5175d5e86782d0e4dfe7"
    end
  end

  def install
    bin.install "bliss"
  end

  test do
    system "#{bin}/bliss", "--version"
  end
end
