require "formula"

class Pride < Formula
  homepage "https://github.com/prezi/pride/"
  version "0.9.14"
  url "https://oss.sonatype.org/content/repositories/releases/com/prezi/gradle/pride/pride/#{version}/pride-#{version}-dist.zip"
  sha1 "0d964c9a64b7722d92421634d0c17eb78dcf8009"

  def install
    libexec.install ["pride-#{version}/bin", "pride-#{version}/lib"]
    bin.install_symlink libexec+'bin/pride'
  end
end
