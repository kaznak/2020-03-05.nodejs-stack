FROM node:12.16.1-alpine
WORKDIR /server
COPY server/bin /server/bin
COPY server/public /server/public
COPY server/routes /server/routes
COPY server/views /server/views
COPY server/app.js /server
COPY server/package.json /server
RUN npm install
CMD npm start
