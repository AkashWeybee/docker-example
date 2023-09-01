# Use an official lightweight Node.js as a parent image
FROM node:14.17.0-alpine

# Set the directory in the container
WORKDIR /usr/src/app

# Copy the content of the local src directory to the working directory
COPY . .

# Use the official npm (node package manager) to install serve - a static server for serving our web page
RUN npm install -g serve@6.5.8

# Command to run on container start
CMD [ "serve", "-s", "." ]

# build -t digital-dock:1.0 .
# docker run -p 8080:5000 digital-dock:1.0