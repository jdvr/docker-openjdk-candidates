# Docker OpenJDK Release Candidates

This repository contains a Makefile and a Dockerfile that allow for easy building of a Docker image using the latest release candidate available from jdk.java.net.

Latest Release Cadidate: [JDK 23](https://jdk.java.net/23/)

Available versions:
- [OpenJDK 23](https://github.com/jdvr/docker-openjdk-candidates/tree/openjdk-23) - `openjdk-23`
- [EA OpenJDK 24](https://github.com/jdvr/docker-openjdk-candidates/tree/openjdk-24) - `openjdk-24`

## Prerequisites

Before building the Docker image, ensure that you have the following prerequisites installed:

- Docker: [Install Docker](https://docs.docker.com/get-docker/)

## Building the Docker Image

To build the Docker image, follow these steps:

1. Clone this repository:

    ```shell
    git clone https://github.com/your-username/docker-openjdk-candidates.git
    ```

2. Change into the repository directory:

    ```shell
    cd docker-openjdk-candidates
    git switch openjdk-24  --detach # < --- target version
    ```

3. Run the Makefile:

    ```shell
    make build
    ```

    This will build the Docker image using the latest release candidate available from jdk.java.net.

## Running the Docker Image

Once the Docker image is built, you can run it using the following command:

```shell
> docker run --rm -it openjdk-24
openjdk version "24-ea" 2025-03-18
OpenJDK Runtime Environment (build 24-ea+11-1194)
OpenJDK 64-Bit Server VM (build 24-ea+11-1194, mixed mode, sharing)
```


## Contributing

If you would like to contribute to this project, please follow the guidelines in [CONTRIBUTING.md](CONTRIBUTING.md).

## License

This project is licensed under the [MIT License](LICENSE).
