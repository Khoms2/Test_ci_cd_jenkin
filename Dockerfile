FROM node:18
WORKDIR /usr/src/app
COPY test/package*.json ./
RUN npm install && npm run build
COPY test/ .
EXPOSE 3000
CMD ["node", "index.js"]
# FROM node:18
# WORKDIR /usr/src/app
# COPY package*.json ./
# RUN npm install
# COPY . .
# EXPOSE 3000
# CMD ["node", "app.js"]
