FROM alpine:3.18

ENV NODE_VERSION 18.18.0

WORKDIR /app

RUN apk add --no-cache --virtual python

COPY package.json package-lock.json ./

RUN npm install --frozen-lockfile

COPY . .

CMD npm run dev