class Unrpyc < Formula
  desc "Ren'py script decompiler"
  homepage "https://github.com/CensoredUsername/unrpyc"

  url "https://github.com/CensoredUsername/unrpyc/archive/refs/tags/v1.1.6.tar.gz"
  sha256 "d2285cfb5d4d5e5294b8731b1b2fe5cae1f70f68b7573f16f2561b6357e61a15"

  head "https://github.com/CensoredUsername/unrpyc.git"

  def install
    prefix.install "unrpyc.py"
    prefix.install "deobfuscate.py"
    prefix.install "decompiler"

    bin.install_symlink "#{prefix}/unrpyc.py" => "unrpyc"
  end
end
