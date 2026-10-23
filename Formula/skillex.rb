class Skillex < Formula
  desc "Skill management for AI agents"
  homepage "https://github.com/atheory-ai/skillex"
  version "0.11.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/atheory-ai/skillex/releases/download/v0.11.1/skillex_0.11.1_darwin_amd64.tar.gz"
      sha256 "47db0de6fa49c08fb8434ab529db596355eaa2b3b87e1ca375e287e9d532f12c"
    end
    on_arm do
      url "https://github.com/atheory-ai/skillex/releases/download/v0.11.1/skillex_0.11.1_darwin_arm64.tar.gz"
      sha256 "54e44db5783854b5e002b2eb71c4c81d6926669b87b1ea5eedf5e73dd331a56b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/atheory-ai/skillex/releases/download/v0.11.1/skillex_0.11.1_linux_amd64.tar.gz"
      sha256 "29795e64bc9e34a9a04aa6d9de3e784bd18b1ce89a6c15b52c3755db9c4bc2e2"
    end
    on_arm do
      url "https://github.com/atheory-ai/skillex/releases/download/v0.11.1/skillex_0.11.1_linux_arm64.tar.gz"
      sha256 "3db7e78577806cdb64fd9bf900d5a69124b7c0badbf6d8a98521055bacbb1dd0"
    end
  end

  def install
    bin.install "skillex"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skillex version")
  end
end
