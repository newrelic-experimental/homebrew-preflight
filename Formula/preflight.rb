class Preflight < Formula
  desc "AI coding observability for Claude Code and other AI coding tools"
  homepage "https://github.com/newrelic-experimental/preflight"
  url "https://registry.npmjs.org/@newrelic/preflight/-/preflight-1.64.0.tgz"
  sha256 "2b4456c10a8efaa443e4928f8a7159c5d5784a75dbaa3692979fdc49b0709be0"
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
