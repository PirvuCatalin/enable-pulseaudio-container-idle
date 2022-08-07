#!/bin/bash
echo "Waiting for 2 minutes before enabling idiling for pulseaudio..."
sleep 120
echo "Enabling idling for pulseaudio docker container..."
docker exec -i hassio_audio pactl load-module module-suspend-on-idle
echo "Enabled idling for pulseaudio docker container!"
