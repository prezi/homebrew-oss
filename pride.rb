require "formula"

class Pride < Formula
  homepage "https://github.com/prezi/pride/"
  version "0.9.13"
  url "https://oss.sonatype.org/content/repositories/releases/com/prezi/gradle/pride/pride/#{version}/pride-#{version}-dist.zip"
  sha1 "f886bb68c2165cd8ec73dae379cd77ba7101d9ab"

  def install
    libexec.install ["pride-#{version}/bin", "pride-#{version}/lib"]
    bin.install_symlink libexec+'bin/pride'
    system libexec+"bin/pride config --global --default repo.base.url git@github.com:prezi"
  end
end
