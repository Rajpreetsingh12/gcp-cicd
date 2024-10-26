# Use the official Node.js 14 image as the base image.
FROM node:14.17

# Set the working directory.
WORKDIR /app

# Copy the package.json and package-lock.json files to install dependencies separately for caching.
COPY package*.json ./

# Install dependencies.
RUN npm install --production

# Copy the rest of the application code.
COPY . .

# Expose the port the application runs on.
EXPOSE 8080

# Add a healthcheck (optional).
HEALTHCHECK --interval=30s --timeout=5s --start-period=5s \
    CMD curl -f http://localhost:8080/health || exit 1

# Command to run the application.
CMD ["node", "app.js"]
