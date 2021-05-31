FROM node:10.7.0-alpine

RUN mkdir /app

WORKDIR /app

COPY package.json /app

RUN npm install

COPY . /app

EXPOSE 8081

ENTRYPOINT ["npm", "run", "development"]
