# alpine-node-gcloud
Docker container for Alpine linux, nodejs v6 and google-cloud APIs that use grpc

## build/deploy
```
docker build .
docker tag <containerid> koopaworks/alpine-node-gcloud:latest
docker push koopaworks/alpine-node-gcloud:latest
```

## Reading list
  - https://github.com/wjordan/docker-sharp/blob/master/sharp.docker.sh
  - https://github.com/lovell/sharp/issues/354
  - https://github.com/wjordan/dockerfile-libvips/blob/master/Dockerfile
  - http://sharp.dimens.io/en/stable/install/
  