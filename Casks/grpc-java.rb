cask 'grpc-java' do
  version '1.43.2'
  sha256 '22878a141c2c8413aa76e498284cbe31ab7d65dde1c6a1630b36d07079444f19'

  url "https://search.maven.org/remotecontent?filepath=io/grpc/protoc-gen-grpc-java/#{version}/protoc-gen-grpc-java-#{version}-osx-x86_64.exe"
  name 'grpc-java'
  homepage 'https://github.com/grpc/grpc-java'

  binary "protoc-gen-grpc-java-#{version}-osx-x86_64.exe", target: "protoc-gen-grpc-java"

  postflight do
    set_permissions "remotecontent", '0755'
  end
end
