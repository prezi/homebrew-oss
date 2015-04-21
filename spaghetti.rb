require 'formula'

class Spaghetti < Formula
  homepage 'https://github.com/prezi/spaghetti'
  version "2.1"
  sha1 "47c8f38f570bd30bc27f383d226728783b641958"
  url "https://github.com/prezi/spaghetti/releases/download/#{version}/spaghetti-#{version}.zip"

  def install
    libexec.install Dir["spaghetti-#{version}/*"]
    bin.install_symlink libexec/"bin/spaghetti"
  end
end
