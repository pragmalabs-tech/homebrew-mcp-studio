class McpStudio < Formula
  desc "A local studio to debug MCP Servers and MCP Applications"
  homepage "https://github.com/pragmalabs-tech/mcp-studio"
  version "0.3.40"
  license "Unlicense"

  on_macos do
    on_arm do
      url "https://dl.pragmalabs.tech/mcp-studio/v#{version}/mcp-studio-aarch64-apple-darwin.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://dl.pragmalabs.tech/mcp-studio/v#{version}/mcp-studio-x86_64-apple-darwin.tar.gz"
      sha256 "e7eec4cb1f674d9363b35e47f581ba4eff9e6970a7fc4a12b58bf1072428295e"
    end
  end

  on_linux do
    on_arm do
      url "https://dl.pragmalabs.tech/mcp-studio/v#{version}/mcp-studio-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c423c55b4ad1b152c209eb90ff86575310c0de89cab00959a182b66e0bb9f710"
    end
    on_intel do
      url "https://dl.pragmalabs.tech/mcp-studio/v#{version}/mcp-studio-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f8f24ee128c4cd8fda49137f7ac1ff9abcb2ddacd99aada23d1b53c17e6e53d4"
    end
  end

  def install
    bin.install "mcp-studio"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-studio --version")
  end
end
