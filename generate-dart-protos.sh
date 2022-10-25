rm -r ./lib/protos
mkdir -p ./lib/protos/UIFramework
protoc --proto_path=./protos --dart_out=./lib/protos ./protos/**/*.proto ./protos/*.proto ./protos/***/**/*.proto;