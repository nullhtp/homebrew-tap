class Sshkeeper < Formula
  desc "A cross-platform TUI for managing SSH connections"
  homepage "https://github.com/nullhtp/sshkeeper"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nullhtp/sshkeeper/releases/download/v0.1.0/sshkeeper-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "b64e5eae0863ab4a7e9597a87a4280a167ba47b8b6a770d453269366340306a3"
    end
  end

  def install
    bin.install "sshkeeper"
  end

  test do
    assert_match "sshkeeper", shell_output("#{bin}/sshkeeper --version 2>&1", 2)
  end
end
