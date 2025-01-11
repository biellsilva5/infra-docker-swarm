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