FROM node:22.15-alpine
# use app as main dir
WORKDIR /app
# copy package json to the app dir
COPY package*.json ./
# install all dependency
RUN npm install
# copy all files from current  dir to the app dir
COPY . .
# expose port 3001
EXPOSE 3001
# run the service
CMD [ "npm", "run", "start" ]
