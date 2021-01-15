class PhpGrpc < Formula
  desc "Fast and furious GRPC server for PHP applications"
  homepage "https://github.com/spiral/php-grpc"
  url "https://github.com/spiral/php-grpc.git",
      :tag      => "v1.4.2"
  head "https://github.com/protocolbuffers/protobuf.git"

  depends_on "go"
  depends_on "protobuf"
  depends_on "grpc"

  patch do
    url "https://raw.githubusercontent.com/ugroupmedia/homebrew-pnp/master/patches/php-grpc-1.4.2_dab727e8a5fe96a46378a0f459ce4d7893ab8aae.patch"
    sha256 "c1b7da64d90f0533967b7126ba9bd2a126d8b65fa8d3a5f0a8fb4ca8f7667f0e"
  end

  def install
    system "./build.sh", "Mac"
    bin.install "protoc-gen-php-grpc"
  end
end
