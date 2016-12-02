FROM mhart/alpine-node:6

WORKDIR /app

VOLUME /app

ADD will.jordan@gmail.com-56bf67f5.rsa.pub /etc/apk/keys/

RUN apk add --no-cache libc6-compat gcc g++ python make && \
 apk add --no-cache --update --repository https://s3.amazonaws.com/wjordan-apk libvips --allow-untrusted  && \
 cd / && \
 npm install \@google-cloud/datastore \@google-cloud/storage bcrypt chokidar sharp && \
 apk del python make gcc g++ && \
 rm -rf /etc/ssl /usr/share/man /tmp/* /var/cache/apk/* /root/.npm /root/.node-gyp /root/.gnupg \
    /usr/lib/node_modules/npm/man /usr/lib/node_modules/npm/doc /usr/lib/node_modules/npm/html && \
  cd /app

EXPOSE 8080

CMD npm start
