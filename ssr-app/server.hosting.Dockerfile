# Use the official Node.js image as the base image
FROM node:16

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package.json .
COPY yarn.lock .

# Install the dependencies
RUN yarn install

# Copy the rest of the application code
COPY . .

EXPOSE 3000

# Build the Nuxt.js application for production
RUN yarn build

# Expose the port that the app will run on


# Start the Nuxt.js application
CMD [ "yarn", "start" ]
