FROM node:alpine

WORKDIR /frontend

EXPOSE 3333

COPY package*.json ./

RUN npm install

COPY . ./

CMD [ "npm", "run", "dev" ]