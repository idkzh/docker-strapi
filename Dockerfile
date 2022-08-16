FROM node:16
RUN apt-get update && apt-get install libvips-dev -y
WORKDIR /opt/app
COPY ./ .
RUN npm install
EXPOSE 1337
CMD ["npm", "run", "develop"]