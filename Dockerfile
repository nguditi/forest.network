FROM node:10.13

WORKDIR /usr/src/app

COPY package.json yarn.lock ./

RUN yarn

COPY . .

USER node

VOLUME [ "/usr/src/app/tendermint" ]

EXPOSE 26656 26657 26658

CMD [ "yarn", "start" ]