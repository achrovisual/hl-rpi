<div align="center">
  <h1>Storage</h1>
</div>

## Services
### Samba
A Samba server is an open-source software suite that enables file and print sharing between Windows, Linux, and Unix systems over a network.

### qBittorrent + VPN
qBittorrent is a open-source BitTorrent client that allows users to download and share files over the internet using the BitTorrent protocol. The container used also includes OpenVPN and WireGuard clients.

## Deploying the services
### Set up Samba
Create the Samba configuration file. You can copy the sample configuration and modify the respective mountpoints in the environment file.

### Set the environment file
Create a copy of the example environment file and supply the necessary values.
```console
user@rpi:~/hl-rpi/services/smart_home$ cp .env.example .env
user@rpi:~/hl-rpi/services/smart_home$ nano .env
```
### Running the containers
Run the command below to deploy Samba and qBittorrent.

```console
user@rpi:~/hl-rpi/services/storage$ sudo docker compose up -d
```
