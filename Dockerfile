FROM node:latest

WORKDIR /usr/src/app

COPY package.json /usr/src/app/package.json
RUN npm install
COPY app.js /usr/src/app/app.js
COPY db.js /usr/src/app/db.js
COPY controllers /usr/src/app/controllers
COPY routes /usr/src/app/routes


RUN apt-get update && apt-get install -y sudo software-properties-common



EXPOSE 3000

CMD [ "npm", "run", "dev" ]
