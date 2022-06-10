cask 'grpc-java' do
  version '1.47.0'
  sha256 'bfc05f91b8502888da995739290ce82f5269290f806f9c58a5bc986f814d9aa0'

  url "https://search.maven.org/remotecontent?filepath=io/grpc/protoc-gen-grpc-java/#{version}/protoc-gen-grpc-java-#{version}-osx-x86_64.exe"
  name 'grpc-java'
  homepage 'https://github.com/grpc/grpc-java'

  binary "protoc-gen-grpc-java-#{version}-osx-x86_64.exe", target: "protoc-gen-grpc-java"

  postflight do
    set_permissions "remotecontent", '0755'
  end
end
