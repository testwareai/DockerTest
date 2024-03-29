# Use the official Node.js 14 image as a parent image
FROM node:14

# Set the working directory within the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Bundle the source code inside the Docker image
COPY . .

# Define the network port that this container will listen on at runtime
EXPOSE 3000

# Command to run the application
CMD [ "node", "app.js" ]
