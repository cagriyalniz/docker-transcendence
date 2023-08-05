FROM debian:buster

RUN apt upgrade && apt update && apt-get install curl git vim -y

RUN mkdir -p /usr/local/nvm
ENV NVM_DIR /usr/local/nvm
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

RUN /bin/bash -c "source $NVM_DIR/nvm.sh && nvm install 20 && nvm use 20"
ENV NODE_PATH $NVM_DIR/versions/node/20/bin
#RUN npm install -g @nestjs/cli

RUN git clone  https://github.com/enesozmert/ft-transcendence.git /ft-transcendence

WORKDIR /ft-transcendence
RUN /bin/bash -c "source $NVM_DIR/nvm.sh && npm install"
cmd ["source $NVM_DIR/nvm.sh && run start"]