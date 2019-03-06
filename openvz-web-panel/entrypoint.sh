#!/bin/sh

if [ ! -f /opt/ovz-web-panel/utils/hw-daemon/hw-daemon.ini ]; then
    cp -p /opt/ovz-web-panel/utils/hw-daemon/hw-daemon.ini.sample /opt/ovz-web-panel/utils/hw-daemon/hw-daemon.ini
fi

/opt/ovz-web-panel/script/owp restart

while true; do
    sleep 1
done
