cask 'grpc-java' do
  version '1.32.1'
  sha256 '86fb2497f7522c2ee41ccfd77f67ef8c2a65be54ad2550493ca15d1ca3b73b17'

  url "https://search.maven.org/remotecontent?filepath=io/grpc/protoc-gen-grpc-java/#{version}/protoc-gen-grpc-java-#{version}-osx-x86_64.exe"
  name 'grpc-java'
  homepage 'https://github.com/grpc/grpc-java'

  binary "remotecontent", target: "protoc-gen-grpc-java"

  postflight do
    set_permissions "remotecontent", '0755'
  end
end
