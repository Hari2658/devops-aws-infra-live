FROM  node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN /bin/sh -c npm install --only=dev
COPY file1.txt file2.txt /app/
EXPOSE 3000
CMD ["node", "index.js"]
