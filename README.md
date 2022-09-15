![Docker Image Version (latest semver)](https://img.shields.io/docker/v/mrdeerly/vitepress?logo=docker&logoColor=white&style=flat-square)
![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/mrdeerly/vitepress?logo=docker&logoColor=white&style=flat-square)
![Docker Pulls](https://img.shields.io/docker/pulls/mrdeerly/vitepress?logo=docker&logoColor=white&style=flat-square)
# vitepress-docker
Docker image for local Vitepress editing or to be run within a CI pipeline.


## Installation
``` bash
git clone https://github.com/MrDeerly/vitepress-docker.git
docker build -t mrdeerly/vitepress .
```
or
``` bash
docker pull mrdeerly/vitepress
```

## Usage
``` bash
cd /path/to/your/vitepress/installation

export VITEPRESS_DOCKER_PORT="3000"
export VITEPRESS_DOCKER_MOUNT="-v $(CURDIR):/vitepress"
export VITEPRESS_DOCKER_OPTS="--rm $(VITEPRESS_DOCKER_MOUNT)"

docker run $(VITEPRESS_DOCKER_OPTS) -p $(VITEPRESS_DOCKER_PORT):3000 mrdeerly/vitepress
```

This will start the vitepress devserver on port 3000.
