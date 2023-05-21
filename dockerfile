FROM node:14
WORKDIR /usr/src/app
COPY ./docker_publish/package*.json /usr/src/app/
RUN npm install
COPY . .
EXPOSE 8000
CMD [ "node", "app.js" ]
