FROM node:12.22.9
WORKDIR /opt
ADD . /opt
RUN npm install
ENTRYPOINT npm run start
