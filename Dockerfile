FROM mhart/alpine-node:6

WORKDIR /app

VOLUME /app

RUN apk add --no-cache libc6-compat && cd / && npm install google-cloud \@google-cloud/datastore && cd /app

EXPOSE 8080

CMD npm start