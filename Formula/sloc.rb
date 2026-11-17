class Sloc < Formula
  desc "Count code, comment and blank lines across 78 languages"
  homepage "https://github.com/coldhighsun/Sloc"
  version "4.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/coldhighsun/Sloc/releases/download/v#{version}/sloc-#{version}-osx-arm64.zip"
      sha256 "8263fc7426bcda4cf79a82d38c3b453ad698dc4ecd5def069c49c5f38f25eba1"
    end
    on_intel do
      url "https://github.com/coldhighsun/Sloc/releases/download/v#{version}/sloc-#{version}-osx-x64.zip"
      sha256 "01dca0f672f9bdc06f22b52760a649742cd981d0b76f939d54d674a1da073ab4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coldhighsun/Sloc/releases/download/v#{version}/sloc-#{version}-linux-arm64.zip"
      sha256 "59095ac6878ac11dec5258e0a155e6f5c787697fd8c071f63a669d5946c11c35"
    end
    on_intel do
      url "https://github.com/coldhighsun/Sloc/releases/download/v#{version}/sloc-#{version}-linux-x64.zip"
      sha256 "209feb37131186fec87de3343b94720d941fff7214500fc7bb1cd48cee088ca2"
    end
  end

  def install
    bin.install "sloc"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sloc --version")
  end
end
