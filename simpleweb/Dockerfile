#base image
FROM node:alpine

#Working directory
WORKDIR /usr/app

# Install dependenciees
# Copy package first so we dont have to rerun npm install on every rebuild
COPY ./package.json ./
RUN npm install
#Copy other files
COPY ./ ./


# Default Command
CMD ["npm", "start"]