class PhpGrpc < Formula
  desc "Fast and furious GRPC server for PHP applications"
  homepage "https://github.com/spiral/php-grpc"
  url "https://github.com/spiral/php-grpc.git",
      :tag      => "v1.6.0"
  head "https://github.com/protocolbuffers/protobuf.git"

  depends_on "go"
  depends_on "protobuf"
  depends_on "grpc"

  patch do
    url "https://raw.githubusercontent.com/ugroupmedia/homebrew-pnp/master/patches/php-grpc-1.6.0_f7d9b477a6ae743d6fdc18dbfde0a4da0b3e6350.patch"
    sha256 "d68cf637c544b37b51a0422e77372d422796d3c69cd1d27f919dd1b1b3c2174f"
  end

  def install
    system "go", "mod", "tidy"
    system "go", "mod", "vendor"
    system "./build.sh", "Mac"
    bin.install "protoc-gen-php-grpc"
  end
end
