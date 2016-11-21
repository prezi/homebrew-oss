require "formula"

class Pride < Formula
  homepage "https://github.com/prezi/pride/"
  version "0.10"
  url "https://oss.sonatype.org/content/repositories/releases/com/prezi/pride/pride/#{version}/pride-#{version}-dist.zip"
  sha256 "2b14ff2bc22b66a76be9ad535bae2248811488d1313efeaf6e89b165f8466686"

  def install
    libexec.install ["pride-#{version}/bin", "pride-#{version}/lib"]
    bin.install_symlink libexec+'bin/pride'
  end
end
