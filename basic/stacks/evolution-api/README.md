# Stack do Evolution API

Esta stack configura um serviço Evolution API utilizando Docker Swarm.

## Pré-requisitos

- Docker
- Docker Swarm

## Dependências

Esta stack depende das seguintes redes e volumes, que são criados por outras stacks:

- `traefik_public`
- `postgres01_network`
- `redis_network`

### 1. Criar o volume `evolution_instances`
Antes de subir essa stack do Evolution API, você precisa garantir que o volume já exista no Docker. Aqui está o comando para criar o volume:

```sh
docker volume create evolution_instances
```

### 2. Subir a stack do Evolution API

Depois de garantir que as redes e volumes existem, você pode subir a stack com o comando:

```sh
docker stack deploy -c stacks/evolution-api/evolution-api-stack.yml evolution
```