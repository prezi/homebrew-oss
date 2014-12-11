require "formula"

class Pride < Formula
  homepage "https://github.com/prezi/pride/"
  version "0.9.15"
  url "https://oss.sonatype.org/content/repositories/releases/com/prezi/gradle/pride/pride/#{version}/pride-#{version}-dist.zip"
  sha1 "965346266d60e67c9effcb718f46ce02ff2df53f"

  def install
    libexec.install ["pride-#{version}/bin", "pride-#{version}/lib"]
    bin.install_symlink libexec+'bin/pride'
  end
end
