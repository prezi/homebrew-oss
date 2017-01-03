require 'formula'

class Fail < Formula
  homepage 'https://github.com/prezi/fail'
  version "alpha.6"
  sha256 '19cabea428aab45ffdb76fa965af7dcf345c82c0e698dbb0b1e456ec1980c3f3'
  head 'git@github.com:prezi/fail', :using => :git
  url "https://github.com/prezi/fail/releases/download/#{version}/fail-#{version}.tgz"

  def install
    if build.head?
      system "./gradlew cli:installApp"
      libexec.install Dir["cli/build/install/fail/*"]
    else
      libexec.install Dir["*"]
    end
    bin.install_symlink libexec/"bin/fail"
  end

  def caveats; <<-EOS.undent
      You usually want to add these to $HOME/.fail.properties:

        fail.cli.apiEndpoint=https://fail.awesomeco.org/
        fail.cli.auth.provider=HTTP_BASIC_AUTH
        fail.cli.auth.basicHTTP.username=USERNAME
        fail.cli.auth.basicHTTP.password=PASSWORD

      More info at https://github.com/prezi/fail/tree/master/cli#configuring
    EOS
  end

end
