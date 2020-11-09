FROM node:12.19.0-alpine
LABEL version=1.0.2-rc.0

RUN mkdir /ymlx
COPY ["index.js", "reduce.js", "package.json", "package-lock.json", "test", "/ymlx/"]
WORKDIR /ymlx
RUN npm install
WORKDIR /

ENTRYPOINT ["node", "/ymlx/index.js"]
CMD ["--help"]
