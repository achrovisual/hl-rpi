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

#### Environment Variable Details
- **PLEX_TZ**: Set this to your local timezone (e.g., America/New_York).
- **PLEX_CLAIM_TOKEN**: A claim token used to link your Plex server to your Plex account. You can obtain this from plex.tv/claim.
- **PLEX_CONFIG_VOLUME**: The absolute path on your host machine where Plex will store its configuration and metadata.
- **PLEX_TRANSCODE_VOLUME**: The absolute path on your host machine for Plex to use for temporary transcoding files.
- **PLEX_DATA_VOLUME**: The absolute path on your host machine to the main directory of your media library (e.g., movies, TV shows).
- **QBITTORRENT_DATA_VOLUME**: The absolute path on your host machine to the directory where qBittorrent downloads files. This allows Plex to access the downloaded media directly.

### Running the containers
Run the command below to deploy Home Assistant, Homebridge, Scrypted, and go2rtc.

```console
user@rpi:~/hl-rpi/services/smart_home$ sudo docker compose up -d
```
