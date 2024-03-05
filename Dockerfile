FROM node:12-alpine

WORKDIR /home/node/app
COPY package*.json .
RUN npm install
RUN npm install typescript -g
COPY . .
RUN npm run build
# npm run start
