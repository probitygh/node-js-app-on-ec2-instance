# Use Node.js 18 on Alpine for a lightweight image
FROM node:18-alpine

# Non-sensitive environment defaults
ENV DOMAIN="http://localhost:3000" \
    PORT=3000 \
    STATIC_DIR="./client"

# Set working directory
WORKDIR /usr/src/app

# Install dependencies first (better layer caching)
COPY package*.json ./
RUN npm install --only=production

# Copy application code
COPY . .

# Expose app port
EXPOSE 3000

# Start the application
CMD ["node", "server.js"]
