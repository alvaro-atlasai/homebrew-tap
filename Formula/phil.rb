class Phil < Formula
  desc "Pipe anything through AI — local LLM CLI with packs, agent mode, and MCP"
  homepage "https://github.com/alvaro-atlasai/phil"
  url "https://github.com/alvaro-atlasai/phil/releases/download/v0.1.0/phil-darwin-arm64.tar.gz"
  sha256 "b20cc98ed252b4efdfca581a6c98fb1c98d29d22c7a2544b0dbe84b5f1a890fe"
  license "MIT"

  def install
    bin.install "phil"
    bin.install "any2mcp"
  end

  test do
    assert_match "phil", shell_output("#{bin}/phil --version")
  end
end
