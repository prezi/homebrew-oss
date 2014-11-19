require "formula"

class Pride < Formula
  homepage "https://github.com/prezi/pride/"
  version "0.9.12"
  url "https://oss.sonatype.org/content/repositories/releases/com/prezi/gradle/pride/pride/#{version}/pride-#{version}-dist.zip"
  sha1 "ce6eaa7c0294d8dce848a3b6b380635dda25601b"

  def install
    libexec.install ["pride-#{version}/bin", "pride-#{version}/lib"]
    bin.install_symlink libexec+'bin/pride'
    system libexec+"bin/pride config --global --default repo.base.url git@github.com:prezi"
  end
end
