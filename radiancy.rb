class Radiancy < Formula
  desc "Try Rust by Blockchain"
  homepage "https://udtrokia.github.io/Radiancy"
  head "https://github.com/udtrokia/Radiancy.git", :using => :git

  # depends_on "cmake" => :build

  def install
    system "cd /usr/local/Homebrew/Library/Taps/udtrokia/homebrew-udtrokia/radiancy && cargo build --release"
    bin.install "/usr/local/Homebrew/Library/Taps/udtrokia/homebrew-udtrokia/radiancy/target/release"
  end

  test do
    system "cargo", "run"
  end
end
