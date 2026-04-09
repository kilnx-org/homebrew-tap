class Kilnx < Formula
  desc "Declarative backend language for the htmx era"
  homepage "https://kilnx.org"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kilnx-org/kilnx/releases/download/v#{version}/kilnx_darwin_arm64.tar.gz"
      sha256 "91868e69498636ca9c52b645617a91cb45368b58c3e53b9509cfb311ab2d29de"
    end

    on_intel do
      url "https://github.com/kilnx-org/kilnx/releases/download/v#{version}/kilnx_darwin_amd64.tar.gz"
      sha256 "486c3a4e4c72d4d9a3ea3f064112bd016beaa0c3695c0a77b72aa081d5ba1a62"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kilnx-org/kilnx/releases/download/v#{version}/kilnx_linux_arm64.tar.gz"
      sha256 "126ecd275464efb0f193070c05c8a8a9879884bad481d4f701f65c51b68351c1"
    end

    on_intel do
      url "https://github.com/kilnx-org/kilnx/releases/download/v#{version}/kilnx_linux_amd64.tar.gz"
      sha256 "78e6bdb92351c4fd34c9e7fee9e97ad7a378ccb3fdb5f8def919f92f77801e3e"
    end
  end

  def install
    bin.install "kilnx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kilnx version 2>&1", 0)
  end
end
