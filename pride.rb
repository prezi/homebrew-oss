require "formula"

class Pride < Formula
  homepage "https://github.com/prezi/pride/"
  version "0.9.16"
  url "https://oss.sonatype.org/content/repositories/releases/com/prezi/gradle/pride/pride/#{version}/pride-#{version}-dist.zip"
  sha1 "4e069d0bd8b41ed94d22ee2d0a7523ee7f0c2ae1"

  def install
    libexec.install ["pride-#{version}/bin", "pride-#{version}/lib"]
    bin.install_symlink libexec+'bin/pride'
  end
end
