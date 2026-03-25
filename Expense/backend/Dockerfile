FROM node:20
WORKDIR /opt/server
COPY .json .
COPY *.js .
RUN npm install
ENV DB_HOST="mysql"
CMD ["node","index.js"]