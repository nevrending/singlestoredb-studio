FROM ubuntu:18.04

ARG VERSION="memsql-studio_1.9.7_ffc2a3c243_amd64.deb"

RUN apt update && apt upgrade -y && apt install -y wget && \
    wget https://release.memsql.com/production/debian/pool/$VERSION && \
    dpkg -i $VERSION && \
    rm $VERSION

EXPOSE 8080/tcp

CMD ["memsql-studio"]
