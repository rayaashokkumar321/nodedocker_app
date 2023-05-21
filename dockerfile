FROM node:14
WORKDIR /usr/src/app
COPY ./docker_publish/package*.json /usr/src/app/
RUN npm install
COPY ./docker_publish/ /usr/src/app/
EXPOSE 8888
CMD [ "node", "app.js" ]
