class Sshkeeper < Formula
  desc "A cross-platform TUI for managing SSH connections"
  homepage "https://github.com/nullhtp/sshkeeper"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nullhtp/sshkeeper/releases/download/v0.1.4/sshkeeper-aarch64-apple-darwin.tar.gz"
      sha256 "c62b53e46da6d86367db5fe66bb07210064ada6eda71c8adf46e1b2c9b94b6df"
    elsif Hardware::CPU.intel?
      url "https://github.com/nullhtp/sshkeeper/releases/download/v0.1.4/sshkeeper-x86_64-apple-darwin.tar.gz"
      sha256 "57a466607f3725ada135100219c5eaa755ef73e0c66dc2adc9d3faeb6d968546"
    end
  end

  on_linux do
    url "https://github.com/nullhtp/sshkeeper/releases/download/v0.1.4/sshkeeper-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "50cd11d9d98cf50c7d47710014e181451de3eaee92d091458f5e0bec09a696bb"
  end

  def install
    bin.install "sshkeeper"
  end

  test do
    assert_match "sshkeeper", shell_output("#{bin}/sshkeeper --version 2>&1", 2)
  end
end
