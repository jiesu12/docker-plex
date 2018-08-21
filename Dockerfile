FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y wget

RUN wget https://downloads.plex.tv/plex-media-server/1.10.1.4602-f54242b6b/plexmediaserver_1.10.1.4602-f54242b6b_amd64.deb

RUN sudo dpkg -i plexmediaserver_1.10.1.4602-f54242b6b_amd64.deb

EXPOSE 32400

CMD ["/usr/bin/supervisord"]
