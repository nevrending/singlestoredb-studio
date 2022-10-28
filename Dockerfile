FROM ubuntu:22.04

LABEL maintainer="Yefta Sutanto <hello@yefta.com>"
LABEL org.opencontainers.image.source https://github.com/nevrending/singlestoredb-studio

ENV SINGLESTOREDB_STUDIO_VERSION=4.0.8

RUN apt-get update && apt-get upgrade -y && apt-get install -y apt-transport-https ca-certificates gnupg wget --no-install-recommends && \
    wget -q -O - 'https://release.memsql.com/release-aug2018.gpg' 2>/dev/null | apt-key add - && \
    echo "deb [arch=amd64] https://release.memsql.com/production/debian memsql main" | tee /etc/apt/sources.list.d/memsql.list && \
    apt-get update && \
    apt-get install -y singlestoredb-studio=$SINGLESTOREDB_STUDIO_VERSION --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 8080/tcp

CMD ["singlestoredb-studio"]
