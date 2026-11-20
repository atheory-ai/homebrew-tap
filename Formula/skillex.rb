class Skillex < Formula
  desc "Skill management for AI agents"
  homepage "https://github.com/atheory-ai/skillex"
  version "0.12.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/atheory-ai/skillex/releases/download/v0.12.1/skillex_0.12.1_darwin_amd64.tar.gz"
      sha256 "bf9ab167d23f46576b15334f1721d3fca9bb1eebbffa2e7e149d5b45871b1b80"
    end
    on_arm do
      url "https://github.com/atheory-ai/skillex/releases/download/v0.12.1/skillex_0.12.1_darwin_arm64.tar.gz"
      sha256 "3e84aa47b2daec4ad5e111fe2ce655bdc444cdc52c66e130ea0c3c8099bb167f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/atheory-ai/skillex/releases/download/v0.12.1/skillex_0.12.1_linux_amd64.tar.gz"
      sha256 "c0329ee4f40dd4a4c3891542aae8b484e89e7029befb45913d29f70ec9103659"
    end
    on_arm do
      url "https://github.com/atheory-ai/skillex/releases/download/v0.12.1/skillex_0.12.1_linux_arm64.tar.gz"
      sha256 "2b9d95646452d1cb0accc8966a0783a1b2369085df911a5cbbd71fc2d7e37cbe"
    end
  end

  def install
    bin.install "skillex"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skillex version")
  end
end
