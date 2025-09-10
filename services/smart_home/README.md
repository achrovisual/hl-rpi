<div align="center">
  <h1>Smart Home</h1>
</div>

## Services
### Home Assistant
Home Assistant is an open-source home software that supports a variety of IoT platforms like LG ThinQ, Tuya, and others to be managed and controlled in the service. Paired devices can also be exposed to Apple HomeKit through a bridge.

More complex automations can also be configured through Home Assistant as opposed to Apple Home.

### Scrypted
Scrypted is an open-source video integration platform that allows exposing of unsupported cameras to Apple HomeKit with support for HomeKit Secure Video (HKSV).

If you experience problems with your Scrypted configuration not persisting, verify the permissions of the mounted directories and files. The mounted volume and its contents must be owned by the user and group that Scrypted runs under, granting it the required read and write permissions.

### UpSnap
UpSnap is a simple web-based Wake on LAN (WOL) utility that allows you to wake up devices on your network.

## Deploying the services

### Set the environment file
Create a copy of the example environment file and supply the necessary values.
```console
user@rpi:~/hl-rpi/services/smart_home$ cp .env.example .env
user@rpi:~/hl-rpi/services/smart_home$ nano .env
```

#### Environment Variable Details
- **UPSNAP_URL**: The URL of your Upsnap instance, typically `http://<your-upsnap-ip>:8090`.
- **UPSNAP_USERNAME**: The username for your Upsnap instance.
- **UPSNAP_PASSWORD**: The password for your Upsnap instance.
- **UPSNAP_DEVICE_ID**: The unique ID of the device you want to wake up with Upsnap.
- **SCRYPTED_TOKEN**: The authorization token required for Scrypted webhooks.
- **SCRYPTED_VOLUME**: The absolute path on your host machine where Scrypted will store its data.
- **HOME_ASSISTANT_VOLUME**: The absolute path on your host machine for Home Assistant to store its configuration and data.
- **OTLP_ENDPOINT**: The OpenTelemetry Protocol (OTLP) endpoint for sending telemetry data.

### Running the containers
Run the command below to deploy Home Assistant, Homebridge, Scrypted, and go2rtc.

```console
user@rpi:~/hl-rpi/services/smart_home$ sudo docker compose up -d
```
