class Skillex < Formula
  desc "Skill management for AI agents"
  homepage "https://github.com/atheory-ai/skillex"
  version "0.10.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/atheory-ai/skillex/releases/download/v0.10.0/skillex_0.10.0_darwin_amd64.tar.gz"
      sha256 "2844ee6235bab2913bf4736bef0e890698c97c827bda52ecfe64c8f008e641d4"
    end
    on_arm do
      url "https://github.com/atheory-ai/skillex/releases/download/v0.10.0/skillex_0.10.0_darwin_arm64.tar.gz"
      sha256 "ee285d9c243bc84e874cd724101c7d54bb953e65729581753592da86e98e8525"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/atheory-ai/skillex/releases/download/v0.10.0/skillex_0.10.0_linux_amd64.tar.gz"
      sha256 "90b17c1a36fa36207c4a44c34546de54939e9f783aa6215d7d9958fc0ffbe9ce"
    end
    on_arm do
      url "https://github.com/atheory-ai/skillex/releases/download/v0.10.0/skillex_0.10.0_linux_arm64.tar.gz"
      sha256 "13bdef94e7a8d1f992c75a381f5dd0bd18b5d3381717afcccbae4c8793fbf6b9"
    end
  end

  def install
    bin.install "skillex"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skillex version")
  end
end
