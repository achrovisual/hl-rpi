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

#### Environment Variable Details
- **NGINX_PROXY_MANAGER_VOLUME**: The absolute path on your host machine for Nginx Proxy Manager to store its configuration and SSL certificates.
- **NGINX_PROXY_MANAGER_EMAIL**: The initial email address for the admin user.
- **NGINX_PROXY_MANAGER_PASSWORD**: The initial password for the admin user.

### Running the containers
Run the command below to deploy Nginx Proxy Manager.

```console
user@rpi:~/hl-rpi/services/utility$ sudo docker compose up -d
```
