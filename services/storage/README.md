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

#### Environment Variable Details
- **SAMBA_NAME**: The name of your Samba server, as it will appear on the network.
- **SAMBA_USER**: The username for accessing the shared storage.
- **SAMBA_PASS**: The password for the Samba user.
- **SAMBA_VOLUME**: The absolute path on your host machine to the directory that you wish to share via Samba.
- **QBITTORRENT_DATA_VOLUME**: The absolute path on your host machine where qBittorrent will download and store files.
- **QBITTORRENT_CONFIG_VOLUME**: The absolute path on your host machine for qBittorrent's configuration files.
- **QBITTORRENT_LAN**: The local network address range (e.g., 192.168.1.0/24) that qBittorrent should be able to communicate with.
- **QBITTORRENT_VPN_ENABLED**: Set to true to enable the VPN, or false to disable it.
- **QBITTORRENT_VPN_PROVIDER**: The name of your VPN provider (e.g., nordvpn, privateinternetaccess).
- **QBITTORRENT_VPN_CLIENT**: The VPN client type to use, either openvpn or wireguard.
- **QBITTORRENT_NAMESERVERS**: The DNS servers to be used by the container when the VPN is enabled, as a comma-separated list (e.g., 8.8.8.8,8.8.4.4).

### Running the containers
Run the command below to deploy Samba and qBittorrent.

```console
user@rpi:~/hl-rpi/services/storage$ sudo docker compose up -d
```
