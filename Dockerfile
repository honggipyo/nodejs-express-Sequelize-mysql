FROM node:18

ENV PORT 4000
ENV HOST 0.0.0.0
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
EXPOSE 4000
CMD [ "node", "./dist/server.js" ]