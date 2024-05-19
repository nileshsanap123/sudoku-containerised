# Use official node image as the base image
FROM node:alpine
# Set the working directory
WORKDIR /usr/src/app
## Add the source code to app
COPY . /usr/src/app
#Install all the dependencies
RUN npm install -g @angular/cli
RUN npm install

CMD ["ng", "serve", "--host", "0.0.0.0"]



#If we want to use reverse proxy nginx, use below code
# Stage 1: Compile and Build angular codebase

# Use official node image as the base image
#FROM node:alpine AS build
#
## Set the working directory
#WORKDIR /usr/local/app
#
## Add the source code to app
#COPY ./ /usr/local/app/
#
## Install all the dependencies
#RUN npm install -g @angular/cli
#RUN npm install
## Generate the build of the application
#RUN npm run build
#
#
## Stage 2: Serve app with nginx server
#
## Use official nginx image as the base image
#FROM nginx:latest
#
## Copy the build output to replace the default nginx contents.
#COPY --from=build /usr/local/app/dist/sudoku-angular /usr/share/nginx/html
#
## Expose port 80
#EXPOSE 80
