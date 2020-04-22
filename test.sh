set -e

docker build -t server-waterfall-egg .
docker -D run --name server-waterfall-egg --rm --publish=25565:25565 -ti server-waterfall-egg:latest /bin/bash -c 'java -Xms128M -Xmx256M -jar waterfall.jar'
