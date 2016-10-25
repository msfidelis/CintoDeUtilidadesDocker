FROM node:argon

RUN mkdir -p /usr/src/app
RUN npm install nodemon -g

WORKDIR /usr/src/app
ADD app/package.json /usr/src/app/package.json
RUN npm install -g

#ADD app/nodemon.json /usr/src/app/nodemon.json

EXPOSE 80
EXPOSE 8080
EXPOSE 3000
EXPOSE 5858

CMD npm start
