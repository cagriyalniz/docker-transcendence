FROM debian:buster

RUN  apt upgrade && apt update && apt-get install curl git wget vim npm -y

RUN mkdir -p /usr/local/nvm
ENV NVM_DIR /usr/local/nvm
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

RUN /bin/bash -c "source $NVM_DIR/nvm.sh && nvm install 20 && nvm use 20"
RUN /bin/bash -c "source $NVM_DIR/nvm.sh && npm install -g @angular/cli"

ENV NODE_PATH $NVM_DIR/versions/node/20/bin

RUN git clone https://github.com/Fatma-Ozturk/FtTranscendenceUI.git /FtTranscendenceUI
WORKDIR /FtTranscendenceUI

RUN /bin/bash -c "source $NVM_DIR/nvm.sh && npm i"
CMD ["echo 'export PATH=$NVM_DIR/nvm.sh:$PATH' >> .zshrc"]
CMD ["source .zshrc && ng s --o"]


# # Node.js imajını al
# FROM node:latest

# RUN apt update && apt upgrade -y && apt install git -y
# # Angular projesini host makineye kopyala
# RUN git clone https://github.com/Fatma-Ozturk/FtTranscendenceUI.git /app
# WORKDIR /app

# # Angular projesi için gerekli bağımlılıkları yükle
# run npm install -g @angular/cli
# RUN npm install

# # Uygulamayı başlat
# CMD ["/bin/bash", "-c", "source $NVM_DIR/nvm.sh && ng s --watch"]