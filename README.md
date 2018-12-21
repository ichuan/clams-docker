# clams-docker
Dockerfile for Clams node


# Building

```bash
docker build -t clams .
```

# Running

Customize config file `clams.conf` first.

```bash
# block dir
mkdir data
docker run --rm -it --name clams-node -p 0.0.0.0:30174:30174 -v `pwd`/data:/opt/clams/data -v `pwd`/clams.conf:/opt/clams/clams.conf clams
```

# Using pre-built docker image

```bash
docker run --rm -it --name clams-node -p 0.0.0.0:30174:30174 -v `pwd`/data:/opt/clams/data -v `pwd`/clams.conf:/opt/clams/clams.conf mixhq/clams:latest
```
