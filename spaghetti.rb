require 'formula'

class Spaghetti < Formula
  homepage 'https://github.com/prezi/spaghetti'
  version "2.1-alpha-2"
  sha1 '55a0cc6bd399d7ecd37479d3ddc8d65f622b1be7'
  url "https://github.com/prezi/spaghetti/releases/download/#{version}/spaghetti-#{version}.zip"

  def install
    libexec.install Dir["spaghetti-#{version}/*"]
    bin.install_symlink libexec/"bin/spaghetti"
  end
end
