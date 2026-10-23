class Veridic < Formula
  desc "Specs for every part of your app, kept true by the code"
  homepage "https://github.com/cph0r/veridic"
  url "https://registry.npmjs.org/veridic/-/veridic-0.12.0.tgz"
  sha256 "fbefab5ebaf75a57c2c968d65a5abe5a84789d726be68f80ca833a4f0906613c"
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
