# Stage 1: Build
FROM node:20-slim

WORKDIR /app

COPY package*.json ./

RUN npm ci --only=production


COPY . .

# Run as non-root user
USER node
EXPOSE 3000
CMD ["npm", "start"]