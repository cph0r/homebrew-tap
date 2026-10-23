class Veridic < Formula
  desc "Specs for every part of your app, kept true by the code"
  homepage "https://github.com/cph0r/veridic"
  url "https://registry.npmjs.org/veridic/-/veridic-0.12.2.tgz"
  sha256 "bffe05d313dcbc222638ade257a880b2a5bcd938b12ac0cc8fcaf62d854f5d4e"
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
