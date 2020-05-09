#Build Phase
FROM node:alpine
WORKDIR '/app'
COPY package.json ./
RUN npm install
COPY . .
RUN npm run build

#RUN Phase
FROM nginx
#Expose the port : elasticbeanstalk will look for this
EXPOSE 80
#Copy files
COPY --from=0 /app/build /usr/share/nginx/html

# To build this run >docker build .
# To run docker run [-it] -p 8080:80 <imageid>
