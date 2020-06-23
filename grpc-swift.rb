class GrpcSwift < Formula
  desc "The Swift language implementation of gRPC"
  homepage "https://github.com/grpc/grpc-swift"
  url "https://github.com/grpc/grpc-swift/archive/1.0.0-alpha.14.tar.gz"
  sha256 "d2beb362e4748c4e724b73499ea3ff743a61dbf67ead82558568a75776e4a6c7"
  # head "https://github.com/grpc/grpc-swift.git", :revision => "5f40a43567495b534dd445e6dd60181dff5a28d6"

  depends_on :xcode => ["10.0", :build]
  depends_on "protobuf"
  depends_on "swift-protobuf"

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release", "--product", "protoc-gen-grpc-swift"
    bin.install ".build/release/protoc-gen-grpc-swift"
  end

  test do
    (testpath/"echo.proto").write <<~EOS
      syntax = "proto3";
      service Echo {
        rpc Get(EchoRequest) returns (EchoResponse) {}
        rpc Expand(EchoRequest) returns (stream EchoResponse) {}
        rpc Collect(stream EchoRequest) returns (EchoResponse) {}
        rpc Update(stream EchoRequest) returns (stream EchoResponse) {}
      }
      message EchoRequest {
        string text = 1;
      }
      message EchoResponse {
        string text = 1;
      }
    EOS
    system Formula["protobuf"].opt_bin/"protoc", "echo.proto", "--grpc-swift_out=."
    assert_predicate testpath/"echo.grpc.swift", :exist?
  end
end
