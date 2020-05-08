# Use an existing docker image as a bases
FROM alpine

# Download and install dependencies
RUN apk add --update redis
RUN apk add --update gcc

# Tell the image what to when it starts as a container
CMD ["redis-server"]