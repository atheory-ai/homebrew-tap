class Skillex < Formula
  desc "Skill management for AI agents"
  homepage "https://github.com/atheory-ai/skillex"
  version "0.12.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/atheory-ai/skillex/releases/download/v0.12.0/skillex_0.12.0_darwin_amd64.tar.gz"
      sha256 "52aa7b72ad105b093ff2aa354f5596e8181703b182ae3e0440dba87c8001d7bf"
    end
    on_arm do
      url "https://github.com/atheory-ai/skillex/releases/download/v0.12.0/skillex_0.12.0_darwin_arm64.tar.gz"
      sha256 "9f49a377247dafdac91eebf57810e2be245682a513db11bcfe7b538ec828bd81"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/atheory-ai/skillex/releases/download/v0.12.0/skillex_0.12.0_linux_amd64.tar.gz"
      sha256 "fd5ae2514cb9d36b3946c152127282a41278b734fa9f5ed46c4d9026394d8ba1"
    end
    on_arm do
      url "https://github.com/atheory-ai/skillex/releases/download/v0.12.0/skillex_0.12.0_linux_arm64.tar.gz"
      sha256 "6fbe8ccf2d99a73f44f27365c022ccefbcf76cd2c28bcfe8c222b9efc3eaeb98"
    end
  end

  def install
    bin.install "skillex"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skillex version")
  end
end
