# Générer les prototypes gRPC

## 1. Installer les outils depuis un conteneur Ubuntu

1.a. Charger et ouvrir un terminal

```shell
$ docker container run --name machine-grpc \
  -it ubuntu:focal /bin/bash
```

1.b. Installer [protoc](https://github.com/protocolbuffers/protobuf/releases/tag/v3.9.1)

```shell
$ apt update
$ apt install -y wget
$ wget https://github.com/protocolbuffers/protobuf/releases/download/v3.9.1/protoc-3.9.1-linux-x86_64.zip
$ apt install -y unzip
$ mkdir -p $HOME/.local/protoc
$ unzip protoc-3.9.1-linux-x86_64.zip -d $HOME/.local/protoc/
$ export PATH="$PATH:$HOME/.local/protoc/bin"
$ protoc --version
```

1.c. Installer [protoc-gen-grpc-java](https://repo1.maven.org/maven2/io/grpc/protoc-gen-grpc-java/1.40.1/protoc-gen-grpc-java-1.40.1-linux-x86_64.exe)

```shell
$ mkdir $HOME/.local/protoc-gen-grpc-java
$ cd $HOME/.local/protoc-gen-grpc-java
$ wget https://repo1.maven.org/maven2/io/grpc/protoc-gen-grpc-java/1.40.1/protoc-gen-grpc-java-1.40.1-linux-x86_64.exe
$ chmod +x protoc-gen-grpc-java-1.40.1-linux-x86_64.exe
```

1.d. Quitter le conteneur

```shell
# exit
```

1.e. Rétablir le terminal du conteneur

```shell
$ docker container start -ia machine-grpc
```

