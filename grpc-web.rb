class GrpcWeb < Formula
  desc "gRPC-Web provides a JavaScript library that lets browser clients access a gRPC service."
  homepage "https://github.com/grpc/grpc-web"
  url "https://github.com/grpc/grpc-web.git",
      :tag      => "1.4.2"
  head "https://github.com/grpc/grpc-web.git"

  depends_on "protobuf"
  depends_on "grpc"

  def install
    system "sed -i '' 's/c++11/c++14/g' javascript/net/grpc/web/generator/Makefile"
    system "make plugin"
    bin.install "./javascript/net/grpc/web/generator/protoc-gen-grpc-web"
  end
end
