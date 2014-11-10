require "formula"

class Pride < Formula
  homepage "https://github.com/prezi/pride/"
  version "0.9.11"
  url "https://oss.sonatype.org/content/repositories/releases/com/prezi/gradle/pride/pride/#{version}/pride-#{version}-dist.zip"
  sha1 "a6671f3fa50f0e69e671105b0179b7909b14037e"

  def install
    libexec.install ["pride-#{version}/bin", "pride-#{version}/lib"]
    bin.install_symlink libexec+'bin/pride'
    system libexec+"bin/pride config --global --default repo.base.url git@github.com:prezi"
  end
end
