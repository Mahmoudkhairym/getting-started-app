FROM node:18-alpine

WORKDIR /app

ADD package.json .

RUN yarn install --production &7 yarn cache clean

ADD . .

ENTRYPOINT [ "node" ]

CMD [ "src/index.json" ]

EXPOSE 3000

