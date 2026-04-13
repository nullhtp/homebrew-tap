class Sshkeeper < Formula
  desc "A cross-platform TUI for managing SSH connections"
  homepage "https://github.com/nullhtp/sshkeeper"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nullhtp/sshkeeper/releases/download/v0.1.5/sshkeeper-aarch64-apple-darwin.tar.gz"
      sha256 "0d9999d6a3d7357f5ad135d7a9d6636d6bc72783ef0f01a5790bea29cad42d5e"
    elsif Hardware::CPU.intel?
      url "https://github.com/nullhtp/sshkeeper/releases/download/v0.1.5/sshkeeper-x86_64-apple-darwin.tar.gz"
      sha256 "8674e879236e865bc117a44901a784988cd6534af632b76fa0cc6145d0dbb539"
    end
  end

  on_linux do
    url "https://github.com/nullhtp/sshkeeper/releases/download/v0.1.5/sshkeeper-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5b56cb40e8a7703a6c6646d7346ae0cd140f5dd740eb99e8a070adcd0ef737d0"
  end

  def install
    bin.install "sshkeeper"
  end

  test do
    assert_match "sshkeeper", shell_output("#{bin}/sshkeeper --version 2>&1", 2)
  end
end
