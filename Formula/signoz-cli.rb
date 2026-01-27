class SignozCli < Formula
  desc "SigNoz CLI"
  homepage "https://github.com/radjathaher/signoz-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/radjathaher/signoz-cli/releases/download/v0.1.1/signoz-0.1.1-darwin-aarch64"
      sha256 "121a3f4066edc1df3bee69b95f30320882e6b65aa71ea2d294eb29f19e062c4e"
    else
      odie "signoz-cli is only packaged for macOS arm64"
    end
  end

  def install
    bin.install "signoz-0.1.1-darwin-aarch64" => "signoz"
  end
end
