FROM node:7.10.0

WORKDIR /code

COPY package.json /code/package.json
RUN npm install && npm cache clean
COPY . /code

CMD ["npm", "start"]