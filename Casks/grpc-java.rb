cask 'grpc-java' do
  version '1.37.0'
  sha256 'e57ecb1064ac0b6f308eefdd879cb669f2e7c79d3c6241db0b6c70947be800d6'

  url "https://search.maven.org/remotecontent?filepath=io/grpc/protoc-gen-grpc-java/#{version}/protoc-gen-grpc-java-#{version}-osx-x86_64.exe"
  name 'grpc-java'
  homepage 'https://github.com/grpc/grpc-java'

  binary "protoc-gen-grpc-java-#{version}-osx-x86_64.exe", target: "protoc-gen-grpc-java"

  postflight do
    set_permissions "remotecontent", '0755'
  end
end
