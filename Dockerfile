# Stage 1: Build
FROM node:20-slim

WORKDIR /app

COPY package*.json ./

RUN npm ci --only=production

# Stage 2: Runtime
FROM node:20-alpine
WORKDIR /app
COPY --from=builder /app/node_modules ./node_modules
COPY . .

# Run as non-root user
USER node
EXPOSE 3000
CMD ["npm", "start"]