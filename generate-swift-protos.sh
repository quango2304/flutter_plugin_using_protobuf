rm -r ./ios/Classes/protos
mkdir -p ./ios/Classes/protos
protoc --swift_opt=Visibility=Public --proto_path=./protos --swift_out=./ios/Classes/protos  ./protos/**/*.proto ./protos/*.proto ./protos/***/**/*.proto;
