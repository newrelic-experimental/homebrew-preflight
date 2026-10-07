class Preflight < Formula
  desc "AI coding observability for Claude Code and other AI coding tools"
  homepage "https://github.com/newrelic-experimental/preflight"
  url "https://registry.npmjs.org/@newrelic/preflight/-/preflight-1.59.4.tgz"
  sha256 "b42b783ded75333c170a012e0fd3874ef0bfd37b3386a62ec45a64ff2ab9a6db"
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
