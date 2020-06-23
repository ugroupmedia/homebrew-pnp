cask 'grpc-java' do
  version '1.30.1'
  sha256 '5d3be86091a177fab24a05d21e2a28ec689faf67217d6aa5c3087df666f110e0'

  url "https://search.maven.org/remotecontent?filepath=io/grpc/protoc-gen-grpc-java/#{version}/protoc-gen-grpc-java-#{version}-osx-x86_64.exe"
  name 'grpc-java'
  homepage 'https://github.com/grpc/grpc-java'

  binary "remotecontent", target: "protoc-gen-grpc-java"

  postflight do
    set_permissions "remotecontent", '0755'
  end
end