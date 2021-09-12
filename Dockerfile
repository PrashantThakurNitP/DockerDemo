FROM node

WORKDIR /app

COPY package.json /app
# in docker if any code above is invalidated then all code below that have to be executed
#but we want that npm install should run only when package.json changes
RUN npm install
#npm npm install will not run if code in othe rpart changes

COPY . /app

EXPOSE 80

CMD ["node", "server.js"]