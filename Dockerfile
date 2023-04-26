FROM node:7.8.0
WORKDIR /opt
ADD . /opt
COPY package*.json ./
RUN npm install
COPY . .
ENTRYPOINT npm run start
