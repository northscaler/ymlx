FROM node:8.11.3-alpine
LABEL version=1.0.0-pre.0

RUN mkdir /ymlx
COPY ["index.js", "reduce.js", "package.json", "package-lock.json", "test", "/ymlx/"]
WORKDIR /ymlx
RUN npm install
WORKDIR /

ENTRYPOINT ["node", "/ymlx/index.js"]
CMD ["--help"]
