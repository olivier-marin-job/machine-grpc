# Générer les prototypes gRPC

## 1. Installer les outils depuis un conteneur Ubuntu

1.a. Charger et ouvrir un terminal

```bash
$ docker container run --name machine-grpc \
  -it ubuntu:focal /bin/bash
```

1.b. Installer [protoc](https://github.com/protocolbuffers/protobuf/releases/tag/v3.9.1)

```bash
$ apt update
$ wget https://github.com/protocolbuffers/protobuf/releases/download/v3.9.1/protoc-3.9.1-linux-x86_64.zip
```

1.c. Quitter le conteneur

```bash
# exit
```

1.d. Rétablir le terminal du conteneur

```bash
$ docker container start -ia machine-grpc
```

