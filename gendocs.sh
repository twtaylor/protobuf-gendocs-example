#!/bin/bash

cp -r ~/m10/mono/shared/protobuf/ ./protos/

rm -rf out/

docker run --rm -v $(pwd)/out:/out -v $(pwd)/protos:/protos pseudomuto/protoc-gen-doc --doc_opt=markdown,docs.md sdk/api.proto
