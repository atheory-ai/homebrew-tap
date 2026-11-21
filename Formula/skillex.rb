class Skillex < Formula
  desc "Skill management for AI agents"
  homepage "https://github.com/atheory-ai/skillex"
  version "0.14.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/atheory-ai/skillex/releases/download/v0.14.0/skillex_0.14.0_darwin_amd64.tar.gz"
      sha256 "499da3941cb16ed6ee6bd9922e3b84860211516c198e5e53ee5512665a380f1b"
    end
    on_arm do
      url "https://github.com/atheory-ai/skillex/releases/download/v0.14.0/skillex_0.14.0_darwin_arm64.tar.gz"
      sha256 "548bb51edc36194d7795ad9a3497d988498097d3373cfa68eff015b0b28c4c17"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/atheory-ai/skillex/releases/download/v0.14.0/skillex_0.14.0_linux_amd64.tar.gz"
      sha256 "f1483b66628738783975ea9b1ac360321e40fe37bc75cb578c5bb372a39abce5"
    end
    on_arm do
      url "https://github.com/atheory-ai/skillex/releases/download/v0.14.0/skillex_0.14.0_linux_arm64.tar.gz"
      sha256 "9ac34c8df0baaffe2ccf5cd2fa7ead896c2d83d42da8d000683c690ad84e3911"
    end
  end

  def install
    bin.install "skillex"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skillex version")
  end
end
