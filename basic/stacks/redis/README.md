# Stack do Redis

Esta stack configura um serviço Redis utilizando Docker Swarm.

## Pré-requisitos

- Docker
- Docker Swarm

## Configuração

### 1. Criar o volume `redis_data`

Antes de subir essa stack do Redis, você precisa garantir que o volume especificado no arquivo `redis-stack.yml` já exista no Docker. Aqui está o comando para criar o volume:

```sh
docker volume create redis_data
```

### 2. Criar a rede `redis_network`

Você também precisa garantir que a rede especificada no arquivo `redis-stack.yml` já exista no Docker. Aqui está o comando para criar a rede:

```sh
docker network create redis_network
```

### 3. Subir a stack do Redis

Depois de criar o volume e a rede, você pode subir a stack com o comando:

```sh
docker stack deploy -c stacks/redis/redis-stack.yml redis
```