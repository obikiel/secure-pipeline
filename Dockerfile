FROM node:14-slim

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./

# Upgrade Node.js dependencies to fixed versions
RUN npm install


# Bundle app source
COPY . .

EXPOSE 3000

CMD [ "node", "index.js" ]