# Use an official Node.js runtime as a base image
FROM node:latest

# Set the working directory in the container
WORKDIR /singh_harmanpreet_ui_garden_build_checks

# Copy the package.json file and package-lock.json file
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your component library's source files
COPY . .

# Build the static Storybook
RUN npm run build-storybook

# Install a simple http server for serving static content
RUN npm install -g http-server

# The default command to run when starting the container
CMD ["http-server", "storybook-static", "-p", "8083"]