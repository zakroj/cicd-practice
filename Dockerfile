FROM node:18.16.0
WORKDIR /opt
ADD . /opt
RUN npm install
ENTRYPOINT npm run start
