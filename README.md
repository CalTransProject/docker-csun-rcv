# docker-csun-rcv

Use these scripts to build container images from [csun-rcv](https://github.com/rosealexander/csun-rcv).

## requirements

- Docker Engine
- An AWS Account, signed in with the [AWS cli](https://github.com/aws/aws-cli)

## scripts

Two scripts are included, one for building the container image and another to upload this image to your own private [Amazon Elastic Container Registry](https://aws.amazon.com/ecr/)

```shell
bin/build
```

- Builds the **csun-rcv** container image.

```shell
bin/push
```

- Push the newly created image to [ECR](https://aws.amazon.com/ecr/)

## license

Repository contents are licensed under the MIT No Attribution License. Downloaded software retains its original license.