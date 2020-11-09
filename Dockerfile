FROM node:12.19.0-alpine
LABEL version=1.0.0-rc.3

RUN mkdir /ymlx
COPY ["index.js", "reduce.js", "package.json", "package-lock.json", "test", "/ymlx/"]
WORKDIR /ymlx
RUN npm install
WORKDIR /

ENTRYPOINT ["node", "/ymlx/index.js"]
CMD ["--help"]
