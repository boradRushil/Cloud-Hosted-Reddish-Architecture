# Use an official Node.js runtime as a parent image
FROM node:16-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install --production

# Copy the rest of the application files to the container
COPY . .

# Expose the port the app runs on
EXPOSE 3005

# Start the application
CMD ["npm", "start"]
