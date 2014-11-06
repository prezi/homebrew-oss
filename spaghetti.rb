require 'formula'

class Spaghetti < Formula
  homepage 'https://github.com/prezi/spaghetti'
  version "2.1-alpha-1"
  sha1 'b7792de6c16305b59ffb64c5e2dfd2e321f77d15'
  url "https://github.com/prezi/spaghetti/releases/download/#{version}/spaghetti-#{version}.zip"

  def install
    libexec.install Dir["spaghetti-#{version}/*"]
    bin.install_symlink libexec/"bin/spaghetti"
  end
end
