﻿FROM node:14-alpine
WORKDIR /app
COPY package.json ./
RUN npm install
COPY . .
CMD [ "npm", "run", "start:watch" ]
EXPOSE 3000