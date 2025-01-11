# Stack do Postgres

Esta stack configura um serviço Postgres utilizando Docker Swarm.

## Pré-requisitos

- Docker
- Docker Swarm

## Configuração

### 1. Criar o volume `postgres01_data`

Antes de subir essa stack do Postgres, você precisa garantir que o volume especificado no arquivo `postgres-stack.yml` já exista no Docker. Aqui está o comando para criar o volume:

```sh
docker volume create postgres01_data
```

### 2. Criar a rede `postgres01_network`

Você também precisa garantir que a rede especificada no arquivo `postgres-stack.yml` já exista no Docker. Aqui está o comando para criar a rede:

```sh
docker network create postgres01_network
```

### 3. Subir a stack do Postgres

Depois de criar o volume e a rede, você pode subir a stack com o comando:

```sh
docker stack deploy -c stacks/postgres/postgres-stack.yml postgres
```
