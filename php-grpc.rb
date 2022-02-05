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
    url "https://raw.githubusercontent.com/ugroupmedia/homebrew-pnp/master/patches/php-grpc-1.6.0_baeff01228e3f7fab70ea5f17d1b48b17136bfb4.patch"
    sha256 "437c8a3595060d389d8b8b574f3e1b19e30c4d959b052a44f46cda610e24e4bc"
  end

  def install
    system "go", "mod", "vendor"
    system "./build.sh", "Mac"
    bin.install "protoc-gen-php-grpc"
  end
end
