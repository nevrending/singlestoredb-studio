![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/nevrending/memsql-studio?style=flat-square)
![Docker Version](https://img.shields.io/docker/v/nevrending/memsql-studio?style=flat-square&sort=semver)
![Docker Pulls](https://img.shields.io/docker/pulls/nevrending/memsql-studio?style=flat-square)
![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/nevrending/memsql-studio?style=flat-square&sort=date)

# MemSQL Studio

Container image with [MemSQL Studio](https://docs.singlestore.com/v7.3/tools/memsql-studio/memsql-studio-overview/).

### Running

    $ docker run --name memsql-studio -p 8080:8080/tcp -d nevrending/memsql-studio:latest

### Usage

To access the UI in a browser, go to:

    http://localhost:8080

### Persisting Config Between Sessions

Mount a storage volume to `/var/lib/memsql-studio`.

    $ docker run --name memsql-studio -v memsql-studio:/var/lib/memsql-studio -p 8080:8080/tcp -d nevrending/memsql-studio:latest

## License

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow?style=flat-square)](https://github.com/nevrending/memsql-studio/blob/master/LICENSE)
