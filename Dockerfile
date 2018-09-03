FROM node:8

LABEL MAINTAINER RajeshBotchu

RUN mkdir -p .
WORKDIR .

# Install app dependencies
COPY package.json .
RUN npm install

# Bundle app source
COPY . .

EXPOSE 3000 50057
CMD [ "node", "." ]