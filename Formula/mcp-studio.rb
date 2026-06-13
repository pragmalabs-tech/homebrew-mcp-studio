class McpStudio < Formula
  desc "A local studio to debug MCP Servers and MCP Applications"
  homepage "https://github.com/pragmalabs-tech/mcp-studio"
  version "0.3.38"
  license "Unlicense"

  on_macos do
    on_arm do
      url "https://dl.pragmalabs.tech/mcp-studio/v#{version}/mcp-studio-aarch64-apple-darwin.tar.gz"
      sha256 "FILL_IN"
    end
    on_intel do
      url "https://dl.pragmalabs.tech/mcp-studio/v#{version}/mcp-studio-x86_64-apple-darwin.tar.gz"
      sha256 "FILL_IN"
    end
  end

  on_linux do
    on_arm do
      url "https://dl.pragmalabs.tech/mcp-studio/v#{version}/mcp-studio-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "FILL_IN"
    end
    on_intel do
      url "https://dl.pragmalabs.tech/mcp-studio/v#{version}/mcp-studio-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "FILL_IN"
    end
  end

  def install
    bin.install "mcp-studio"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-studio --version")
  end
end
