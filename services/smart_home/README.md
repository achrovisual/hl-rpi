<div align="center">
  <h1>Smart Home</h1>
</div>

## Services
### Home Assistant
Home Assistant is an open-source home software that supports a variety of IoT platforms like LG ThinQ, Tuya, and others to be managed and controlled in the service. Paired devices can also be exposed to Apple HomeKit through a bridge.

More complex automations can also be configured through Home Assistant as opposed to Apple Home. 

### Homebridge
Homebridge is an open-source software that acts as a bridge between Apple HomeKit and smart home devices that are not natively supported. This is a secondary service that will be used for its plugins.

### go2rtc
go2rtc is an open-source camera streaming application that supports multiple protocols, including WebRTC, RTSP, RTMP, and more. It essentially acts as a stream proxy, taking video feeds from cameras and making them available in various formats.

### Scrypted
Scrypted is an open-source video integration platform that allows exposing of unsupported cameras to Apple HomeKit with support for HomeKit Secure Video (HKSV).

## Deploying the services

Run the command below to deploy Home Assistant, Homebridge, and Scrypted.

```console
user@rpi:~/hl-rpi/services/smart_home$ cp .env.example .env && sudo docker compose up -d
```
