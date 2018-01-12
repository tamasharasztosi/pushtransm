#!/bin/sh

# Set your pushbullet access token here:
PUSHBULLET_ACCESS_TOKEN=FILL_WITH_YOUR_KEY

# -- END of user configurable variables. --
PUSHBULLET_API_PUSH=https://api.pushbullet.com/v2/pushes

curl --header "Authorization: Bearer $PUSHBULLET_ACCESS_TOKEN" \
    -o /dev/null \
    -fs \
    -X POST $PUSHBULLET_API_PUSH \
    --header 'Content-Type: application/json' \
    --data-binary "{
        \"type\": \"note\",
        \"title\": \"$TR_TORRENT_NAME downloaded.\",
        \"body\": \"$TR_TORRENT_NAME downloaded, @ $TR_TIME_LOCALTIME.\"
    }"
