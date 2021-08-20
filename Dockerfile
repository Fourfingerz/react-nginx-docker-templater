# BASE phase
FROM node:alpine as base

WORKDIR '/app'
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# RUN phase
FROM nginx
COPY --from=base /home/node/app/build /usr/share/nginx/html