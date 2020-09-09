cask 'grpc-java' do
  version '1.31.1'
  sha256 'fdbe491ae241e3c307f8f31831aa361eb22da6e7bbe6606811eee1f10bde2362'

  url "https://search.maven.org/remotecontent?filepath=io/grpc/protoc-gen-grpc-java/#{version}/protoc-gen-grpc-java-#{version}-osx-x86_64.exe"
  name 'grpc-java'
  homepage 'https://github.com/grpc/grpc-java'

  binary "remotecontent", target: "protoc-gen-grpc-java"

  postflight do
    set_permissions "remotecontent", '0755'
  end
end
