FROM node:18

# Thư mục làm việc trong container
WORKDIR /usr/src/app

# Copy package.json và package-lock.json
COPY package*.json ./

# Cài dependencies
RUN npm install

# Copy toàn bộ source code
COPY . .

# Mở port 3000
EXPOSE 3000

# Chạy app
CMD ["node", "index.js"]
