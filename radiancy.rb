class Radiancy < Formula
  desc "Try Rust by Blockchain"
  homepage "https://udtrokia.github.io/Radiancy"
  head "https://github.com/udtrokia/Radiancy.git", :using => :git

  # depends_on "cmake" => :build

  def install
    system "cd  /Users/mercury/Library/Caches/Homebrew/radiancy--git && cargo build --release"
    bin.install " /Users/mercury/Library/Caches/Homebrew/radiancy--git/target/release"
  end

  test do
    system "cargo", "run"
  end
end
