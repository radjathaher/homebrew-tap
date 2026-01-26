class LinearCli < Formula
  desc "Linear CLI"
  homepage "https://github.com/radjathaher/linear-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/radjathaher/linear-cli/releases/download/v0.1.1/linear-cli-0.1.1-darwin-aarch64.tar.gz"
      sha256 "11e8aec44c4561b176f234e8ae18a0bf888e3ebb33dc7bc45ace0d88f98a70ed"
    else
      odie "linear-cli is only packaged for macOS arm64"
    end
  end

  def install
    bin.install "linear"
  end
end
