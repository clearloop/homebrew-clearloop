class Radiancy < Formula
  desc "Try Rust by Blockchain"
  url "https://github.com/udtrokia/Radiancy/archive/v0.0.14.tar.gz"
  homepage "https://udtrokia.github.io/Radiancy"
  head "https://github.com/udtrokia/Radiancy.git", :using => :git

  def install
    system "sh scripts/build.sh"
    bin.install "target/release"
  end

  test do
    system "cargo", "run"
  end
end
