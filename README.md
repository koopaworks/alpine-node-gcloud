# alpine-node-gcloud
Docker container for Alpine linux, nodejs v6 and google-cloud APIs that use grpc

## build/deploy
```
docker build . --no-cache
docker tag <containerid> koopaworks/alpine-node-gcloud:latest
docker push koopaworks/alpine-node-gcloud:latest
```
  