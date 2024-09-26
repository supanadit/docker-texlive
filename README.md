# Docker Texlive

This repository contains a Docker setup for Texlive, a comprehensive TeX system. It allows users to compile LaTeX documents in a consistent environment without needing to install Texlive directly on their local machine. The Docker container includes all necessary dependencies and tools to work with LaTeX files efficiently.

## This repository has automation for building Docker images which are available on the following links:

[Drone CI](https://drone.supanadit.com/supanadit/docker-texlive)

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

## Notes

I currently have only full version of texlive, but I will add more version in the future. Even light version of texlive on busybox and scratch.
