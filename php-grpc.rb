class PhpGrpc < Formula
  desc "Fast and furious GRPC server for PHP applications"
  homepage "https://github.com/spiral/php-grpc"
  url "https://github.com/spiral/php-grpc.git",
      :tag      => "v1.2.0"
  head "https://github.com/protocolbuffers/protobuf.git"

  depends_on "go"
  depends_on "protobuf"
  depends_on "grpc"

  patch do
    url "https://github.com/supersmile2009/php-grpc/commit/dab727e8a5fe96a46378a0f459ce4d7893ab8aae.patch"
    sha256 "7b61d18a858a8e90a94ace0244861d511d7240c29d766c3f0db40e2c8a16e8f6"
  end

  def install
    system "./build.sh", "Mac"
    bin.install "protoc-gen-php-grpc"
  end
end
