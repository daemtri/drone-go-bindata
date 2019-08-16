# docker-go-bindata

# release-agent

## Use

```yaml
kind: pipeline
name: example

steps:
- name: go-bindata
  image: koyo/drone-go-bindata
  settings:
    output: resource/bindata.go
    pkg: resource
    ignore:
    - .*\.less$
    - assets/...
    fs: true
- name: backend
  image: golang
  commands:
  - mkdir dist
  - go build -o dist/your-binary-name
  - go test
```

## Build

Build the binary with the following command:

```
workdir=`pwd`
cd go-bindata/go-bindata
GOOS=linux GOARCH=amd64 go build -v -o ../../release/linux/amd64/go-bindata
cd $workdir
```

## Docker
Build the Docker image with the following command:

```
docker build \
  --label org.label-schema.build-date=$(date -u +"%Y-%m-%dT%H:%M:%SZ") \
  --label org.label-schema.vcs-ref=$(git rev-parse --short HEAD) \
  --file docker/Dockerfile.linux.amd64 --tag koyo/drone-go-bindata .
```

版本发布推送客户端

## Usage

```
docker run --rm \
  -e "PLUGIN_OUTPUT=resource/bindata.go" \
  -e "PLUGIN_PKG=resource" \
  -e "PLUGIN_IGNORE=.*\.less$" \
  -e "PLUGIN_INPUT=assets/..." \
  -v $(pwd):$(pwd) \
  -w $(pwd) \
  koyo/drone-go-bindata
```