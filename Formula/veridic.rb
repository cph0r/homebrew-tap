class Veridic < Formula
  desc "Know what your code really does, with proof, before you change it"
  homepage "https://github.com/cph0r/veridic"
  url "https://registry.npmjs.org/veridic/-/veridic-0.6.0.tgz"
  sha256 "a9fa51780d3a2df84bc3f0c609a1547a7ca0d183f4f0cbef2aab6abbd7ec9f3b"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "veridic <command>", shell_output(bin/"veridic")
  end
end
