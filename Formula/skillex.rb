class Skillex < Formula
  desc "Skill management for AI agents"
  homepage "https://github.com/atheory-ai/skillex"
  version "0.9.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/atheory-ai/skillex/releases/download/v0.9.0/skillex_0.9.0_darwin_amd64.tar.gz"
      sha256 "9be346eed063c8da5641261fbe478147c4962b21fb4af029f28b7d828556787a"
    end
    on_arm do
      url "https://github.com/atheory-ai/skillex/releases/download/v0.9.0/skillex_0.9.0_darwin_arm64.tar.gz"
      sha256 "d47bebb7b556bd1f346ff8a230efbf236e942715c9d6ccd3b977153b58637ccb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/atheory-ai/skillex/releases/download/v0.9.0/skillex_0.9.0_linux_amd64.tar.gz"
      sha256 "35b1df5f9c29cac96371d188a2029b81517b9ec8588b1d567f8616715fd89692"
    end
    on_arm do
      url "https://github.com/atheory-ai/skillex/releases/download/v0.9.0/skillex_0.9.0_linux_arm64.tar.gz"
      sha256 "713e860aeb404860488c2fb8f8b26a5040837ab11e14e65a262e5e6cd74b817e"
    end
  end

  def install
    bin.install "skillex"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skillex version")
  end
end
