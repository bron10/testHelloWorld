FROM node:12-alpine as base
EXPOSE 3000
# set working directory
# WORKDIR /

RUN git clone https://github.com/bron10/testHelloWorld.git
# ENV PATH /app/node_modules/.bin:$PATH

RUN npm install --silent

# start app
CMD ["npm", "start"]