class Unrpyc < Formula
  desc "Ren'py script decompiler"
  homepage "https://github.com/CensoredUsername/unrpyc"

  url "https://github.com/CensoredUsername/unrpyc/archive/refs/tags/v1.1.8.tar.gz"
  sha256 "ab2e2fb2a38ee5ad465dd7a7f7dd749cef52a3a24ee5a8b4a27c54754921bb4a"

  head "https://github.com/CensoredUsername/unrpyc.git"

  depends_on "python@2.7"

  def install
    prefix.install "unrpyc.py"
    prefix.install "deobfuscate.py"
    prefix.install "decompiler"

    bin.install_symlink "#{prefix}/unrpyc.py" => "unrpyc"
  end
end
