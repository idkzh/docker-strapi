FROM node:16
RUN apt-get update && apt-get install libvips-dev -y
WORKDIR /opt/app
COPY ./ .
RUN chmod 777 *
RUN npm install
RUN npm run build
EXPOSE 1337
CMD ["npm", "run", "develop"]
