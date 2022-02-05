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
    url "https://raw.githubusercontent.com/ugroupmedia/homebrew-pnp/master/patches/php-grpc-1.6.0_69cfc4c11c638acbfdb97771cf7d39c251bc81aa.patch"
    sha256 "cd8c579209497219c9cf3d18c2467bc39d642f2c0b6761b3395d2cabeef9c256"
  end

  def install
    system "go", "mod", "vendor"
    system "./build.sh", "Mac"
    bin.install "protoc-gen-php-grpc"
  end
end
