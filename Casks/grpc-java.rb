cask 'grpc-java' do
  version '1.62.2'
  sha256 '1d54496f16b8689cbf58c4d39cfe277b5322da0a72f58665cd60e11d7de47e2b'

  url "https://search.maven.org/remotecontent?filepath=io/grpc/protoc-gen-grpc-java/#{version}/protoc-gen-grpc-java-#{version}-osx-x86_64.exe"
  name 'grpc-java'
  homepage 'https://github.com/grpc/grpc-java'

  binary "protoc-gen-grpc-java-#{version}-osx-x86_64.exe", target: "protoc-gen-grpc-java"

  postflight do
    set_permissions "remotecontent", '0755'
  end
end
