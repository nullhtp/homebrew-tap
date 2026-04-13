class Sshkeeper < Formula
  desc "A cross-platform TUI for managing SSH connections"
  homepage "https://github.com/nullhtp/sshkeeper"
  url "https://github.com/nullhtp/sshkeeper/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "7bcde49ac0cb88e4384d9d9a91e76c06f510dc4d9ad228478a4f4e82bf21ae3f"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "sshkeeper", shell_output("#{bin}/sshkeeper --version 2>&1", 2)
  end
end
