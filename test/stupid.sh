#!/bin/bash
set -x
USER_KEY="$(cat files/artifacts/lunarengineer-bot-key.pub)"
sed "s/<USER_KEY>/\"$USER_KEY\"/g" files/user-data-template > files/artifacts/lunarengineer-bot-user-data