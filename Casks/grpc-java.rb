cask 'grpc-java' do
  version '1.33.1'
  sha256 'ac3c8b12370329d897a896dd99e0a81f8463b5cd5b7d2014c78085bf5841f20a'

  url "https://search.maven.org/remotecontent?filepath=io/grpc/protoc-gen-grpc-java/#{version}/protoc-gen-grpc-java-#{version}-osx-x86_64.exe"
  name 'grpc-java'
  homepage 'https://github.com/grpc/grpc-java'

  binary "remotecontent", target: "protoc-gen-grpc-java"

  postflight do
    set_permissions "remotecontent", '0755'
  end
end
