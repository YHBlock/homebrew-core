class Yhformula < Formula
  desc "Test custom formula"
  homepage "https://github.com/YHBlock/YHFormula"
  url "https://github.com/YHBlock/YHFormula/archive/v1.0.2.tar.gz"
  sha256 "569853285056eb9ea71e2435fab40f31affd78f2dc71533e49bdb33937711b3d"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "false"
  end
end
