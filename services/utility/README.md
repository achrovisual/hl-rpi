<div align="center">
  <h1>Utility</h1>
</div>

## Services
### Nginx Proxy Manager
Nginx Proxy Manager is a user-friendly tool that simplifies the management of Nginx reverse proxy configurations, particularly for exposing web services running on private networks.

## Deploying the services
### Set the environment file
Create a copy of the example environment file and supply the necessary values.
```console
user@rpi:~/hl-rpi/services/utility$ cp .env.example .env
user@rpi:~/hl-rpi/services/utility$ nano .env
```
### Running the containers
Run the command below to deploy Nginx Proxy Manager.

```console
user@rpi:~/hl-rpi/services/utility$ sudo docker compose up -d
```
