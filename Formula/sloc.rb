class Sloc < Formula
  desc "Count code, comment and blank lines across 66 languages"
  homepage "https://github.com/coldhighsun/Sloc"
  version "4.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/coldhighsun/Sloc/releases/download/v#{version}/sloc-#{version}-osx-arm64.zip"
      sha256 "24871fdf30e41721ca2333eb2a8de1a464ba83de0a40e963d18a61e1159af379"
    end
    on_intel do
      url "https://github.com/coldhighsun/Sloc/releases/download/v#{version}/sloc-#{version}-osx-x64.zip"
      sha256 "a09521aeb5df670786144b275b40f65dd118ca798b08b0a93d1e0c033cd91df5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coldhighsun/Sloc/releases/download/v#{version}/sloc-#{version}-linux-arm64.zip"
      sha256 "e952ed18b27ffec297a1cc7f970926833e5cf3f3a710f39dbd1b04782f7ee447"
    end
    on_intel do
      url "https://github.com/coldhighsun/Sloc/releases/download/v#{version}/sloc-#{version}-linux-x64.zip"
      sha256 "dedd49b5582ad3e9f479a6c6aba5b761f238185507c69a62e942c3200c8b058d"
    end
  end

  def install
    bin.install "sloc"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sloc --version")
  end
end
