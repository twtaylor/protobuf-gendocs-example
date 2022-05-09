#!/bin/bash

# run before
# docker pull pseudomuto/protoc-gen-doc

# cp ~/m10/sdk/protobuf/directory/api.proto ./protos

docker run --rm -v $(pwd)/out:/out -v $(pwd)/protos:/protos pseudomuto/protoc-gen-doc --doc_opt=markdown,docs.md api.proto
