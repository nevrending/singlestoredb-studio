![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/nevrending/singlestoredb-studio?style=flat-square)
![Docker Version](https://img.shields.io/docker/v/nevrending/singlestoredb-studio?style=flat-square&sort=semver)
![Docker Pulls](https://img.shields.io/docker/pulls/nevrending/singlestoredb-studio?style=flat-square)
![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/nevrending/singlestoredb-studio?style=flat-square&sort=date)

# SingleStore DB Studio

Container image with [SingleStoreDB Studio](https://docs.singlestore.com/db/v7.8/en/user-and-cluster-administration/cluster-management-with-tools/singlestore-db-studio-overview.html).

![Screen Shot 2021-09-21 at 19 51 28](https://user-images.githubusercontent.com/4745298/134150518-cf941f01-6c3d-4a5e-8bb7-7a8326c987d5.png)

### Running

    $ docker run --name singlestoredb-studio -p 8080:8080/tcp -d nevrending/singlestoredb-studio:latest

or

    $ docker run --name singlestoredb-studio -p 8080:8080/tcp -d ghcr.io/nevrending/singlestoredb-studio:latest

### Usage

To access the UI in a browser, go to:

    http://localhost:8080

### Persisting Config Between Sessions

Mount a storage volume to `/var/lib/singlestoredb-studio`.

    $ docker run --name singlestoredb-studio -v singlestoredb-studio:/var/lib/singlestoredb-studio -p 8080:8080/tcp -d nevrending/singlestoredb-studio:latest

or

    $ docker run --name singlestoredb-studio -v singlestoredb-studio:/var/lib/singlestoredb-studio -p 8080:8080/tcp -d ghcr.io/nevrending/singlestoredb-studio:latest

## License

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow?style=flat-square)](https://github.com/nevrending/singlestoredb-studio/blob/master/LICENSE)
