class Skillex < Formula
  desc "Skill management for AI agents"
  homepage "https://github.com/atheory-ai/skillex"
  version "0.15.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/atheory-ai/skillex/releases/download/v0.15.0/skillex_0.15.0_darwin_amd64.tar.gz"
      sha256 "f5415c2400cfc38d5061d213788a8c038c32cabef06f6b58da449611952b5d8d"
    end
    on_arm do
      url "https://github.com/atheory-ai/skillex/releases/download/v0.15.0/skillex_0.15.0_darwin_arm64.tar.gz"
      sha256 "5e2c93ae8600c0fd0ae2cb64a5ab44580a302f88e93b2de0bc3e2c089b4ca885"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/atheory-ai/skillex/releases/download/v0.15.0/skillex_0.15.0_linux_amd64.tar.gz"
      sha256 "e3a99afcd65d093a64a9d47857a0879f59412ff6144ba113023f62678fc4eb86"
    end
    on_arm do
      url "https://github.com/atheory-ai/skillex/releases/download/v0.15.0/skillex_0.15.0_linux_arm64.tar.gz"
      sha256 "1c054eb58fc8af397ced8055c38e76d87ff0f6dc51f5eff0dd93709c83902ec3"
    end
  end

  def install
    bin.install "skillex"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skillex version")
  end
end
