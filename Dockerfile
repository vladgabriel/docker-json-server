FROM node:lts-alpine

EXPOSE 3000

RUN npm install -g json-server

WORKDIR /data

COPY db.json db.json

CMD ["json-server", "--watch", "db.json"]