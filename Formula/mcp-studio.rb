class McpStudio < Formula
  desc "A local studio to debug MCP Servers and MCP Applications"
  homepage "https://github.com/pragmalabs-tech/mcp-studio"
  version "0.3.38"
  license "Unlicense"

  on_macos do
    on_arm do
      url "https://dl.pragmalabs.tech/mcp-studio/v#{version}/mcp-studio-aarch64-apple-darwin.tar.gz"
      sha256 "6b19cfa8c09a0a587e51f543b21ddaed000f62f35ecbeef7327ebd4ad3e8ddff"
    end
    on_intel do
      url "https://dl.pragmalabs.tech/mcp-studio/v#{version}/mcp-studio-x86_64-apple-darwin.tar.gz"
      sha256 "b54884316b20adc29ecb97137b3b91a759a8cba22f9ad20107185c8999dd3e85"
    end
  end

  on_linux do
    on_arm do
      url "https://dl.pragmalabs.tech/mcp-studio/v#{version}/mcp-studio-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3a39f34ea81954be6ceee8cb6c22e820e0ca0d6dea671f0120bcef64e55d01f9"
    end
    on_intel do
      url "https://dl.pragmalabs.tech/mcp-studio/v#{version}/mcp-studio-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "790c6dbe4b69c2001d26517815fb259785cbcc379424ce8a0441be55a1fa1dab"
    end
  end

  def install
    bin.install "mcp-studio"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-studio --version")
  end
end
