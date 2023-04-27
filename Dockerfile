FROM node:17.8.0
WORKDIR /opt
COPY scripts/* ./
COPY public/* ./
COPY src/* ./
COPY package.json ./
RUN npm install
ENTRYPOINT npm run start
