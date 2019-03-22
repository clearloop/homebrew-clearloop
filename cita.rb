# CITA Formula
# Offical Repository: https://github.com/cryptape/cita
# # #
class Cita < Formula
  desc "A high performance blockchain for enterprise users."
  homepage "https://docs.citahub.com/en-US/welcome"  
  url "https://github.com/clearloop/cita/releases/download/cita%400.21/cita_0.21_ed25519.zip"
  sha256 "d43b328130bfe0917e3c5b566246e324d1d4071ca1568f1a223a14c131c09684"
  version "0.21"
  
  def install
    libexec.install Dir["*"]
    bin.install_symlink Dir["#{libexec}/bin/cita"]
    bin.install_symlink Dir["#{libexec}/bin/cita-env"]
    bin.install_symlink Dir["#{libexec}/bin/cita-config"]
  end

  def caveats; <<~EOS
     By default, binaries installed by cita will be placed into:

     #{libexec}

     Usage: cita_commander <command> <node> [options]
     where <command> is one of the following:
         { help | setup | start | stop | restart | ping
          top | backup | clean | logs | logrotate }

     Run `cita help` for more detailed information.

     happy hacking!
  EOS
  end
end
