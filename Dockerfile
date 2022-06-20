# build based on node
FROM node:alpine

# install curl which will be used for healthcheck
RUN apk add curl

# install make
RUN apk add --update make

# install g++
RUN apk add g++

# working directory
WORKDIR /app
