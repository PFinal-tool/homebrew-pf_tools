class Pf_tools < Formula
    desc "命令行小工具集合"
    homepage "https://github.com/PFinal-tool/pf_tools"
    if Hardware::CPU.intel?
       url "https://github.com/PFinal-tool/pf_tools/releases/download/v1.0.1/pf_tools-darwin_amd64"
     end
     version "1.0.0"
     def install
         bin.install "pf_tools"
         system "xattr", "-c", "#{bin}/pf_tools"
     end
    end