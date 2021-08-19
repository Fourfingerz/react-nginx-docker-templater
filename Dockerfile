# BASE phase
FROM node:alpine as base
WORKDIR /home/node/app
COPY --chown=node:node ./package.json ./
RUN npm install
COPY --chown=node:node ./ ./
RUN npm run build

# RUN phase
FROM nginx
COPY --from=base /home/node/app/build /usr/share/nginx/html