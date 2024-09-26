# Docker Texlive

This repository contains a Docker setup for Texlive, a comprehensive TeX system. It allows users to compile LaTeX documents in a consistent environment without needing to install Texlive directly on their local machine. The Docker container includes all necessary dependencies and tools to work with LaTeX files efficiently.

## Requirements

- Docker

## Usage

```bash
# Linux / Mac
docker run --rm -it -w "/tex" -v "$PWD":/tex git.supanadit.com/supanadit/docker-texlive:1.0.0-ubuntu-full.1
# Powershell
docker run --rm -it -w "/tex" -v ${PWD}:/tex git.supanadit.com/supanadit/docker-texlive:1.0.0-ubuntu-full.1
# CMD
docker run --rm -it -w "/tex" -v %cd%:/tex git.supanadit.com/supanadit/docker-texlive:1.0.0-ubuntu-full.1
```

## Available Tags

- `1.0.0-ubuntu-full.1` - Full version of texlive on ubuntu
- `1.0.0-alpine.1` - Lite version of texlive on alpine
- `0.0.1-awesome-cv.1` - Tailored version for [Awesome CV](https://github.com/posquit0/Awesome-CV) based on Ubuntu
- `0.0.2-awesome-cv.1` - Tailored version for [Awesome CV](https://github.com/posquit0/Awesome-CV) based on Ubuntu ( Broken don't used it )
- `0.0.2-awesome-cv.2` - Tailored version for [Awesome CV](https://github.com/posquit0/Awesome-CV) based on Ubuntu ( Fixed version, for smaller image size )
- `0.0.3-awesome-cv.1` - Tailored version for [Awesome CV](https://github.com/posquit0/Awesome-CV) based on Alpine ( Recomended )

## Available Registry

- [Docker Hub](https://hub.docker.com/r/supanadit/docker-texlive)
- [My Gitea Registry](https://git.supanadit.com/supanadit/-/packages/container/docker-texlive)
