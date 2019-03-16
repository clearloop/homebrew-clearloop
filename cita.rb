# github: https://github.com/cryptape/cita
class Cita < Formula
  desc "A high performance blockchain for enterprise users."
  homepage "https://docs.citahub.com/en-US/welcome"  
  url "https://github.com/clearloop/cita/releases/download/self_optimization/cita_compiled@0.20.3.zip"
  sha256 "34663e874d5d09ba68b3665cd80f37646315f906ea1db99c09db32aea3ef6421"

  depends_on "docker"
  
  def install
    libexec.install Dir["*"]
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  def caveats; <<~EOS
     By default, binaries installed by cita will be placed into:

     #{libexec}

     You may want to add this to your PATH:

     export CITA_HOME=$HOME/Library/cita
     export CITA_PATH=#{libexec}

     $ cita
     Usage: cita_commander <command> <node> [options]
     where <command> is one of the following:
         { help | setup | start | stop | restart | ping
          top | backup | clean | logs | logrotate }

     Run `cita help` for more detailed information.

     happy hacking!
  EOS
  end
end
  
  
