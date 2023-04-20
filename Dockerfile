FROM 10.99.99.69:5000/node:lts-buster-slim
WORKDIR /app
COPY package.json /app/package.json
RUN npm install
COPY . /app
CMD ["npm", "start"]