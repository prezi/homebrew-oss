require "formula"

class Pride < Formula
  homepage "https://github.com/prezi/pride/"
  version "0.10"
  url "https://oss.sonatype.org/content/repositories/releases/com/prezi/pride/pride/#{version}/pride-#{version}-dist.zip"
  sha1 "202f68b3da9e6d62019c03d0334ef4f5f34464d0"

  def install
    libexec.install ["pride-#{version}/bin", "pride-#{version}/lib"]
    bin.install_symlink libexec+'bin/pride'
  end
end
