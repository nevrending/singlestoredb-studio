FROM ubuntu:20.04

LABEL maintainer="Yefta Sutanto <hello@yefta.com>"

ENV MEMSQL_STUDIO_VERSION=3.2.4

RUN apt-get update && apt-get upgrade -y && apt-get install -y apt-transport-https ca-certificates gnupg wget --no-install-recommends && \
    wget -q -O - 'https://release.memsql.com/release-aug2018.gpg' | apt-key add - && \
    echo "deb https://release.memsql.com/production/debian memsql main" | tee /etc/apt/sources.list.d/memsql.list && \
    apt-get update && \
    apt-get install -y singlestoredb-studio=$MEMSQL_STUDIO_VERSION --no-install-recommends && \
    rm -rf /var/lib/apt/lists/* && \
    touch studio.hcl

EXPOSE 8080/tcp

CMD ["singlestoredb-studio"]
