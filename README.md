# A Simple Multi-Arch Kubectl Docker Image

## Build Steps
### Default Version (`1.20.0`)
```
docker buildx build --platform linux/amd64,linux/arm64 --tag <REPO_NAME>:1.20.0 . --push
```

### Override Version

```
docker buildx build --platform linux/amd64,linux/arm64 --tag <REPO_NAME>:1.21.0 . --push --build-arg KUBECTL_VERSION=1.21.0
```
