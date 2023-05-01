FROM node:12.22.9
WORKDIR /opt
ADD . /opt
COPY package.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD npm start
