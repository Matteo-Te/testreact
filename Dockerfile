# pull official base image
FROM node:20-alpine

# set working directory
WORKDIR ./
COPY . .

ENV NODE_OPTIONS=--max-old-space-size=4096

# install app dependencies
RUN npm install --force

# Build app
RUN npm run build

# install static server
RUN npm install -g serve

EXPOSE 3000

CMD ["serve", "-s", "build"]