class Veridic < Formula
  desc "Know what your code really does, with proof, before you change it"
  homepage "https://github.com/cph0r/veridic"
  url "https://registry.npmjs.org/veridic/-/veridic-0.5.0.tgz"
  sha256 "d47c10a41a9f96770a5697c46572eb9e346e46d357a166a2f251c194f14a1b26"
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
