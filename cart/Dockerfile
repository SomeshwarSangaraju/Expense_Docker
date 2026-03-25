FROM node:20-trixie
# RUN USERADD Siva
WORKDIR /opt/server
COPY .json .
COPY *.js .
RUN npm install
ENV REDIS_HOST="redis" \
    CATALOGUE_HOST="catalogue" \
    CATALOGUE_PORT="8080" 
# USER Siva
CMD ["node" , "server.js"]
