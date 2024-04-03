# Use an official Node.js image as the base image
FROM node:17

# Set environment variables
ENV PORT=5049
ENV NODE_ENV=production

# Set the working directory in the container
WORKDIR /

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port the app runs on
EXPOSE $PORT

# Command to run the node.js server
CMD ["node", "index.js"]

# Add metadata to the image
LABEL maintainer="TechSide <wienerwolf77@gmail.com>"

# End of Dockerfile
