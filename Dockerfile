# Dockerfile for Bilygine Client
FROM node:9.11.1-alpine

# Simple HTTP Server to serve our amazing static file
RUN npm install -g http-server

# We work in app directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all file in docker working directory
COPY . .

# Run build prod
RUN npm run build --prod

EXPOSE 9999
CMD [ "http-server", "dist" ]
