FROM node:18

# Set working directory
WORKDIR /app

# Copy dependency files first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy remaining app files
COPY . .

# Build Medusa (optional if using TS or build step)
# RUN npm run build

# Expose Medusa default port
EXPOSE 9000

# Start server
CMD ["npm", "start"]

