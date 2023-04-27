FROM node:17.8.0
WORKDIR /opt
ADD . /opt
COPY /scripts/ ./ 
COPY /src/ ./
COPY /public/ ./
RUN npm install
ENTRYPOINT npm run start
