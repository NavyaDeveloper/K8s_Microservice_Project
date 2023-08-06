# Use the official Node.js image as the base image
FROM node:latest

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all the application code to the working directory
COPY . .

# Expose the port your Node.js app is listening on
EXPOSE 3000

# Start the Node.js app
CMD ["node", "app.js"]
