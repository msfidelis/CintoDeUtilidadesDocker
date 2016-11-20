FROM node:latest

RUN mkdir -p /usr/src/app
RUN npm install nodemon -g

WORKDIR /usr/src/app
COPY app/package.json /usr/src/app/package.json
RUN npm install -g

EXPOSE 8080
EXPOSE 5858

CMD ["npm", "start"]
