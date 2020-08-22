#!/bin/bash
# Build and Run gdxsv for local development

set -eux

cd $(dirname "$0")

make

export GDXSV_LOBBY_PUBLIC_ADDR="192.168.0.4:9876"
export GDXSV_LOBBY_ADDR="localhost:9876"
export GDXSV_BATTLE_PUBLIC_ADDR="192.168.0.4:9877"
export GDXSV_BATTLE_ADDR="localhost:9877"
export GDXSV_MCSFUNC_KEY="${HOME}/keys/gdxsv-service-key.json"
export GDXSV_MCSFUNC_URL="https://asia-northeast1-gdxsv-274515.cloudfunctions.net/mcsfunc"

#./bin/gdxsv -v 3 -mcsdelay=30ms lbs 2>&1 | tee log.txt
./bin/gdxsv -v 3 lbs 2>&1 | tee log.txt

