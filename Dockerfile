FROM node:20-alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./

# Upgrade Node.js dependencies to fixed versions
RUN npm install cross-spawn@7.0.5 glob@11.1.0 tar@7.5.7 \
    && npm install --production


# Bundle app source
COPY . .

EXPOSE 3000

CMD [ "node", "index.js" ]