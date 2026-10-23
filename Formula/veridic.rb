class Veridic < Formula
  desc "Specs for every part of your app, kept true by the code"
  homepage "https://github.com/cph0r/veridic"
  url "https://registry.npmjs.org/veridic/-/veridic-0.10.0.tgz"
  sha256 "0b3ccf3fa7a1583cc67a7c05756f057eec00f60efb4b4c13bfc0e92a01bef321"
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
