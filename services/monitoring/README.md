<div align="center">
  <h1>Development</h1>
</div>

## Services
### Home Assistant
Infisical is an open-source platform for secrets management, internal PKI, and SSH access.

## Deploying the services

### Set the environment file
Create a copy of the example environment file and supply the necessary values.
```console
user@rpi:~/hl-rpi/services/development$ cp .env.example .env
user@rpi:~/hl-rpi/services/development$ nano .env
```
### Running the containers
Run the command below to deploy Infisical.

```console
user@rpi:~/hl-rpi/services/development$ sudo docker compose up -d
```
