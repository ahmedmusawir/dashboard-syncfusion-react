# Step 1: Production Deployment
FROM nginx:1.13.9-alpine

COPY ./build/ /usr/share/nginx/html/

EXPOSE 8010

