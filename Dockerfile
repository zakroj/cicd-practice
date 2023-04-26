FROM node:7.8.0
WORKDIR /opt
ADD . /opt
RUN npm install react react-dom --save
ENTRYPOINT npm run start
