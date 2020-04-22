#!/bin/bash

set -e

# For debugging purpose
set -o xtrace

apt install -y curl jq

curl -o waterfall.jar https://papermc.io/api/v1/waterfall/1.15/latest/download

cp server-egg/config.yml .

rm -rf plugins
mkdir plugins
curl -o plugins/Geyser-BungeeCord.jar https://ci.nukkitx.com/job/GeyserMC/job/Geyser/job/master/lastSuccessfulBuild/artifact/bootstrap/bungeecord/target/Geyser-BungeeCord.jar
curl -o plugins/floodgate-bungee.jar https://ci.nukkitx.com/job/GeyserMC/job/Floodgate/job/development/lastSuccessfulBuild/artifact/bungee/target/floodgate-bungee.jar
