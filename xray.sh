#!/bin/sh
if [ ! -f UUID ]; then
  UUID="b25d1e3d-e7ae-4ef7-83e2-f5ebb89a4efa"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

