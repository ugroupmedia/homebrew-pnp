cask 'grpc-java' do
  version '1.27.0'
  sha256 '2f460610fa28795b25c839cfaaa358ebd6d70aff952f9effc284d39669396c35'

  url "https://search.maven.org/remotecontent?filepath=io/grpc/protoc-gen-grpc-java/#{version}/protoc-gen-grpc-java-#{version}-osx-x86_64.exe"
  name 'grpc-java'
  homepage 'https://github.com/grpc/grpc-java'

  binary "remotecontent", target: "protoc-gen-grpc-java"

  postflight do
    set_permissions "remotecontent", '0755'
  end
end