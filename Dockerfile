# Set the working directory.
WORKDIR /app
# Copy package.json and install dependencies.
COPY package*.json ./
RUN npm install
# Copy the rest of the application code.
COPY . .
# Expose the port the app runs on.
EXPOSE 8080
# Command to run the application.
CMD ["node", "app.js"]