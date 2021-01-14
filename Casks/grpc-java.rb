cask 'grpc-java' do
  version '1.35.0'
  sha256 'bda36b943a9f427f4c1e085d1b22f6e3c23d6014ae7f91c57be128ea698c042d'

  url "https://search.maven.org/remotecontent?filepath=io/grpc/protoc-gen-grpc-java/#{version}/protoc-gen-grpc-java-#{version}-osx-x86_64.exe"
  name 'grpc-java'
  homepage 'https://github.com/grpc/grpc-java'

  binary "remotecontent", target: "protoc-gen-grpc-java"

  postflight do
    set_permissions "remotecontent", '0755'
  end
end
