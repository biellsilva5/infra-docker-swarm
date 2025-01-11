# Projeto de Docker com Portainer e Traefik

Este projeto configura um ambiente Docker com Portainer e Traefik utilizando Docker Swarm.

## Pré-requisitos

- Docker
- Docker Swarm

## Configuração

### 1. Configurar o Docker

Execute o script `setup.sh` para instalar o Docker e inicializar o Docker Swarm:

```sh
chmod +x setup.sh
```

### 2. Configurar o Portainer
Suba a stack do Portainer com o comando:

```sh
docker stack deploy -c stacks/portainer/portainer-agent-stack.yml portainer
```

### 3. Configurar o Traefik
Antes de subir essa stack do Traefik, você precisa garantir que os volumes e redes especificados no arquivo `traefik-stack.yml` já existam no Docker. Aqui estão os comandos para criar o volume e a rede:

1. **Criar o volume `traefik_certificates`:**
   ```sh
   docker volume create traefik_certificates
   ```

2. **Criar a rede `traefik_public`:**
    ```sh
   docker network create traefik_public
   ```


3. Depois de criar o volume e a rede, você pode subir a stack com o Portainer:

    ```sh
    traefik-stack: /stacks/traefik/traefik-stock.yml
    ```