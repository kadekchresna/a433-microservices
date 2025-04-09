# use node:14 image from docker hub
FROM node:14

# set the working directory to /app
WORKDIR '/app'

# copy all current executed files recrusively to /app
COPY . .

# set env needed for this app
ENV NODE_ENV=production DB_HOST=item-db

# install dependency
RUN npm install --production --unsafe-perm && npm run build

# expose the port for this container
EXPOSE 8080

# default commnand when the container is started
CMD [ "npm", "start" ]
