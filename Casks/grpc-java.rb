cask 'grpc-java' do
  version '1.39.0'
  sha256 '2aa5e940922d2acd86601f80b1d8c23fec71c92b6f519b6f0f5800d8e3a62062'

  url "https://search.maven.org/remotecontent?filepath=io/grpc/protoc-gen-grpc-java/#{version}/protoc-gen-grpc-java-#{version}-osx-x86_64.exe"
  name 'grpc-java'
  homepage 'https://github.com/grpc/grpc-java'

  binary "protoc-gen-grpc-java-#{version}-osx-x86_64.exe", target: "protoc-gen-grpc-java"

  postflight do
    set_permissions "remotecontent", '0755'
  end
end
