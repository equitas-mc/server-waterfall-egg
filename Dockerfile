FROM quay.io/pterodactyl/core:java

COPY . /home/container/server-egg
USER root
RUN ./server-egg/setup.sh

EXPOSE 25603 26603
