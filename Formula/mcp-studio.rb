class McpStudio < Formula
  desc "A local studio to debug MCP Servers and MCP Applications"
  homepage "https://github.com/pragmalabs-tech/mcp-studio"
  version "0.3.39"
  license "Unlicense"

  on_macos do
    on_arm do
      url "https://dl.pragmalabs.tech/mcp-studio/v#{version}/mcp-studio-aarch64-apple-darwin.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://dl.pragmalabs.tech/mcp-studio/v#{version}/mcp-studio-x86_64-apple-darwin.tar.gz"
      sha256 "10caab7976e13e8669d38c8c08eff82c575246addcf0a4fcadb5b67c2b7b8e2f"
    end
  end

  on_linux do
    on_arm do
      url "https://dl.pragmalabs.tech/mcp-studio/v#{version}/mcp-studio-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1bfa437d16b235fb0139fe92985791b7330b165f6dff3375efd34ed779fed247"
    end
    on_intel do
      url "https://dl.pragmalabs.tech/mcp-studio/v#{version}/mcp-studio-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "099dbc063df7d7e9d76e6c5b3accee8729337d4d9c991672e05b41f92ff5d6be"
    end
  end

  def install
    bin.install "mcp-studio"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-studio --version")
  end
end
