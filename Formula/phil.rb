class Phil < Formula
  desc "Pipe anything through AI — local LLM CLI with packs, agent mode, and MCP"
  homepage "https://github.com/alvaro-atlasai/phil"
  url "https://github.com/alvaro-atlasai/phil/releases/download/v0.1.0/phil-darwin-arm64.tar.gz"
  sha256 "placeholder"
  license "MIT"

  def install
    bin.install "phil"
    bin.install "any2mcp"
  end

  test do
    assert_match "phil", shell_output("#{bin}/phil --version")
  end
end
