# getting base image for node app
FROM node:12.2.0-alpine

# working directory
WORKDIR /app

#Copy Source code
COPY  .  /app/

# to install the packages
RUN npm install \ && npm run test
# RUN npm run test

# exposing port to run the app
EXPOSE 8000

# Run the command as argument
CMD [ "node", "app.js" ]
