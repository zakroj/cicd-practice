FROM node:17.8.0
WORKDIR /opt
ADD . /opt
COPY package.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD npm start
