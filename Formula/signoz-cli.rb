class SignozCli < Formula
  desc "SigNoz CLI"
  homepage "https://github.com/radjathaher/signoz-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/radjathaher/signoz-cli/releases/download/v0.1.0/signoz-0.1.0-darwin-aarch64"
      sha256 "3dd5174c8e6938ce7a1f07d84b32289ee3f01cedfda36fe9f306846594907c24"
    else
      odie "signoz-cli is only packaged for macOS arm64"
    end
  end

  def install
    bin.install "signoz-0.1.0-darwin-aarch64" => "signoz"
  end
end
