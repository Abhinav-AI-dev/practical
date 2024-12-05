# Use Node.js LTS version as the base image
FROM node:18

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if present) to the container
COPY package*.json ./

# Install dependencies inside the container
RUN npm install

# Copy the rest of your application code into the container
COPY . .

# Expose the app's port (assuming the app is running on port 3000)
EXPOSE 3000

# Command to run your app
CMD ["node", "server.js"]
