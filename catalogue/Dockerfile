FROM node:20
WORKDIR /opt/server
RUN npm install
Env MONGO="true" \
    MONGO_URL="mongodb://mongodb:27017/catalogue"
COPY package.json .
COPY *.js .
CMD  ["node" "server.js"]
