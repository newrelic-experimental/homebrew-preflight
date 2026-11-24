class Preflight < Formula
  desc "AI coding observability for Claude Code and other AI coding tools"
  homepage "https://github.com/newrelic-experimental/preflight"
  url "https://registry.npmjs.org/@newrelic/preflight/-/preflight-1.76.0.tgz"
  sha256 "58a93750d982f1c32d961b31389970de78a95f654df51392282af27625925c5d"
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
