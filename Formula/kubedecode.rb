class Kubedecode < Formula
  desc "Decode all parts of a kubernetes secret, no more copypasting!"
  homepage "https://github.com/mveritym/kubedecode"
  url "https://github.com/mveritym/kubedecode/archive/v1.3.tar.gz"
  sha256 "bf6c18124c6e018d291bb8f999c39ec7655904c9909841f2eeffcc2b61d2ddaf"

  depends_on "jq" => :run

  def install
    system "make", "install", "PREFIX=#{prefix}"
    ln_sf source, "#{prefix}/kubedecode"
  end
end
