# README

## Setup docker

1. Copy config for each env and edit if necessary

   ```shell
   cp .env.example .env.development.docker.local
   ```

2. Build docker images

  ```shell
   docker-compose build
   ```

3. Run docker compose

   ```shell
   docker-compose up -d
   ```

4. List containers

  ```shell
   docker ps
   ```


5. Access conteiner app 

  ```shell
   docker exec -it APP_CONTAINER_ID bash
   ```

6. Setup database

   ```shell
   rails db:drop db:create db:migrate db:seed
   ```

7. Run

   ```shell
   http://localhost:3000/
   ```