FROM node:latest

copy files /app
WORKDIR /app

RUN npm install
#CMD	["sh", "while true; do sleep 1; done"]
ENTRYPOINT ["tail", "-f", "/dev/null"]
