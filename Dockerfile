FROM node:latest

MAINTAINER Abhishek Modi 

RUN echo "Tryin to build my first application"

COPY . /var/www

WORKDIR /var/www

RUN npm install

EXPOSE 5001

ENTRYPOINT ["npm","start"]