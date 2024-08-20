class PfTools < Formula
  desc "命令行小工具集合"
  homepage "https://github.com/PFinal-tool/pf_tools"
  version "1.0.1"

  if Hardware::CPU.intel?
    url "https://github.com/PFinal-tool/pf_tools/releases/download/v1.0.1/pf_tools-darwin_amd64"
    sha256 "d58b2b0b4d9efb6f7e86f6816d1b7d86a3b64db630012a3a1e5f6088ccd1dc7c"
  elsif Hardware::CPU.arm?
    url "https://github.com/PFinal-tool/pf_tools/releases/download/v1.0.1/pf_tools-darwin_arm64"
    sha256 "1fd49c1c3a518ecbb1ca4a2e48961461acc3b67958e188b76031523f437fbb58"
  else
    odie "Unsupported CPU architecture"
  end

  def install
    bin.install "pf_tools-darwin_amd64" => "pf_tools" if Hardware::CPU.intel?
    bin.install "pf_tools-darwin_arm64" => "pf_tools" if Hardware::CPU.arm?
    system "xattr", "-c", "#{bin}/pf_tools"
  end
end
