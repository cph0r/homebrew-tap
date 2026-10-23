class Veridic < Formula
  desc "Specs for every part of your app, kept true by the code"
  homepage "https://github.com/cph0r/veridic"
  url "https://registry.npmjs.org/veridic/-/veridic-0.11.0.tgz"
  sha256 "df37594f3ad0587001f8118fdc6fb01634a533c98f5c9482d70bddfe14b693fa"
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
