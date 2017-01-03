require 'formula'

class Spaghetti < Formula
  homepage 'https://github.com/prezi/spaghetti'
  version "2.1"
  sha256 "d58374ddaf3c041ab3aa260d5b74c91aa17e7ddf9e68eeb9eaefca37654e0f41"
  url "https://github.com/prezi/spaghetti/releases/download/#{version}/spaghetti-#{version}.zip"

  def install
    libexec.install Dir["spaghetti-#{version}/*"]
    bin.install_symlink libexec/"bin/spaghetti"
  end
end
