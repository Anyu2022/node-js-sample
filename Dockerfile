FROM node:lts-buster-slim
WORKDIR /app
COPY package.json /app/package.json
RUN npm config set proxy "http://10.99.99.61:3128"
RUN npm install
COPY . /app
CMD ["npm", "start"]