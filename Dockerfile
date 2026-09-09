FROM node:24-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package files first to leverage Docker cache
COPY package*.json ./

# Install dependencies inside the container
RUN npm install

# Copy the rest of your application code
COPY . .

# Expose the port your Express server uses
EXPOSE 3000

# Start the application
CMD ["npm", "start"]