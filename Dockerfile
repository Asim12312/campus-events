FROM node:18-alpine

WORKDIR /app

COPY package.json .
RUN npm install -g parcel

COPY . .

RUN parcel build src/index.html

EXPOSE 1234

CMD ["npx", "serve", "dist"]
