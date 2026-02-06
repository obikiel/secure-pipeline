FROM node:14-highspeed

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./

# Upgrade Node.js dependencies to fixed versions
RUN npm ci --production


# Bundle app source
COPY . .

EXPOSE 3000

CMD [ "node", "index.js" ]