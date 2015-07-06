FROM node:0.12
MAINTAINER kumatch

RUN mkdir -p /data/
ADD dummyfile /data/

RUN git clone --depth 1 https://github.com/kumatch/tswitch.git /data/tswitch
WORKDIR /data/tswitch

RUN npm install --production
CMD npm start

EXPOSE 3000
