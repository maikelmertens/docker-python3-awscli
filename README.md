# Docker python3 awscli image

This is a small extension on the latest Docker image available.
It adds python3, awscli and several other python packages, primarily used for shortening the time a Gitlab pipeline consumes so it won't have to deal with manually installing these packages at every sequentually pipeline run.

## Usage

Below an excerpt of a sample `.gitlab-ci.yml` file:

```yaml
---

image: maikelmertens/docker-python3-awscli:latest
services:
  - docker:dind
```

And you're done. You will get all the Python packages listed in `requirements.txt` in this repository preinstalled.

## Updating Policy

This Docker image will be automatically refreshed every week, hence you will have the latest updated version of the Docker image as of the Python packages available anytime.
