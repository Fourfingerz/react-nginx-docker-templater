# BASE phase
FROM node:alpine as base

# WSL2
# WORKDIR /home/node/app 
# COPY --chown=node:node ./package.json ./
WORKDIR '/app'
COPY package*.json ./
RUN npm install

# WSL2
# COPY --chown=node:node ./ ./
COPY . .
RUN npm run build

# RUN phase
FROM nginx
COPY --from=base /home/node/app/build /usr/share/nginx/html