class Skillex < Formula
  desc "Skill management for AI agents"
  homepage "https://github.com/atheory-ai/skillex"
  version "0.11.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/atheory-ai/skillex/releases/download/v0.11.0/skillex_0.11.0_darwin_amd64.tar.gz"
      sha256 "e341dea8a6d10a731b58bb6816cd95f797c5c08a9bbbf1e359fa35e019d0c5bb"
    end
    on_arm do
      url "https://github.com/atheory-ai/skillex/releases/download/v0.11.0/skillex_0.11.0_darwin_arm64.tar.gz"
      sha256 "39a89d80347c46685e946bfce3fd99ab3d56a5aa2abcf8882bf53a3127cdc9e0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/atheory-ai/skillex/releases/download/v0.11.0/skillex_0.11.0_linux_amd64.tar.gz"
      sha256 "f282ecdc928df684751be0b357ce8c131391442b7df5c8e5ecd2b64db485e074"
    end
    on_arm do
      url "https://github.com/atheory-ai/skillex/releases/download/v0.11.0/skillex_0.11.0_linux_arm64.tar.gz"
      sha256 "fca9ab52df02a27fbb467c4a6222e0732d84a34d0debd206dfc2a12d93ceb7d9"
    end
  end

  def install
    bin.install "skillex"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skillex version")
  end
end
