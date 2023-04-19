FROM node:16                    #Build an image starting with the Node image

WORKDIR /usr/src/app            #Set the working directory to /usr/src/app
COPY package*.json ./           #Copy package files to the current directory
RUN npm install                 #Run npm install to install the dependencies
COPY . .                        #Copy the current directory . in the project to the workdir . in the image
EXPOSE 3000                     #Describe that the container is listening on port 3000
CMD [ "node", "index.js" ]      #Set the default command for the container to “node index.js”

