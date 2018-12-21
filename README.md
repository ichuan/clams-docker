# clams-docker
Dockerfile for Clams node


# Building

```bash
docker build -t clams .
```

# Running

Customize config file `clam.conf` first.

```bash
# block dir
mkdir data
docker run --rm -it --name clams-node -p 0.0.0.0:30174:30174 -v `pwd`/data:/opt/clam/data -v `pwd`/clam.conf:/opt/clam/clam.conf clams
```

# Using pre-built docker image

```bash
docker run --rm -it --name clams-node -p 0.0.0.0:30174:30174 -v `pwd`/data:/opt/clam/data -v `pwd`/clam.conf:/opt/clam/clam.conf mixhq/clams:latest
```
