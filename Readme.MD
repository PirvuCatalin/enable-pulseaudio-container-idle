# Enable idling for pulseaudio hassio container

This script will 2 minutes after boot and will enabling idling for pulseadio container. The issue affects homeassistant installed in a Docker container, supervised.

More details about the issue can be seen found [here](https://github.com/JJFourie/HomeAssistant-PulseAudio-Disable).

In my case, I've checked through htop and pulseaudio was eating a lot of cpu time and every couple of seconds the cpu usage was raising to 10-20%, consumed by pulseaudio for no reason on my RPi 4.

## How to

```
1. cp disable-pulseaudio-delay.service /etc/systemd/system/disable-pulseaudio-delay.service
2. cp disable-pulseaudio-delay.sh /home/pi/disable-pulseaudio-delay.sh
3. sudo systemctl enable disable-pulseaudio-delay
4. sudo systemctl start disable-pulseaudio-delay
5. journalctl -u disable-pulseaudio-delay
```

At step 5 you check the logs to make sure everything runs ok. Also test this by restarting.

You can change the path to the shell script, but also modify in `disable-pulseaudio-delay.service`.
