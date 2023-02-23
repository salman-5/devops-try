# Use an official Node.js runtime as a parent image
FROM node:16-alpine

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Set environment variable
ENV NODE_ENV production

# Build the app
RUN npm run build

# Expose port 3000 for the container
EXPOSE 3000

# Start the app
CMD [ "npm", "start" ]
