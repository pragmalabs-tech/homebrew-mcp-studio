class McpStudio < Formula
  desc "A local studio to debug MCP Servers and MCP Applications"
  homepage "https://github.com/pragmalabs-tech/mcp-studio"
  version "0.3.41"
  license "Unlicense"

  on_macos do
    on_arm do
      url "https://dl.pragmalabs.tech/mcp-studio/v#{version}/mcp-studio-aarch64-apple-darwin.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://dl.pragmalabs.tech/mcp-studio/v#{version}/mcp-studio-x86_64-apple-darwin.tar.gz"
      sha256 "9885f67b81f721c9302765b64e78c0f213c87b5a9a37cb0d7d7224ab00fb7502"
    end
  end

  on_linux do
    on_arm do
      url "https://dl.pragmalabs.tech/mcp-studio/v#{version}/mcp-studio-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9a6e6e5079ce9a188008a0116c472f25dc278bddbd7226af02eda41420851fd8"
    end
    on_intel do
      url "https://dl.pragmalabs.tech/mcp-studio/v#{version}/mcp-studio-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2f699e8be1325097156751b2af10c2e98fb278f935506550c41c8ca5d12357f3"
    end
  end

  def install
    bin.install "mcp-studio"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-studio --version")
  end
end
