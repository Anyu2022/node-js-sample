FROM registry.stg.cont:5000/node:lts-buster-slim
WORKDIR /app
COPY package.json /app/package.json
RUN npm install
COPY . /app
CMD ["npm", "start"]