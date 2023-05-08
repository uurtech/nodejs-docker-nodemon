FROM ubuntu:latest

RUN apt update

RUN apt install curl -y

RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - &&\
apt-get install -y nodejs
WORKDIR /app
COPY ./package.json /app
COPY ./app.js /app
RUN npm i
EXPOSE 3000
ENTRYPOINT [ "npm","run","dev"]