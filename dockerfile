FROM node:16.14.0-alpine

WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY tsconfig.json ./

COPY ./src ./src

RUN npm run build

CMD [ "npm", "run", "start" ]
