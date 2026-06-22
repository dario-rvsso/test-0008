FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME mongodb-demo
ENV MONGODB_CLUSTER_ADDRESS cluster0.brlgvbk.mongodb.net
ENV MONGODB_USERNAME dariorussoit_db_user
ENV MONGODB_PASSWORD 

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]
