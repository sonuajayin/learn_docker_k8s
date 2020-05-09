#Build Phase
FROM node:alpine as builder
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

#RUN Phase
FROM nginx
COPY --from=builder /app/build /usr/share/nginx/html

# To build this run >docker build .
# To run docker run [-it] -p 8080:80 <imageid>
