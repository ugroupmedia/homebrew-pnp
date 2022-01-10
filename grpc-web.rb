class GrpcWeb < Formula
  desc "gRPC-Web provides a JavaScript library that lets browser clients access a gRPC service."
  homepage "https://github.com/grpc/grpc-web"
  url "https://github.com/grpc/grpc-web.git",
      :tag      => "1.3.0"
  head "https://github.com/grpc/grpc-web.git"

  depends_on "protobuf"
  depends_on "grpc"

  def install
    system "make plugin"
    bin.install "./javascript/net/grpc/web/protoc-gen-grpc-web"
  end
end
