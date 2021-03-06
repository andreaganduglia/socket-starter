FROM node:alpine

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
COPY index.js /usr/src/app/
COPY config.json /usr/src/app/
COPY lib/ /usr/src/app/lib

RUN npm install
EXPOSE 3000
CMD [ "npm", "start" ]