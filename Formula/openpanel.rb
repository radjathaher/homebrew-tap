class Openpanel < Formula
  desc "OpenPanel CLI"
  homepage "https://github.com/radjathaher/openpanel-cli"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/radjathaher/openpanel-cli/releases/download/v0.1.0/openpanel-macos-arm64"
      sha256 "51a62a7281df777a71adceb229fa2d9bf423f5cbbaee523dda2643783b3657db"
    else
      odie "openpanel is only packaged for macOS arm64"
    end
  end

  def install
    bin.install "openpanel-macos-arm64" => "openpanel"
  end
end
