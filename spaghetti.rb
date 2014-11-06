require 'formula'

class Spaghetti < Formula
  homepage 'https://github.com/prezi/spaghetti'
  version "2.0"
  sha1 '17ebb64f91ed7fe389843825b09bb68423bd4cf3'
  url "https://github.com/prezi/spaghetti/releases/download/#{version}/spaghetti-#{version}.zip"

  def install
    libexec.install Dir["spaghetti-#{version}/*"]
    bin.install_symlink libexec/"bin/spaghetti"
  end
end
