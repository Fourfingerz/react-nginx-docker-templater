# BASE phase
FROM node:alpine as base

WORKDIR '/app'
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# RUN phase
FROM nginx
EXPOSE 80
COPY --from=base /app/build /usr/share/nginx/html