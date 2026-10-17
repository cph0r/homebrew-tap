class Veridic < Formula
  desc "Know what your code really does, with proof, before you change it"
  homepage "https://github.com/cph0r/veridic"
  url "https://registry.npmjs.org/veridic/-/veridic-0.4.1.tgz"
  sha256 "b3552aa912f48e88f3fe352c5d75965b065fef55813c703fbc849ef91a9b07a0"
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
