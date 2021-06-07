class Fisherman < Formula
  desc "Fish plugin manager"
  homepage "https://github.com/jorgebucaran/fisher"

  url "https://github.com/jorgebucaran/fisher/archive/refs/tags/4.3.0.tar.gz"
  sha256 "6235cfc636c8d52f11feca9f4931656a9c6602659b06df8dba5a3606d37f8c28"

  head "https://github.com/fisherman/fisherman.git"

  depends_on "fish"

  def install
    fish_function.install "fisher.fish" => "fisher.fish"

    ohai "You may need to restart any open terminal sessions for changes to take effect."
  end
end
