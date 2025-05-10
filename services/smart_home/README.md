<div align="center">
  <h1>Smart Home</h1>
</div>

## Services
### Home Assistant
Home Assistant is an open-source home software that supports a variety of IoT platforms like LG ThinQ, Tuya, and others to be managed and controlled in the service. Paired devices can also be exposed to Apple HomeKit through a bridge.

More complex automations can also be configured through Home Assistant as opposed to Apple Home. 

### Homebridge
Homebridge is an open-source software that acts as a bridge between Apple HomeKit and smart home devices that are not natively supported. This is a secondary service that will be used for its plugins.

### Scrypted
Scrypted is an open-source video integration platform that allows exposing of unsupported cameras to Apple HomeKit with support for HomeKit Secure Video (HKSV).

If you experience problems with your Scrypted configuration not persisting, verify the permissions of the mounted directories and files. The mounted volume and its contents must be owned by the user and group that Scrypted runs under, granting it the required read and write permissions.

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
