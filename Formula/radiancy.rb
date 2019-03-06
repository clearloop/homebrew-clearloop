class Radiancy < Formula
  desc "Try Rust by Blockchain"
  homepage "https://udtrokia.github.io/Radiancy"

  version "0.0.14"
  url "https://github.com/udtrokia/Radiancy/archive/v0.0.14.tar.gz"

  def install
    system "sh scripts/build.sh"
    bin.install "target/release"
  end

  test do
    system "cargo", "run"
  end
end
