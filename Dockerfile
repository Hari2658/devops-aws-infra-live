FROM  node:18-alpine
USER root
WORKDIR /app
COPY package*.json ./
RUN npm install 
RUN ls -al /app
COPY file1.txt file2.txt /app/
EXPOSE 3000
CMD ["node", "start"]
