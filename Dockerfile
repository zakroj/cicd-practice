FROM node:17.8.0
WORKDIR /opt
ADD . /opt
COPY /scripts/ ./ 
COPY /src/ ./
RUN npm install
ENTRYPOINT npm run start
