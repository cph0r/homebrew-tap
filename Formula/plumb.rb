class Plumb < Formula
  desc "Know what your code really does, with proof, before you change it"
  homepage "https://github.com/cph0r/plumb"
  url "https://registry.npmjs.org/plumbcode/-/plumbcode-0.3.1.tgz"
  sha256 "f81bcb9a3291310b2df910027502218f8482717f8b8dcfa713f95facbb886e2d"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "plumb <command>", shell_output("#{bin}/plumb")
  end
end
