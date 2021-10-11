# build based on node
FROM node:alpine

# install curl which will be used for healthcheck
RUN apk add curl

# install make
RUN apk add --update make

# install g++
RUN apk add g++

# install python
ENV PYTHONUNBUFFERED=1
RUN apk add --update --no-cache python2 && ln -sf python2 /usr/bin/python

# working directory
WORKDIR /app
