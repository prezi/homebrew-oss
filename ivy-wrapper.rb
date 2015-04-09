class IvyWrapper < Formula
  homepage "https://github.com/prezi/ivy-wrapper"
  url "https://github.com/prezi/ivy-wrapper/archive/v0.9.1.tar.gz"
  sha256 "3351b09242db53387ee9193124ed1ddf2a5d0ef4738f7058bb141217be731c51"

  def install
    bin.install "ivy"
  end

  test do
    system "#{bin}/ivy", "-version"
  end
end
