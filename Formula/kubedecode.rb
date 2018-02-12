class Kubedecode < Formula
  desc "Decode all parts of a kubernetes secret, no more copypasting!"
  homepage "https://github.com/mveritym/kubedecode"
  url "https://github.com/mveritym/kubedecode/archive/v1.4.tar.gz"
  sha256 "22a23a6dfa8a1d4abba677d09ba3789ab54f658d934d470172a7d4affc083266"

  depends_on "jq" => :run

  def install
    system "make", "install", "PREFIX=#{prefix}"
    bin.install_symlink "#{prefix}/kubedecode"
  end
end
