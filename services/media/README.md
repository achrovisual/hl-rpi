<div align="center">
  <h1>Media</h1>
</div>

## Services
### Plex
Plex is a powerful media server that organizes, plays, and streams your personal media library across all your devices. It allows you to manage your video, music, and photo collections and access them from anywhere.

## Deploying the services

### Set the environment file
Create a copy of the example environment file and supply the necessary values.
```console
user@rpi:~/hl-rpi/services/smart_home$ cp .env.example .env
user@rpi:~/hl-rpi/services/smart_home$ nano .env
```
### Running the containers
Run the command below to deploy Home Assistant, Homebridge, Scrypted, and go2rtc.

```console
user@rpi:~/hl-rpi/services/smart_home$ sudo docker compose up -d
```
