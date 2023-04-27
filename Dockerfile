FROM node:17.8.0
WORKDIR /opt
ADD . /opt
RUN npm install
ENTRYPOINT npm run start
