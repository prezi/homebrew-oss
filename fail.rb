require 'formula'

class Fail < Formula
  homepage 'https://github.com/prezi/fail'
  version "alpha.6"
  sha1 '57c88b54d9ae7e0ae6258b866d80d5a802ba6cc2'
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
