class Openpanel < Formula
  desc "OpenPanel CLI"
  homepage "https://github.com/radjathaher/openpanel-cli"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/radjathaher/openpanel-cli/releases/download/v0.2.0/openpanel-macos-arm64"
      sha256 "8f89e4f1dda7fbac91c8751685b89e334707b3eac80b323ee48adf62c1dad489"
    else
      odie "openpanel is only packaged for macOS arm64"
    end
  end

  def install
    bin.install "openpanel-macos-arm64" => "openpanel"
  end
end
