FROM ubuntu:focal

WORKDIR /bin

RUN apt update \
  && apt install -y wget protobuf-compiler
  && wget https://repo1.maven.org/maven2/io/grpc/protoc-gen-grpc-java/1.40.1/protoc-gen-grpc-java-1.40.1-linux-x86_64.exe
  && wget https://github.com/grpc/grpc-web/releases/download/1.4.2/protoc-gen-grpc-web-1.4.2-darwin-x86_64