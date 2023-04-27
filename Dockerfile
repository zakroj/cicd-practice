FROM node:17.8.0
WORKDIR /opt
ADD . /opt
COPY scripts ./opt
COPY src ./opt
COPY public ./opt
COPY package.json ./opt
RUN npm install
ENTRYPOINT npm run start
