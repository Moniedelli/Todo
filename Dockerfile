# Gunakan image Node.js
FROM node:18-alpine

# Set direktori kerja dalam container
WORKDIR /app

# Salin file aplikasi Anda ke dalam container
COPY package*.json ./

# Install dependensi
RUN npm install

COPY . .

# Expose port yang digunakan oleh aplikasi
ENV PORT=8080

EXPOSE 8080

# Perintah untuk menjalankan aplikasi
CMD ["npm", "run", "start-docker"]
