FROM node:17.8.0
WORKDIR /opt
ADD scripts /opt
ADD src /opt
ADD public /opt
RUN npm install
ENTRYPOINT npm run start
