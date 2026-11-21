class Skillex < Formula
  desc "Skill management for AI agents"
  homepage "https://github.com/atheory-ai/skillex"
  version "0.13.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/atheory-ai/skillex/releases/download/v0.13.0/skillex_0.13.0_darwin_amd64.tar.gz"
      sha256 "08cd8e3162d3dc3004af6619cc5fa26e7d19d1e00765092b19d622b9071333eb"
    end
    on_arm do
      url "https://github.com/atheory-ai/skillex/releases/download/v0.13.0/skillex_0.13.0_darwin_arm64.tar.gz"
      sha256 "bc57251ecaf1d7cbbd3f223d544fbbc82e9d99aedc6da614432495807650ec43"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/atheory-ai/skillex/releases/download/v0.13.0/skillex_0.13.0_linux_amd64.tar.gz"
      sha256 "e0f92d2f19639dbce95330242e98372d07822667bbebb2df3a53a7432d5334c7"
    end
    on_arm do
      url "https://github.com/atheory-ai/skillex/releases/download/v0.13.0/skillex_0.13.0_linux_arm64.tar.gz"
      sha256 "2b2ec3536af936aada76734bcc22b1668e5685aa76285dd9613c46577cf3f1bd"
    end
  end

  def install
    bin.install "skillex"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skillex version")
  end
end
