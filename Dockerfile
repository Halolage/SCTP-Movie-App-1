# Use the official Node.js image as the base image
FROM node:14

# Create app directory
WORKDIR /app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./


RUN npm install --legacy-peer-deps
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

# ENV VITE_API_KEY=06e7b98d4ee48965488694b5eb81f103
# ENV VITE_TMDB_API_BASE_URL=https://api.themoviedb.org/3

EXPOSE 3000

# Specify the command to run when the container starts
CMD ["npm", "run", "dev"]
