require "language/node"

class Beeminder < Formula
  desc "NodeJS wrapper for the Beeminder API"
  homepage "https://github.com/malcolmocean/beeminderjs#readme"
  url "https://registry.npmjs.org/beeminder/-/beeminder-1.6.5.tgz"
  sha256 "d07ac749b24e402e43610514a47a740b6bb659ef2a08ce888bc83dbf008380a9"
  license "GPL-2.0-only"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
