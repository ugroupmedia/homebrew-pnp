cask 'grpc-web' do
  version '1.0.7'
  sha256 'b6d399af774c567332df99746269876b13defefbeba6e0cc62ff9dfc524166c8'

  url "https://github.com/grpc/grpc-web/releases/download/#{version}/protoc-gen-grpc-web-#{version}-darwin-x86_64"
  name 'gRPC-Web'
  homepage 'https://github.com/grpc/grpc-web'

  binary "protoc-gen-grpc-web-#{version}-darwin-x86_64", target: "protoc-gen-grpc-web"

  postflight do
    set_permissions "protoc-gen-grpc-web-#{version}-darwin-x86_64", '0755'
  end
end