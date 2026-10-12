class Preflight < Formula
  desc "AI coding observability for Claude Code and other AI coding tools"
  homepage "https://github.com/newrelic-experimental/preflight"
  url "https://registry.npmjs.org/@newrelic/preflight/-/preflight-1.65.0.tgz"
  sha256 "f3298259f5896a0acf4ed9f8a28123ba9811808741fd00f31531e8b836836004"
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
