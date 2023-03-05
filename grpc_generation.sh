#! /bin/bash

proto_filename=$1

protoc -I="/tmp/proto/" --plugin=protoc-gen-grpc-java=$HOME/.local/protoc-gen-grpc-java/protoc-gen-grpc-java-1.40.1-linux-x86_64.exe \
  --grpc-java_out="/tmp/java" \
  --java_out="/tmp/java" $proto_filename;
