FROM mhart/alpine-node:6

WORKDIR /app

VOLUME /app

RUN apk add --no-cache libc6-compat gcc g++ python make && \
 cd / && \
 npm install \@google-cloud/datastore bcrypt chokidar && \
 apk del python make gcc g++ && \
 rm -rf /etc/ssl /usr/share/man /tmp/* /var/cache/apk/* /root/.npm /root/.node-gyp /root/.gnupg \
    /usr/lib/node_modules/npm/man /usr/lib/node_modules/npm/doc /usr/lib/node_modules/npm/html && \
  cd /app

EXPOSE 8080

CMD npm start
