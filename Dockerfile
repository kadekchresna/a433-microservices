FROM node:22.15-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
ENV PORT=3000
ENV AMQP_URL="amqp://localhost:5672"
EXPOSE 8000
CMD [ "npm", "run", "serve" ]
