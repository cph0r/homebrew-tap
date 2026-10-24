class Veridic < Formula
  desc "Specs for every part of your app, kept true by the code"
  homepage "https://github.com/cph0r/veridic"
  url "https://registry.npmjs.org/veridic/-/veridic-0.13.0.tgz"
  sha256 "99bb7fb58915a37579ac94cd2df438c557b76c6117ac8d2c4138d4afc9800b86"
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
