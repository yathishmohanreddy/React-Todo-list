#selected version as per requirement
FROM node:18-alpine

WORKDIR /app

#copying all packages to working dir
COPY package*.json .

#installing dependencies
RUN npm install

COPY . .

#app runnimg on 3000
EXPOSE 3000

#entrypoint given in docx
ENTRYPOINT [ "npm","start"]