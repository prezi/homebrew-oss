require "formula"

class Pride < Formula
  homepage "https://github.com/prezi/pride/"
  version "0.12.3"
  url "https://oss.sonatype.org/content/repositories/releases/com/prezi/pride/pride/#{version}/pride-#{version}.zip"
  sha256 "74488d875b410f0772061b477e8f90f1f21bdac5ac46aa48989684810d10f194"

  def install
    libexec.install ["pride-#{version}/bin", "pride-#{version}/lib"]
    bin.install_symlink libexec+'bin/pride'
  end
end
