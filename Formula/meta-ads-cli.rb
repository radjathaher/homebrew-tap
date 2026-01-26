class MetaAdsCli < Formula
  desc "Meta Marketing API CLI"
  homepage "https://github.com/radjathaher/meta-ads-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/radjathaher/meta-ads-cli/releases/download/v0.1.0/meta-ads-0.1.0-darwin-aarch64.tar.gz"
      sha256 "9cdb6e2568e9b9993fcd0f6f3f95d25c064b536c189bf1f3724bc6ce54ec4622"
    else
      odie "meta-ads-cli is only packaged for macOS arm64"
    end
  end

  def install
    bin.install "meta-ads"
  end
end
