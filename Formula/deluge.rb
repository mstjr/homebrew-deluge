class Deluge < Formula
  desc "Transpiler for Deluge language"
  homepage "https://github.com/mstjr/deluge"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mstjr/deluge/releases/download/v0.1.0/deluge-aarch64-apple-darwin.tar.gz"
      sha256 "e1ac8c1e8f6b1d6aa4d7744acad15c1e6b3f07128c02aa775759f7c9b1c3757a"
    else
      odie "Intel Macs are not supported by this formula"
    end
  end

  on_linux do
    odie "Linux is not supported by this formula"
  end

  def install
    bin.install "deluge"
  end

  test do
    system "#{bin}/deluge", "--version"
  end
end
