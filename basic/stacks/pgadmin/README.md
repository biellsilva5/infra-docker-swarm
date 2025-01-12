# Stack do pgAdmin

Esta stack configura um serviço pgAdmin utilizando Docker Swarm.

## Pré-requisitos

- Docker
- Docker Swarm

## Dependências

Esta stack depende das seguintes redes, que são criadas por outras stacks:

- `traefik_public`
- `postgres01_network`

### 1. Criar o volume `pgadmin_data`

Antes de subir essa stack do pgAdmin, você precisa garantir que o volume especificado no arquivo `pgadmin-stack.yml` já exista no Docker. Aqui está o comando para criar o volume:

```sh
docker volume create pgadmin_data
```

### 2. Subir a stack do pgAdmin
Depois de garantir que o volume e as redes existem, você pode subir a stack com o comando:

```sh
docker stack deploy -c stacks/pgadmin/pgadmin-stack.yml pgadmin
```