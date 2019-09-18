FROM node:12.10-alpine

USER root

RUN apk --no-cache add \
  # gcompat
  git \
  libc6-compat
RUN ln -s /lib/libc.musl-x86_64.so.1 /lib/ld-linux-x86-64.so.2
#=========
# Node setup
#=========  
COPY package.json ./
RUN yarn
COPY src/ ./src

ENTRYPOINT [ "npm", "start", "--" ]