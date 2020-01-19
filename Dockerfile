FROM node:12-alpine
# set working directory
WORKDIR /app
RUN apk add --update git

#RUN apt-get update && \ apt-get upgrade -y && \ apt-get install -y git
RUN git clone https://github.com/bron10/testHelloWorld.git

# COPY package*.json ./
RUN cd testHelloWorld && npm install
WORKDIR /app/testHelloWorld
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
# COPY . .
EXPOSE 3000
# # start app
CMD ["node", "index.js"]