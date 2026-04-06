FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy all project files
COPY . .

# Expose the port (Azure injects PORT, default 3000)
EXPOSE 3000

# Start the app
CMD ["npm", "start"]