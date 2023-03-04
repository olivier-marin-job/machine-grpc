# Générer les prototypes gRPC

## 1. Installer les outils conteneur Ubuntu

1.a. Charger et ouvrir un terminal

```bash
docker container run --name machine-grpc \
  -it ubuntu:focal /bin/bash
```

1.b. Quitter le conteneur

```bash
# exit
```

1.c. Rétablir le terminal du conteneur

```bash
docker container start -ia machine-grpc
```

