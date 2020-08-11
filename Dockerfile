# pull official base image
FROM node:10

RUN mkdir -p /opt/sample_app/

WORKDIR /opt/sample_app/

COPY ./server /opt/sample_app/

RUN npm install

CMD [ "node", "bin/www" ]
