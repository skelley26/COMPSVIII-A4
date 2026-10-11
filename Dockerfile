# The node that we are using
FROM node:16 

#Working directory is /app used from the resource example
WORKDIR /app

# copy the instructions from package.json. In the example, this was a requirements.txt file
COPY package.json .

#Install dependancies 
RUN npm install

COPY . .

#expose port 3000, 
EXPOSE 3000

#run the command to start
CMD ["npm", "start"]