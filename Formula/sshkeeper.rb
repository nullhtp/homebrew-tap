class Sshkeeper < Formula
  desc "A cross-platform TUI for managing SSH connections"
  homepage "https://github.com/nullhtp/sshkeeper"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nullhtp/sshkeeper/releases/download/v0.1.3/sshkeeper-aarch64-apple-darwin.tar.gz"
      sha256 "44740c251a112db64fcf2e8aef88926cccc37d52f1b0aed0001748a09c9c9f5a"
    elsif Hardware::CPU.intel?
      url "https://github.com/nullhtp/sshkeeper/releases/download/v0.1.3/sshkeeper-x86_64-apple-darwin.tar.gz"
      sha256 "b605de3b12f36218f9ecffdad557ec413620dbbc1f118007dbfb6e5d7cafed1f"
    end
  end

  on_linux do
    url "https://github.com/nullhtp/sshkeeper/releases/download/v0.1.3/sshkeeper-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4739e6233447b739eb27d18d30d6cf7803b973d20e7e1a693695ec70f1945f02"
  end

  def install
    bin.install "sshkeeper"
  end

  test do
    assert_match "sshkeeper", shell_output("#{bin}/sshkeeper --version 2>&1", 2)
  end
end
