class Bliss < Formula
  desc "Command-line tool for managing WEKA infrastructure"
  homepage "https://github.com/weka/jobless"
  version "2.37.2"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://github.com/weka/jobless/releases/download/v2.37.2/bliss_2.37.2_darwin_arm64.tar.gz"
      sha256 "ac219c8b7210292f40b7d7aadf9abce5ff430fd8d0fbafd77df0c82e1a2f859f"
    end
    on_intel do
      url "https://github.com/weka/jobless/releases/download/v2.37.2/bliss_2.37.2_darwin_amd64.tar.gz"
      sha256 "d25afc618ef97469e6ca91d62d674589c1217721d6eac916c5e0b6febb64c008"
    end
  end

  def install
    bin.install "bliss"
  end

  test do
    system "#{bin}/bliss", "--version"
  end
end
