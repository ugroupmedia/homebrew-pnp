class PhpGrpc < Formula
  desc "Fast and furious GRPC server for PHP applications"
  homepage "https://github.com/spiral/php-grpc"
  url "https://github.com/spiral/php-grpc.git",
      :tag      => "v1.2.0"
  head "https://github.com/protocolbuffers/protobuf.git"

  depends_on "go"
  depends_on "protobuf"
  depends_on "grpc"

  def install
    system "go", "get"
    system "./build.sh", "Mac"
    bin.install "cmd/protoc-gen-php-grpc/protoc-gen-php-grpc"
  end
end