class Skillex < Formula
  desc "Skill management for AI agents"
  homepage "https://github.com/atheory-ai/skillex"
  version "0.9.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/atheory-ai/skillex/releases/download/v0.9.1/skillex_0.9.1_darwin_amd64.tar.gz"
      sha256 "cc0e0482355ebb8e9698103e4a3bbed7f0006354fe96cd86f904352915a0f7bb"
    end
    on_arm do
      url "https://github.com/atheory-ai/skillex/releases/download/v0.9.1/skillex_0.9.1_darwin_arm64.tar.gz"
      sha256 "29f070e791ef748e29aeaa4ad5e07a07ece05d88c7748e445fb093e1e50ea3c1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/atheory-ai/skillex/releases/download/v0.9.1/skillex_0.9.1_linux_amd64.tar.gz"
      sha256 "698073c729abc18526a53218475bbaa9a0cd21863115c130e4edeeec95157132"
    end
    on_arm do
      url "https://github.com/atheory-ai/skillex/releases/download/v0.9.1/skillex_0.9.1_linux_arm64.tar.gz"
      sha256 "f3c67545898aed8b30168c7bb8d39ce7ef17fa8cc4f028c3244784e3a1be383f"
    end
  end

  def install
    bin.install "skillex"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skillex version")
  end
end
