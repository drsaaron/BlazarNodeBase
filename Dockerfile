# build based on node
FROM node:slim

# install curl which will be used for healthcheck
RUN apt update && apt install -y curl

# define the user
ARG LOCAL_USER
ARG LOCAL_USER_ID
ARG LOCAL_GROUP
ARG LOCAL_GROUP_ID
RUN groupadd --gid $LOCAL_GROUP $LOCAL_GROUP_ID && useradd --uid $LOCAL_USER --gid $LOCAL_GROUP_ID --create-home $LOCAL_USER_ID

# working directory
WORKDIR /home/$LOCAL_USER_ID

