class Preflight < Formula
  desc "AI coding observability for Claude Code and other AI coding tools"
  homepage "https://github.com/newrelic-experimental/preflight"
  url "https://registry.npmjs.org/@newrelic/preflight/-/preflight-1.63.3.tgz"
  sha256 "b68684dc6256a75ebceba42ae5ec5ac7a17593fc6df586e7ca8406ed78eab331"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/preflight --version")
  end
end
