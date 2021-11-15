# docker-crash-course
short intro on how to use Docker and docker-compose

# Dockerfiles

Dockerfile defines a "Docker image", which is a template to start up containers. It can define a base image (for example one with .NET SDK already installed), then define some custom operations (for example building your .NET app).

## Building an image from a dockerfile

- `cd app`
- `docker build -t image-of-app .` - build a docker image named `image-of-app` from the current directory `.`

## Running a container from an image

- `docker run -p 8080:80 image-of-app` - run a container from the docker image named `image-of-app`, exposing port `80` from the container to port `8080` on the host

# docker-compose

Docker-compose allows easily managing a project that has multiple apps in separate Dockerfiles

## Building

`docker-compose build`

## Running

If you haven't build already, build will be automatically executed

`docker-compose up`

### Running in the background

`docker-compose up -d`

## Viewing logs

`docker-compose logs -f`


## Interacting with particular services

Most docker-compose commands can target a single service

`docker-compose up --build app`
`docker-compose logs -f app`

## Shutdown

The `-v` option removes all volumes (files). This means for example files used by SQL to store data.

`docker-compose down -v`

# Task

Add the example app to the `docker-compose.yml`

- add service
- add connection string env variable