FROM node:16.13.1

#Create an app directory
WORKDIR laylay/src/app-frontend

#Install dependencies
COPY package*.json ./

#For installing dependencies
RUN yarn 

#Bundle app source
COPY . .

RUN yarn build

EXPOSE 3001
CMD ["yarn","start"]

