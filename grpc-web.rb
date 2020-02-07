cask 'grpc-web' do
  version '1.0.7'
  sha256 'b6d399af774c567332df99746269876b13defefbeba6e0cc62ff9dfc524166c8'

  url "https://github.com/grpc/grpc-web/releases/download/#{version}/protoc-gen-grpc-web-#{version}-darwin-x86_64"
  name 'gRPC-Web'
  homepage 'https://github.com/grpc/grpc-web'

  installer script: {
                      executable:   "/bin/chmod",
                      args:         ['a+x', '/usr/local/bin/protoc-gen-grpc-web'],
                      print_stderr: true
                    }
end