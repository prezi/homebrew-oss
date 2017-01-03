require "formula"

class Pride < Formula
  homepage "https://github.com/prezi/pride/"
  version "0.11"
  url "https://oss.sonatype.org/content/repositories/releases/com/prezi/pride/pride/#{version}/pride-#{version}-dist.zip"
  sha256 "ee85c365f049e719f996aba49cb41dd681cf2bcf7350c0f3ce18d78f2505ddb3"

  def install
    libexec.install ["pride-#{version}/bin", "pride-#{version}/lib"]
    bin.install_symlink libexec+'bin/pride'
  end
end
