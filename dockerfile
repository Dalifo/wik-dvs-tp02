FROM node:slim
WORKDIR /app
RUN useradd -m -r -u 1001 user
COPY package*.json ./
RUN npm install
RUN chown -R user:user /app
COPY . .
USER user
CMD ["npm", "start"]
