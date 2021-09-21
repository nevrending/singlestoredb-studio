![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/nevrending/memsql-studio?style=flat-square)
![Docker Version](https://img.shields.io/docker/v/nevrending/memsql-studio?style=flat-square&sort=semver)
![Docker Pulls](https://img.shields.io/docker/pulls/nevrending/memsql-studio?style=flat-square)
![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/nevrending/memsql-studio?style=flat-square&sort=date)

# SingleStore DB Studio

Container image with [SingleStore DB Studio](https://docs.singlestore.com/v7.3/tools/memsql-studio/memsql-studio-overview/).

![Screen Shot 2021-09-21 at 19 51 28](https://user-images.githubusercontent.com/4745298/134150518-cf941f01-6c3d-4a5e-8bb7-7a8326c987d5.png)

### Running

    $ docker run --name singlestoredb-studio -p 8080:8080/tcp -d nevrending/memsql-studio:latest

or

    $ docker run --name singlestoredb-studio -p 8080:8080/tcp -d ghcr.io/nevrending/singlestoredb-studio:latest

### Usage

To access the UI in a browser, go to:

    http://localhost:8080

### Persisting Config Between Sessions

Mount a storage volume to `/var/lib/singlestoredb-studio`.

    $ docker run --name singlestoredb-studio -v singlestoredb-studio:/var/lib/singlestoredb-studio -p 8080:8080/tcp -d nevrending/memsql-studio:latest

or

    $ docker run --name singlestoredb-studio -v singlestoredb-studio:/var/lib/singlestoredb-studio -p 8080:8080/tcp -d ghcr.io/nevrending/singlestoredb-studio:latest

## License

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow?style=flat-square)](https://github.com/nevrending/memsql-studio/blob/master/LICENSE)
