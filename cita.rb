# github: https://github.com/cryptape/cita
class Cita < Formula
  desc "A high performance blockchain for enterprise users."
  homepage "https://docs.citahub.com/en-US/welcome"  
  url "https://github.com/clearloop/cita/releases/download/formula%400.21/cita_0.21_ed25519.zip"
  sha256 "b108126375ed67af24b5387adcdf127280ef06d420e3b07d5646fcb68fa1a4d7"
  version "0.21"
  
  def install
    libexec.install Dir["*"]
    bin.install_symlink Dir["#{libexec}/bin/*"]
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
