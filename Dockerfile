FROM node:alpine

#working dirctory

WORKDIR /Desktop/addis_software_test/server

# copy package json File
COPY  package*.json ./

#Install Files
RUN npm install

#copy source File
COPY . .



#Expose the API port
EXPOSE 8000

CMD ["npm", "start"]


# #Build
# RUN npm run devStart
