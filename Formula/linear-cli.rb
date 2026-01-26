class LinearCli < Formula
  desc "Linear CLI"
  homepage "https://github.com/radjathaher/linear-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/radjathaher/linear-cli/releases/download/v0.1.1/linear-cli-0.1.1-darwin-aarch64.tar.gz"
      sha256 "ecca4e10591ec67e1503a98653d2d6a71fb3c3f39199c6ec9d507e5d345a34ea"
    else
      odie "linear-cli is only packaged for macOS arm64"
    end
  end

  def install
    bin.install "linear"
  end
end
